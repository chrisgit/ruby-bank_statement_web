class BankStatementsApp < Sinatra::Base

    get '/?' do
      redirect '/index.html'
    end
  
    ## -----
    ## Errors
    ## -----
    error do
      "I'm sorry an error occured during the process of your request. #{env['sinatra.error']}"
    end

    # 404 Error!
    not_found do
      status 404
      erb :oops
    end

end
