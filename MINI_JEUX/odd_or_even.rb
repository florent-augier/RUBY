def find_outlier(integers)
    evens = integers.count{ |n| n % 2 == 0 }
    odds = integers.count{ |n| n % 2 != 0}
    if evens > odds
      integers.each do |n|
        puts n if n % 2 != 0 # return instead of puts
      end
    else
      integers.each do |n|
        puts n if n % 2 == 0 # return instead of puts
      end
    end
  end

find_outlier([2,6,8,10,3]) # 3