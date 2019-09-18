#language: pt

Funcionalidade: Fazer pedido de pizza

  @get_login  
  Cenário: Pedir pizza
    Dado que faca uma requisicao http "get" para "httpbin.org/bearer"
    Então o status deve ser 200
    E deve retornar a autenticacao como verdadeira
