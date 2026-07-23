class BooksController < ApplicationController
    def index
        bookInfo = [
            {id:1, title:"Titanic", author:"Boby", price:1500},
            {id:2, title:"Khitaab", author:"Mirza", price:500},
            {id:3, title:"SunStory", author:"Faraz", price:784},
            {id:4, title:"Business", author:"Bezoz", price:456}
        ]
        render json: bookInfo
    end    

           def show
    
                 bookInfo = [
            {id:1, title:"Titanic", author:"Boby", price:1500},
            {id:2, title:"Khitaab", author:"Mirza", price:500},
            {id:3, title:"SunStory", author:"Faraz", price:784},
            {id:4, title:"Business", author:"Bezoz", price:456}
        ]

        book = bookInfo.find{|b| b[:id] == params[:id].to_i}
        render json: book
                
        end

       
           

end
