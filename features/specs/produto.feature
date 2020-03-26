#language: pt

Funcionalidade: Produto
    Para que eu possa realizar compras
    Sendo um usuario
    Posso acessar a pagina do produto e aumentar quantidade, mudar cor, etc

    
    Contexto: Pagina do produto
        Dado que eu acesso a pagina do produto


    Esquema do Cenario: Mudar quantidade do produto com sucesso
        Quando mudo a quantidade do produto para "<quantidade>"
        Então ao adicionar no carrinho vejo a "<mensagem>" e a "<quantidade>"

        Exemplos:
            | quantidade | mensagem                                         |
            | 1          | Product successfully added to your shopping cart |
            # | 01          | Product successfully added to your shopping cart |
            | 1234567890 | Product successfully added to your shopping cart |
            | 4294967295 | Product successfully added to your shopping cart |


    Esquema do Cenario: Mudar quantidade do produto com erro
        Quando mudo a quantidade do produto para "<quantidade>"
        Então ao adicionar no carrinho vejo erro "<mensagem>"

        Exemplos:
            | quantidade | mensagem       |
            | 0          | Null quantity. |
            | abc        | Null quantity. |
            | 0,9        | Null quantity. |

@smoke
    Esquema do Cenario: Selecionar o tamanho do produto
        Quando mudo o tamanho do produto para "<tamanho>"
        Então ao adicionar no carrinho vejo a "<mensagem>" e o "<especificacao>"

        Exemplos:
            | tamanho | mensagem                                         | especificacao |
            | S       | Product successfully added to your shopping cart | Yellow, S     |
            | M       | Product successfully added to your shopping cart | Yellow, M     |
            | L       | Product successfully added to your shopping cart | Yellow, L     |


    Esquema do Cenario: Selecionar a cor do produto
        Quando mudo a cor do produto para "<cor>"
        Então ao adicionar no carrinho vejo a "<mensagem>" e a "<especificacao>"

        Exemplos:
            | cor    | mensagem                                         | especificacao |
            | Yellow | Product successfully added to your shopping cart | Yellow, S     |
            | Blue   | Product successfully added to your shopping cart | Blue, S       |
            | Black  | Product successfully added to your shopping cart | Black, S      |
            | Orange | Product successfully added to your shopping cart | Orange, S     |


    Esquema do Cenario: Selecionar o tamanho e cor do produto
        Quando mudo o "<tamanho>" e "<cor>"
        Então ao adicionar no carrinho vejo a "<mensagem>" e a "<especificacao>"

        Exemplos:
            | tamanho | cor    | mensagem                                         | especificacao |
            | S       | Yellow | Product successfully added to your shopping cart | Yellow, S     |
            | M       | Yellow | Product successfully added to your shopping cart | Yellow, M     |
            | L       | Yellow | Product successfully added to your shopping cart | Yellow, L     |
            | S       | Blue   | Product successfully added to your shopping cart | Blue, S       |
            | S       | Black  | Product successfully added to your shopping cart | Black, S      |
            | S       | Orange | Product successfully added to your shopping cart | Orange, S     |


    Esquema do Cenario: Selecionar o tamanho e cor do produto
        Quando mudo o "<tamanho>" e a "<cor>"
        Então ao adicionar no carrinho vejo a "<mensagem>" a "<quantidade>" e a "<especificacao>"

        Exemplos:
            | quantidade | tamanho | cor    | mensagem                                         | especificacao |
            # |01 | S       | Blue   | Product successfully added to your shopping cart | Blue, S       |
            | 1          | S       | Yellow | Product successfully added to your shopping cart | Yellow, S     |
            | 1234567890 | S       | Yellow | Product successfully added to your shopping cart | Yellow, S     |
            | 4294967295 | S       | Yellow | Product successfully added to your shopping cart | Yellow, S     |
            | 1          | M       | Yellow | Product successfully added to your shopping cart | Yellow, M     |
            | 1          | L       | Yellow | Product successfully added to your shopping cart | Yellow, L     |
            | 1          | S       | Blue   | Product successfully added to your shopping cart | Blue, L       |
            | 1          | S       | Black  | Product successfully added to your shopping cart | Black, S      |
            | 1          | S       | Orange | Product successfully added to your shopping cart | Orange, S     |