def stock_picker prices
	largestProfit = -1000
	sell_day = nil
	buy_day = nil
	#Strategy: Consider everyday but last as a buy day
	#Find the max price to sell at on all days following
	prices.each_with_index do |buy_price, key|
		if key == (prices.size - 1)
			break
		end
		sell_price = prices[key+1.. -1].max
		profit = sell_price - buy_price
		if profit > largestProfit
			largestProfit = profit
			buy_day = key
			#each with index min returns [price, index]
			#since it is searching only indexes after the key, you have to add the key + 1
			sell_day = prices[key+1.. -1].each_with_index.max[1] + key + 1
		end
	end
	return [buy_day, sell_day]
end
