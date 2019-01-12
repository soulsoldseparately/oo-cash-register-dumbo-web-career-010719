class CashRegister

  attr_accessor :total, :discount

  def initialize(total=0, discount=(20))
    @total = total
    @discount = discount
  end



  def add_item(title, price, quantity=(1))

    @total += price * quantity #self.apply_discount
    self.apply_discount
  end

  def apply_discount
    @total = @total * 0.80
  end
end
