class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity

  def initialize(total = 0)
    @total = total
    @discount = 20
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
    if @discount == 0
      "There is no discount to apply."
    else
      @discount = @discount/50.to_f
      @total = (@total - (@total * @discount)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  # def void_last_transaction
  # end

end
