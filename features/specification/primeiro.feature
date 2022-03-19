    #language: pt

    @primeiro
    Funcionalidade: Primeiro Cenario
        validar operações dos primeiros cenario

    @primeiro
    Cenário: Validar GET API primeiro
        Quando faço uma requisição GET para o serviço primeiro
        Então o serviço primeiro deve responder com 200
        E retorna a listagem