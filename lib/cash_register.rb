class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity

  @@checkout = {}

  def initialize(total = 0)
    @total = total
    @discount = 20.0

  end

  def add_item(item, price, quantity = 1)
    # @@checkout[:item] = (price *= quantity)
    quantity.times {@@checkout.store(item, price)}
    @total += @@checkout.values.inject(0){|a, b| a + b}
  end

  def apply_discount
    employee_discount = @total - (@total*(@discount/100.0))
    puts "After the discount, the total comes to #{employee_discount}."
  end

  # def items
  #   @@checkout.keys
  # end
  #
  # def void_last_transaction
  # end

end
