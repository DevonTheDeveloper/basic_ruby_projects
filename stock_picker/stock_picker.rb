prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  # display days
  # declare needed variables
  days = [0, 0]
  first_day = 0
  min_price = prices[0]
  profit = 0

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      first_day = index
    end
    if price - min_price > profit
      # calculate the profit
      profit = price - min_price
      days = [first_day, index]
    end
  end

  p days
  return days
end

stock_picker(prices)