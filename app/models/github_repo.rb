class GithubRepo

  attr_reader :name, :url

  def initialize(hash)
    raise hash.inspect
    @name = hash["name"]
    @url = hash["html_url"]
  end

end
