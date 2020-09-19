class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity

  def initialize(total = 0)
    @total = total
    @discount = 20.0
    @items = []

  end

  def add_item(item, price, quantity = 0)
    if quantity > 0
      self.total += price * quantity
      @items << ("#{item}," * quantity).split(",")
      @items.flatten!
    else
      self.total += price
      @items << item
    end
  end

  def apply_discount
    if discount > 0
      @discount = @discount/100.to_f
      @total = (@total - (@total * @discount)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  # def items
  #   @@checkout.keys
  # end
  #
  # def void_last_transaction
  # end

end
