#language: pt

Funcionalidade: Compra
    Para que eu possa realizar compras
    Sendo um usuario cadastrado
    Posso acessar a pagina buscar um produto e efetuar a compra


    Cenario: Finalizar compra3

            Dado que estou na pagina da loja
            E busco pelo produto "<produto>"
            E adiciono este produto ao carrinho
            Quando  procedo para a pagina de checkout
            E na pagina de checkout procedo o checkout
            E faço login com "<email>" e "<senha>"
            E na pagina de endereço procedo o checkout
            E na pagina de escolher meio de envio marco a caixa de ler os termos e procedo o checkout
            E na pagina de pagamento seleciono o metodo de pagamento
            E confirmo o pagamento
            Então devo ver a mensagem "Your order on My Store is complete."
