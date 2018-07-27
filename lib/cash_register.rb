class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount = @total * (@discount.to_f / 100)
      @total -= discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
  end

end
