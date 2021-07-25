class OndeAceita
  include Capybara::DSL
  include RSpec::Matchers

  #Acessando o site que está configurado no env.rb
  def visitarSite
    visit ""
  end

  #Clicando na aba 'Pra Você'
  def clicarAbaPraVoce
    find(EL["abaPraVoce"]).click
  end

  #Clicando no botão 'Onde usar meu cartão vr' e colocando uma nova tentativa,
  # caso não seja possível clicar no botão na primeira vez
  def clicarOndeUsar
    retries ||= 0
    find(EL["btnOndeAceita"]).click
  rescue StandardError => e
    retry if (retries += 1) < 2
  end

  #Verifica se o seletor do mapa está visível, e coloquei um click há mais no endereço só por garantia
  def checaMapa
    expect(page).to have_selector(EL["mapa"], visible: true)
    find("#endereco").click
    page.save_screenshot()
  end
end
