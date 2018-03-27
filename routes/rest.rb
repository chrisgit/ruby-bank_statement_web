#
# Main paths for the bank web app
class BankStatementsApp < Sinatra::Base
# Send back transactions and summary as a single JSON object
  get '/transactions' do
    transactions = settings.bank_data.query(nil, nil, nil, nil)
    transactions.to_json
  end

  get '/summary_total' do
    balance = settings.summary_service.balance_grand_total
    balance.to_json
  end

  get '/summary_by_year' do
    balance_for_all_years = settings.summary_service.balance_for_all_years
    balances = balance_for_all_years.map do |year,values|
      {
        year: year,
        paid_in: values.paid_in,
        paid_out: values.paid_out,
        balance: values.balance
      }
    end
    balances.to_json
  end

end
