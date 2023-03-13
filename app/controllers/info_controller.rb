class InfoController < ApplicationController
  def index
    @browser = Browser.new(request.env["HTTP_USER_AGENT"])
  end
end
