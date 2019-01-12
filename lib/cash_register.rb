class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  # attr_accessor :total
  # attr_reader :discount
  #
  # #def initialize(total=0, discount=(20))
  # def initialize(total=0, discount=20)
  #   @total = total
  #   @discount = discount
  # end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end

  # def add_item(title, price, quantity=1)
  #   puts "discount = #{@discount}%"
  #   puts "total-pt1 = #{@total}"
  #
  #
  #   @total += (price * quantity) * self.apply_discount
  #
  #   puts "total = #{@total}"
  #   puts "price = #{price}, quantity = #{quantity}"
  #
  # end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction()
    @total -= @last_transaction_amount
  end

  # def apply_discount
  #
  #   1 - @discount/100.0
  # end
end
