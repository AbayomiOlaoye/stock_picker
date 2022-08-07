def stock_picker(arr)
  margin = Array.new(0)
  best_deal = Array.new(0)
  arr.combination(2) do |buy, sell| 
    margin.push(sell - buy)
    if sell - buy == margin.max 
      best_deal = arr.index(buy), arr.index(sell)
    end
  end
  best_deal
end

p stock_picker([17,3,6,9,15,8,6,1,10])