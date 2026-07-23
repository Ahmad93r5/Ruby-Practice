class ApiController < ApplicationController
    def hello
     render json: {message: "Good Evening Ahmad"}    
    end    
end
