@extends('layout.app')

@section('content')

<main class="[grid-area:main]">
    <button id="show-colors" class="show-colors">
        <div class="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye-icon lucide-eye"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/><circle cx="12" cy="12" r="3"/></svg>
            <span>Exibir Cores</span>
        </div>
        <div class="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye-off-icon lucide-eye-off"><path d="M10.733 5.076a10.744 10.744 0 0 1 11.205 6.575 1 1 0 0 1 0 .696 10.747 10.747 0 0 1-1.444 2.49"/><path d="M14.084 14.158a3 3 0 0 1-4.242-4.242"/><path d="M17.479 17.499a10.75 10.75 0 0 1-15.417-5.151 1 1 0 0 1 0-.696 10.75 10.75 0 0 1 4.446-5.143"/><path d="m2 2 20 20"/></svg>
            <span>Ocultar Cores</span>
        </div>
    </button>
    <ul id="colors-demo" class="colors-demo">
        <li class="bg-primary">Fundo Primário</li>
        <li class="bg-primary-hover">Fundo Primário Sobre</li>
        <li class="bg-secondary">Fundo Secundário</li>
        <li class="bg-secondary-hover">Fundo Secundário Sobre</li>
        <li class="bg-tertiary">Fundo Terciário</li>
        <li class="bg-tertiary-hover">Fundo Terciário Sobre</li>
        <li class="light-border">Borda Clara</li>
        <li class="light-border-hover">Borda Clara Sobre</li>
        <li class="dark-border">Borda Escura</li>
        <li class="dark-border-hover">Borda Escura Sobre</li>
        <li class="highlight">Destaque</li>
        <li class="highlight-hover">Destaque Sobre</li>
        <li class="text-white">Texto Branco</li>
        <li class="text-white-disabled">Texto Branco Desabilitado</li>
        <li class="text-black">Texto Preto</li>
        <li class="text-black-disabled">Texto Preto Desabilitado</li>
    </ul>
    <button id="show-elements" class="show-elements">
        <div class="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye-icon lucide-eye"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/><circle cx="12" cy="12" r="3"/></svg>
            <span>Exibir Elementos</span>
        </div>
        <div class="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye-off-icon lucide-eye-off"><path d="M10.733 5.076a10.744 10.744 0 0 1 11.205 6.575 1 1 0 0 1 0 .696 10.747 10.747 0 0 1-1.444 2.49"/><path d="M14.084 14.158a3 3 0 0 1-4.242-4.242"/><path d="M17.479 17.499a10.75 10.75 0 0 1-15.417-5.151 1 1 0 0 1 0-.696 10.75 10.75 0 0 1 4.446-5.143"/><path d="m2 2 20 20"/></svg>
            <span>Ocultar Elementos</span>
        </div>
    </button>
    <section id="elements-demo" class="elements-demo">
        <button class="default-button buttons">Botão Padrão</button>
        <button class="highlight-button buttons">Botão Destaque</button>
        <button class="simple-button buttons">Botão Simples</button>
        <button class="disabled-button buttons">Botão Desabilitado</button>
        <input type="text" class="buttons"/>
    </section>
</main>

@endsection