require 'rails_helper'

describe AlphaVantageService do
  it 'gets JSON data' do
    service = AlphaVantageService.new
    stock_data = service.get_stock_data("BA")

    expect(service).to be_an_instnace_of(AlphaVantageService)
  end
end
