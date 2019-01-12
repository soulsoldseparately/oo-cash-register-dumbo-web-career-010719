class CashRegister

  attr_accessor :total, :discount

  def initialize(total=0, discount=(20))
    @total = total
    @discount = discount
  end



  def add_item(title, price, quantity=(1))
    @total += price * quantity
    puts "price = #{price}, quantity = #{quantity}"
    if @discount > 0
      discounted_total = @total * self.apply_discount
  #  @total += @subtotal #self.apply_discount
    #self.apply_discount
  end

  def apply_discount(@total)
     1 - @discount/100
  end
end
