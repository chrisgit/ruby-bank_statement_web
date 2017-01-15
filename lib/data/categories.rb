module Statements

  CATEGORIES = { 
      'Supermarket' => ['Sainsbury', 'Tesco', 'Asda', 'Morrison', 'Waitrose', 'Marks/Spencer', 'M and S Simply Food', 'Marks Spencer',
			'Marks and Spencer', 'Sacat Marks and , Spencer', 'Aldi', 'Lidl'],
      'Petrol' => ['Esso', 'Shell', 'Tesco Petrol', 'BP', 'Sainsburys Petrol', 'Maple SSTN', 'Murco Petroleum'],
      'Gas' => ['Co-op', 'British Gas', 'Brit Gas-Wales'], 
      'Electricity' => ['British Gas', 'Brit Gas/Elect'],
      'Telephone' => ['BT group'],
	  'Water' => ['Southern Water', 'Thames Water'],
      'Mobile' => ['O2', 'Tesco mobile', 'Carphone Warehouse', 'Nokia', 'Vodafone'],
      'Council' => ['Basingstoke and Dean'],
	  'Sky' => ['Sky Digital'],
      'High Street' => ['Halfords', 'Primark', 'Kings DIY', 'WH Smith', 'T K Maxx', 'TK Maxx', 'Holland and Barrett', 'QubeFootwear',
			'Superdrug', 'B and Q', 'Matalan', 'Borders', 'Staples', 'Boots', 'PC World', 'HMV', 'Homebase', 'Camp Hopson',
			'Wyevale', 'Game Stores', 'Wickes', 'Novatech', 'Thorntons', 'Tula Factory', 'Reading Warehouse', 'Madhouse',
			'Richer Sounds', 'Sound Gallery', 'Thorntons', 'Maplin', 'Post Office', 'PostOffice', 'Interflora', 'Beaverbrooks', 'Argos',
			'Hawkins Bazaar', 'Blockbuster', 'The Garden Centre', 'John Lewis', 'Clinton Cards', 'SportsDirect', 'Waterstones',
			'Timberland', 'Robert Dyas', 'Jones Bootmaker', 'Makro', 'Birthdays', 'Wilkinson', 'Currys', 'House of Fraser',
			'Ernest Jones', 'Comet', 'Debenhams', 'Poundstretcher', 'Goldsmiths', 'Lakeside Garden', 'Festival Garden', 'Best Buy',
			'Swiss Watch', 'The Works', 'Beatties', 'Pets at Home', 'Costco', 'Winklebury Cycles', 'Home Bargains', 'Wilson Electrical',
			'Clintons', '99pStores', '99p Stores', 'Three Store', 'B and M retail', 'Julian Graves', 'Screwfix', 'Majestic Wine', 
			'Wilko Retail Ltd', 'Wilko Retail Limit', 'The Body Shop', 'Poundland', 'Ecco Shoes', 'The Range', 'Amazon',
			'Fitzrovia Watches', 'WF Invicta House', 'Precious Thymes'],
      'Credit Card' => ['Barclaycard'],
      'Bank' => ['Natwest', 'NW AD PRIVATE CHG'],
	  'Mortgage' => ['MLS P02 Woolwich'],
	  'Childcare' => ['Hurst Leisure Cntr'],
	  'Shares' => ['etrade'],
      'Car' => ['John Griffiths', 'Tower Garage', 'Calcot Cars', 'Falcon Garage', 'Whitequay', 'Headley Bodysh', 'Wheelgame', 'Charters',
			'J S Autoservices', 'Advance Motor', 'Kevin Griffin', 'AA Membership', "Marshall's", 'City Peugeot', 'Kwik Fit', 'Foster and Heanes',
			'SJB Autotech', 'Italia Speed', 'Cardrew Vehicle'],
      'People' => ['Howe', 'Kelsey Oleary', 'Cheyenne Oleary', 'Tina Morris', 'Bettersee'],
	  'Pets' => ['Donnington Grove', "O'Gorman Slater", 'Pampurredpets Ltd', 'Pets Corner'],
	  'Cinema' => ['Vue', 'Odeon'],
	  'Interest' => ['NET 09349774'],
	  'Salary' => ['NewVoiceMedia', 'NewVoice Media', 'Northgate'],
	  'Charity' => ['HIOW Wildlife', 'Hampshire WLT', 'BBOWT'],
	  'Insurance' => ['Legal and Gen'],
	  'Gambling' => ['National Lottery'],
	  'Pension' => ['Axa Sun Life'],
	  'Food' => ['Blacksmiths Arms', 'The Crooked Billet', 'Welcome Break', 'Wellington Arms', "Domino's Pizza",  'Dominos Pizza', 
			'THE LAMBERT ARMS', 'Dexters Grill', 'Ciao Baby Cucina', 'Longbridge Mill', 'The Mill', 'Hinds Head', 'The Ben Jonson', 
			"O'Briens", 'FTB The Royal Oak', 'Moto Retail', 'Moto', "TGI Friday's", 'Loggans Moor', 'The Swan Inn', 'Starbucks', 
			'The New Standard', 'Man Yuen', 'Cinnamon Tree', 'Brambles', 'Giraffe Concepts', 'Strada', 'Brewers Fayre', "Austell's", 'Austells',
			"Stein's", 'KFC', 'The Cornwall', 'Treleigh Arms', 'Pret A Manger', 'Toby Carvery', 'Toby Cavery', 'Waddesdon Rest', 'Marlow Donkey', 
			'Hand and Flowers', 'Hatch', 'Zizzi', 'Queens College', 'The Polly', 'Harvester', 'Spice Mahal', 'Costa', 'New Dynasty', 'McDonalds', 
			'Star Inn', 'The Queens At', 'Waterwitch', 'Swan', 'Cobblestones', 'TableTable', 'Table , Table', 'Old Shire Inn', 'The Gate',
			'Old Bell', 'The Bull Inn', 'Nandos', 'Greggs', 'Nero', 'Maison Blanc', "Oldbury's Deli", 'Auntie Annes', 'Frankie and Bennys',
			'Audleys Wood', 'The White Horse', 'JD Wetherspoon', 'The New Inn', 'N G Palace', 'Cote Newbury', 'Subway', 'Le Caffe Aroma',
			'Driftwood Spars']
  }

end

# Sainsburys supermarkets SAINSBURYS S/MKTS, SAINSBURYS, SAINSBURY'S SMKT
# Sainsburys petrol SAINSBURYS PETROL
# Sainsburys (ATM) SAINSBURYS B
# Tesco TESCO STORES, TESCO EXPRESS, TESCO UPT, TESCO SACAT, TESCO GARAGE, TESCO PETROL
# Tesco mobile TESCO MOBILE
# Wildlife HIOW WILDLIFE TRUS
# L&G medical LEGAL AND GEN MI C/L
# Post Office POST OFFICE
# Halfords  HALFORDS
# Morrisons MORRISONS, W M MORRISON
