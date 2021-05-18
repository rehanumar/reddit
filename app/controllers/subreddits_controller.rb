require 'httparty'

class SubredditsController < ActionController::API
    def show
        response = HTTParty.get("https://www.reddit.com:443/r/#{params[:topic]}.json", {limit: 1})
        render json: response
    end
end
