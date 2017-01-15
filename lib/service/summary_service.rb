module Statements
  class SummaryService

    # Create summary of all transaction
	def grand_total
      statement_data = Statements.data
	  summary = Summary.new(0.0,0.0)
	  statement_data.transactions.each do |t|
	    if t.value > 0
	      summary.paid_in = summary.paid_in + t.value
	    else
	      summary.paid_out = summary.paid_out + t.value
	    end
	  end
	  Summary.new(summary.paid_in.round(2), summary.paid_out.abs.round(2))
	end
	
    # Create for each year
    def grand_total_by_year
      statement_data = Statements.data
	  summary = {}
	  statement_data.transactions.each do |t|
	    year_key = t.date.year.to_s
	    summary[year_key] = Summary.new(0.0,0.0) unless summary.key?(year_key)
	    if t.value > 0
		  summary[year_key].paid_in = summary[year_key].paid_in + t.value
	    else
		  summary[year_key].paid_out = summary[year_key].paid_out + t.value
	    end
	  end
	  normalise_add_balance(summary)
	end
	
	def by_category(start_date = nil, end_date = nil, categories = nil)
	  statement_data = Statements.data
      transactions = statement_data.query(start_date, end_date, categories)
      transactions.map(&:value).inject(&:+).abs.round(2)
	end
	
	private
	
	def normalise_add_balance(summary)
	  summary.map { |k,v| {year: k, paid_in: v.paid_in.round(2), paid_out: v.paid_out.abs.round(2), balance: (v.paid_in - v.paid_out.abs).round(2) } }
	end
	
  end
end

# Grand Total
=begin
# Multiple passes
  summary = Summary.new(0.0,0.0)
  summary.paid_in = @transactions.map { |t| t.value > 0 ? t.value : 0.00}.inject(&:+).round(2)
  summary.paid_out = @transactions.map { |t| t.value < 0 ? t.value : 0.00}.inject(&:+).round(2).abs
  
# Single loop
	  # Create summary of all transaction
	  summary = Summary.new(0.0,0.0)
	  statement_data.transactions.each do |t|
	    if t.value > 0
	      summary.paid_in = summary.paid_in + t.value
	    else
	      summary.paid_out = summary.paid_out + t.value
	    end
	  end
	  Summary.new (summary.paid_in.round(2), summary.paid_out.round(2).abs)

=end
