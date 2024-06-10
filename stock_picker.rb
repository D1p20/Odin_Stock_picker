stock = [1,3,6,9,8,6,2,10,15]


def stock_picker(arr)
    len = arr.length()
    result = 0
    buy_day = 0
    sell_day = 0
    arr.each_with_index do |stk,indx|
        # Buy at lowest price
        # Sell at highest price
        # Buy index must be lower at sell index
        counter = indx
        while counter < len-1 
            difference = arr[counter+1] -arr[indx]
            # puts "#{arr[counter+1]} - #{arr[indx]} = #{difference}"
            if difference > result
                result = difference
                buy_day = indx
                sell_day = counter+1
              end
            counter +=1
        end
        

      
    end
    puts result
    return [buy_day,sell_day]


end


puts stock_picker(stock)


