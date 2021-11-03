@extends('layouts.backend')
@section('content')
<section>
        <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="title m-b-md">
                    <h3>VOCÊ NÃO TEM PERMISSÃO PARA ACESSAR ESSA PÁGINA.</h3>
                </div>
            </div>
        </div>
</section>

<style>
.flex-center {
    align-items: center;
    display: flex;
    justify-content: center;
}

.content {
    color: '#f0f0f0';
    font-family: 'Nunito', sans-serif;
    font-weight: 200;
    text-align: center;
}
</style>

@endsection
