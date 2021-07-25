Dado("que o endpoint seja inserido corretamente") do
  @getInformations.endpoint
end

Quando("uma requisicao para obter informacoes for realizada") do
  @getInformations.getRequisition
end

Então("a API devera encontrar a chave {string}") do |chave|
  @getInformations.findKey(chave)
end

Então("tirar um print aleatorio dos estabelecimentos") do
  @getInformations.printEstablishments
end
