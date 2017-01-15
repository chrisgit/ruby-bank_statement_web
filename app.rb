require 'sinatra/base'
require 'bankstatements'
require_relative 'routes/init'

class BankStatementsApp < Sinatra::Base
  enable :method_override
  enable :sessions
  set :session_secret, 'super secret'

  configure do
    set :app_file, __FILE__
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :qa do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :production do
    set :raise_errors, false #false will show nicer error page
    set :show_exceptions, false #true will ignore raise_errors and display backtrace in browser
  end

  set :bank_data, BankStatements::CSVBankData.new(Dir['./data/*.csv'].map(&File.method(:realpath)))
  set :transaction_service, BankStatements::TransactionService.new(settings.bank_data)
  set :summary_service, BankStatements::SummaryService.new(settings.bank_data)

end
