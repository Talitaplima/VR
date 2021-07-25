#language:pt

@getEstablishment
Funcionalidade: Pegar informações sobre produtos e estabelecimentos
Como um usuario do sistema
GOstaria de fazer uma requisição na API
Para poder obter informacoes de produtos e estabelecimentos

Cenário: Verificar exitência de chave em requisição
Dado que o endpoint seja inserido corretamente
Quando uma requisicao para obter informacoes for realizada
Então a API devera encontrar a chave "typeOfEstablishment"
E tirar um print aleatorio dos estabelecimentos