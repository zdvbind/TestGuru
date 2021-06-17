class GitHubClient
  ACCESS_TOKEN = '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'.freeze
  attr_reader :http_client

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
    @http_client.create_gist(params)
  end

  private

  def setup_http_client
    Octokit::Client.new(access_token: ACCESS_TOKEN)
  end
end
