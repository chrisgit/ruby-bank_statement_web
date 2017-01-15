class BankStatementsApp < Sinatra::Base

# Send back transactions and summary as a single JSON object
  get '/transactions' do
    statement_service = Statements::TransactionService.new
    t = statement_service.transactions()
    t.to_json
  end

  get '/summary_total' do
    summary_service = Statements::SummaryService.new
    t = summary_service.grand_total()
    t.to_json
  end

  get '/summary_by_year' do
    summary_service = Statements::SummaryService.new
    t = summary_service.grand_total_by_year()
    t.to_json
  end

end
