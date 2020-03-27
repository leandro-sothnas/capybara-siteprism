#language:pt

Funcionalidade: Compra
    Para que eu possa realizar compras
    Sendo um cliente
    Posso acessar a pagina e buscar um produto

    Contexto: Pagina de principal
        Dado que estou na pagina da loja


    Cenario: Buscar produto com resultados

            Quando busco por um produto
            Então devo ver o produto na lista


    Cenario: Buscar produto inexistente

            Quando busco um produto inexistente
            Então recebo a mensagem de erro junto ao nome do produto


    Cenario: Campo de busca em branco

            Quando busco sem preencher campo de busca
            Então recebo a mensagem "Please enter a search keyword"
