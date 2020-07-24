require 'rails_helper'

describe AlphaVantageService do
  it 'gets JSON data' do
    service = AlphaVantageService.new
    stock_data = service.get_stock_data("BA")

    expect(service).to be_an_instance_of(AlphaVantageService)
    expect(stock_data[:bestMatches]).to be_a(Array)
  end

  it 'gets overview on a particular data' do
    service = AlphaVantageService.new
    company_overview = service.get_company_overview("IBM")

    expect(company_overview).to have_key(:Symbol)
    expect(company_overview).to have_key(:AssetType)
    expect(company_overview).to have_key(:Name)
    expect(company_overview).to have_key(:Description)
  end
end
