require "pry-byebug"

def stock_picker(prices)
	best_profit = 0
	best_profit_day_index = ""

	prices.each_with_index do |price1, day_index1| 
		prices.each_with_index do |price2, day_index2|

			profit = price2 - price1

			if profit > best_profit && day_index2 > day_index1
				best_profit = profit
				best_profit_day_index = [day_index1, day_index2]
			end

		end
	end

	p best_profit
	p best_profit_day_index
	  
	
	binding.pry
end

stock_picker([13,11,5,9,2,8,9,12,1])