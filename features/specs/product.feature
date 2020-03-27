#language: pt

Funcionalidade: Produto
    Para que eu possa realizar compras
    Sendo um usuario
    Posso acessar a pagina do produto e aumentar quantidade, mudar cor, etc

    
    Contexto: Pagina do produto
        Dado que eu acesso a pagina do produto


    Esquema do Cenario: Mudar quantidade do produto com sucesso
        Quando mudo a quantidade do produto para "<quantity>"
        Então ao adicionar no carrinho vejo a "<quantity>"

        Exemplos:
            | quantity   |
            # | 01         |
            | 1          |
            | 1234567890 |
            | 4294967295 |


    Esquema do Cenario: Mudar quantidade do produto com erro
        Quando mudo a quantidade do produto para "<quantity>"
        Então ao adicionar no carrinho vejo o erro "<message>"

        Exemplos:
            | quantity | message        |
            | 0        | Null quantity. |
            | abc      | Null quantity. |
            | 0,9      | Null quantity. |


    Esquema do Cenario: Selecionar o tamanho do produto
        Quando mudo o tamanho do produto para "<product_size>"
        Então ao adicionar no carrinho vejo esta "<specification>"

        Exemplos:
            | product_size | specification |
            | S            | Yellow, S     |
            | M            | Yellow, M     |
            | L            | Yellow, L     |


    Esquema do Cenario: Selecionar a cor do produto
        Quando mudo a cor do produto para "<color>"
        Então ao adicionar no carrinho vejo esta "<specification>"

        Exemplos:
            | color  | specification |
            | Yellow | Yellow, S     |
            | Blue   | Blue, S       |
            | Black  | Black, S      |
            | Orange | Orange, S     |


    Esquema do Cenario: Selecionar o tamanho e cor do produto
        Quando mudo o "<quantity>" e "<color>"
        Então ao adicionar no carrinho vejo esta "<specification>"

        Exemplos:
            | quantity | color  | specification |
            | S        | Yellow | Yellow, S     |
            | M        | Yellow | Yellow, M     |
            | L        | Yellow | Yellow, L     |
            | S        | Blue   | Blue, S       |
            | S        | Black  | Black, S      |
            | S        | Orange | Orange, S     |


    Esquema do Cenario: Selecionar a quantidade o tamanho e cor do produto
        Quando mudo a "<quantity>" o "<product_size>" e a "<color>"
        Então ao adicionar no carrinho vejo a "<quantity>" e a "<specification>"

        Exemplos:
            | quantity   | product_size | color  | specification |
            # | 01         | S       | Blue   | Blue, S       |
            | 1          | S            | Yellow | Yellow, S     |
            | 1234567890 | S            | Yellow | Yellow, S     |
            | 4294967295 | S            | Yellow | Yellow, S     |
            | 1          | M            | Yellow | Yellow, M     |
            | 1          | L            | Yellow | Yellow, L     |
            | 1          | S            | Blue   | Blue, S       |
            | 1          | S            | Black  | Black, S      |
            | 1          | S            | Orange | Orange, S     |
