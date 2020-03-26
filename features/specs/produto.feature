#language: pt

Funcionalidade: Produto
    Para que eu possa realizar compras
    Sendo um usuario
    Posso acessar a pagina do produto e aumentar quantidade, mudar cor, etc

    
    Contexto: Pagina do produto
        Dado que eu acesso a pagina do produto


    Esquema do Cenario: Mudar quantidade do produto com sucesso
        Quando mudo a quantidade do produto para "<quantidade>"
        Então ao adicionar no carrinho vejo a "<quantidade>"

        Exemplos:
            | quantidade |
            # | 01         |
            | 1          |
            | 1234567890 |
            | 4294967295 |


    Esquema do Cenario: Mudar quantidade do produto com erro
        Quando mudo a quantidade do produto para "<quantidade>"
        Então ao adicionar no carrinho vejo o erro "<mensagem>"

        Exemplos:
            | quantidade | mensagem       |
            | 0          | Null quantity. |
            | abc        | Null quantity. |
            | 0,9        | Null quantity. |


    Esquema do Cenario: Selecionar o tamanho do produto
        Quando mudo o tamanho do produto para "<tamanho>"
        Então ao adicionar no carrinho vejo esta "<especificacao>"

        Exemplos:
            | tamanho | especificacao |
            | S       | Yellow, S     |
            | M       | Yellow, M     |
            | L       | Yellow, L     |


    Esquema do Cenario: Selecionar a cor do produto
        Quando mudo a cor do produto para "<cor>"
        Então ao adicionar no carrinho vejo esta "<especificacao>"

        Exemplos:
            | cor    | especificacao |
            | Yellow | Yellow, S     |
            | Blue   | Blue, S       |
            | Black  | Black, S      |
            | Orange | Orange, S     |


    Esquema do Cenario: Selecionar o tamanho e cor do produto
        Quando mudo o "<tamanho>" e "<cor>"
        Então ao adicionar no carrinho vejo esta "<especificacao>"

        Exemplos:
            | tamanho | cor    | especificacao |
            | S       | Yellow | Yellow, S     |
            | M       | Yellow | Yellow, M     |
            | L       | Yellow | Yellow, L     |
            | S       | Blue   | Blue, S       |
            | S       | Black  | Black, S      |
            | S       | Orange | Orange, S     |

@smoke
    Esquema do Cenario: Selecionar a quantidade o tamanho e cor do produto
        Quando mudo a "<quantidade>" o "<tamanho>" e a "<cor>"
        Então ao adicionar no carrinho vejo a "<quantidade>" e a "<especificacao>"

        Exemplos:
            | quantidade | tamanho | cor    | especificacao |
            # | 01         | S       | Blue   | Blue, S       |
            | 1          | S       | Yellow | Yellow, S     |
            | 1234567890 | S       | Yellow | Yellow, S     |
            | 4294967295 | S       | Yellow | Yellow, S     |
            | 1          | M       | Yellow | Yellow, M     |
            | 1          | L       | Yellow | Yellow, L     |
            | 1          | S       | Blue   | Blue, S       |
            | 1          | S       | Black  | Black, S      |
            | 1          | S       | Orange | Orange, S     |
