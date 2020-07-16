class AlphaVantageService
  def get_stock_data(stock)
    get_json("query?function=SYMBOL_SEARCH&keywords=#{stock}&apikey=#{ENV["ALPHA_VANTAGE_API_KEY"]}")
  end


  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "https://www.alphavantage.co/") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
