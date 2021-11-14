<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;
use App\Models\Validador;
use DateTime;
use Carbon\Carbon;

class TesteURL extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'testeURL:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Faz as verificações das URLs a cada minuto';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $validador = Validador::get();
        
		foreach($validador as $key){
		
			$url = $key['url'];
		
			$agent = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; pt-pt) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27";
		    
            //INICIALIZANDO
			$ch = curl_init();
		
			// SETANDO AS OPCOES
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_USERAGENT, $agent);
			curl_setopt($ch, CURLOPT_NOBODY, true);
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_VERBOSE, false);
			curl_setopt($ch, CURLOPT_TIMEOUT, 5);
		
			//EXECUANDO
			curl_exec($ch);
			$httpcode = curl_getinfo($ch);
		
			curl_close($ch);

			$data = [
				'status_code' => $httpcode['http_code'],
				'resposta' => $httpcode['content_type'],
				'url_verified_at' => Carbon::now(),
			];
			
			Validador::where('id', $key['id'])->update($data);
        }
    }
}
