class RepositoriesController < ApplicationController
  def index
    github = GithubService.new(session[:token])
    raise github.access_token.inspect
    @repos_array = github.get_repos
  end

  def create
    github.GithubService.new(session[:token])
    github.create_repo(params[:name])
    redirect_to '/'
  end
end
