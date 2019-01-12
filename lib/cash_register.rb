class CashRegister

  attr_accessor :total, :discount

  #def initialize(total=0, discount=(20))
  def initialize(total=0, *discount)
    @total = total
    @discount = 20
  end


  def add_item(title, price, quantity=(1))
    puts "discount = #{@discount/100}%"
    @total += price * quantity
    puts "total = #{@total}"
    puts "price = #{price}, quantity = #{quantity}"

  end

  def apply_discount
    return (1 - (@discount / 100))
  end
end
