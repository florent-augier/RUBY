def openOrSenior(data)
    data.map { |i| Member.new(i).category }
  end
  
class Member
  def initialize(data)
    @age = data.first
    @handicap = data.last
  end
  
  def category
    if @age >= 55 && @handicap > 7
      'Senior'
    else
      'Open'
      end
    end
  end

puts openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])

puts openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]]) 