class CashRegister
  attr_accessor :total, :discount, :items, :last_item_added

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << item
    end
    self.last_item_added = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @discount = @discount/100.to_f
      @total = (@total - (@total * @discount)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_item_added
  end

end
