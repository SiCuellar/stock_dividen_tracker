class AlphaVantageService
  


  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "https://api.songkick.com/api/3.0/") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
