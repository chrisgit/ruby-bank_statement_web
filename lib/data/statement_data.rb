# Structure with some logic to manipulate cookbooks (rather than deal with Hashes)
Transaction = Struct.new(:date, :type, :description, :value, :account_name, :account_number, :categories)

# Summary ... total ... per year
Summary = Struct.new(:paid_in, :paid_out)

module Statements

  # Create a simple way to obtain the CSV data
  @data = nil
  def self.data
    @data ||= begin
    files = Dir['./data/*.csv'].map(&File.method(:realpath))
    Statements::BankData.new(files)
    end
  end

# Load all files in CSV folder
  class BankData
    attr_reader :transactions
 
    def initialize(statement_files)
      @statement_files = statement_files
      read_all_csv()
    end

	# Multiple category values 
	# http://stackoverflow.com/questions/25840356/array-include-multiple-values
	# Match any of the following
	# select { |t| (t.categories & ['Supermarket', 'Petrol']).any? }
	# Match ALL of the categories
	# categories_to_match = ['Supermarket', 'Petrol']
	# select { |t| (t.categories & categories_to_match).length == categories_to_match.length
	def query(start_date, end_date, category)
      start_date = Date.parse('01/02/1901') if start_date.nil?
      end_date = Date.parse('31/12/2099') if end_date.nil?
	  match_categories = search_categories(category)
      @transactions.select do | transaction |
        match = transaction.date >= start_date && transaction.date <= end_date
        match = match && ((transaction.categories & match_categories).length == match_categories.length)
        match
       end
    end

    private

    def search_categories(categories)
	  return categories if categories.is_a?(Array)
	  return categories.split(',') if categories.is_a?(String)
	  []
	end
	
		def categories(description)
			match_categories = []
			Statements::CATEGORIES.each_pair do |category, items|
				match_sub_categories = items.select do |sub_category| 
					description.upcase.include?(sub_category.upcase)
				end
				match_categories << category << match_sub_categories unless match_sub_categories.empty?
			end
			match_categories << 'Misc' if match_categories.empty?
			match_categories.flatten
		end

    def read_all_csv()
      @transactions = []
      @statement_files.each do |filename|
        CSV.read(filename, headers: true, skip_blanks: true, header_converters: [:trim_header, :symbol], :converters => :all).each do |row|
          transaction = create_transaction(row)
          @transactions << transaction
        end
      end
    end

    def create_transaction(row)
      Transaction.new(
        Date.parse(row[:date]),
        row[:type],
        row[:description],
        row[:value],
        row[:account_name],
        row[:account_number],
        categories(row[:description]))
    end
  end
end

# Old Code
=begin
	def query(start_date, end_date, category)
      start_date = Date.parse('01/02/1901') if start_date.nil?
      end_date = Date.parse('31/12/2099') if end_date.nil?
      @transactions.select do | transaction |
        match = transaction.date >= start_date && transaction.date <= end_date
        match = match && (transaction.categories.include?(category)) unless category.nil?
        match
       end
    end
=end