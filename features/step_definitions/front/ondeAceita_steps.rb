Dado("que o usuario acesse o site da VR") do
  @ondeAceitaPage.visitarSite
end

Quando("o usuário clicar na aba Pra voce") do
  @ondeAceitaPage.clicarAbaPraVoce
end

Quando("escolher a opção {string}") do |string|
  @ondeAceitaPage.clicarOndeUsar
end

Entao("deverá ser apresentado uma mapa com as localidades") do
  @ondeAceitaPage.checaMapa
end
