require "pry-byebug"

def stock_picker(prices)
  buy_price = prices.each_with_index.select{|price, index| index != (prices.length - 1)}.map{|price| price[0]}		
	sell_price = prices.each_with_index.select{|price,index| index != 0}.map{|price| price[0]}

	binding.pry
end

stock_picker([17,3,6,9,15,8,6,1,10])