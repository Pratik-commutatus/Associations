class HttprequestsController < ApplicationController
    def index
        @people=getdata
        @results=@people["results"]
        
    end

    private
    def getdata
        require "net/http"

url = "https://swapi.co/api/people/"
resp = Net::HTTP.get_response(URI.parse(url))
data = JSON.parse(resp.body)
    end

end
