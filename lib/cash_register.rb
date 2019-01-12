class CashRegister

  attr_accessor :total, :discount

  def initialize(total=0, discount=(20))
    @total = total
    @discount = discount
  end



  def add_item(title, price, quantity=(1))
    @subtotal = price * quantity
    @discounted_subtotal = @subtotal * (100 - @discount)/100
    @total = @discounted_subtotal #self.apply_discount
    #self.apply_discount
  end

  def apply_discount
    return @subtotal * (1 - @discount/100)
  end
end
