class GetInformations
  include RSpec::Matchers
  include Capybara::DSL
  include HTTParty

  def endpoint
    $base_uri = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
  end

  def getRequisition
    @headers = { "Content-Type" => "application/json" }
    @result = HTTParty.get($base_uri, :verify => false)
    expect(@result.code).to eq(200)
  end

  def findKey(chave)
    expect(@result.parsed_response[chave])
    @assert = @result.parsed_response[chave]
  end

  def printEstablishments
    puts(@assert[rand])
  end
end
