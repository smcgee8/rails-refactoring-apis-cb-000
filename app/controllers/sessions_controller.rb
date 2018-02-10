class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    github = GithubService.new
    github.authenticate!(ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_SECRET'], params[:code])
    session[:token] = github.access_token
    raise session[:token].inspect

    session[:username] = github.get_username

    redirect_to '/'
  end
end
