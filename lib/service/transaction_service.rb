module Statements
  class TransactionService
    def transactions(start_date = nil, end_date = nil, categories = nil)
      statement_data = Statements.data
      statement_data.query(start_date, end_date, categories)
    end
  end
end
