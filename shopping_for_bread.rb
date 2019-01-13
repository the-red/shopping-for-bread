class Item
  attr_accessor :count
  def initialize(count)
    @count = count
  end

  def buy(count)
    if count > @count
      result = @count
      @count = 0
      return result
    end

    @count -= count
    count
  end

  def exists?
    @count.positive? ? true : false
  end
end

@breads = Item.new(50)

def buy_bread(count = 1)
  puts 'パンを買いに来ました。'
  result = @breads.buy(count)
  puts "#{result}コ購入！"
end

buy_bread()
