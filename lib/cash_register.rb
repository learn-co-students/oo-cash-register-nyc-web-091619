class CashRegister

attr_accessor :total, :discount, :items, :transactions


def initialize(discount = 0)

  @total = 0
  @discount = discount
  @items = []
  @transactions = []

end



def add_item(title, price, amount=1)
  transaction = amount * price
  @total += transaction
  @transactions << transaction

  amount.times do
    items << title
  end
end



def apply_discount
  if discount != 0
    @total -= @total * (@discount / 100.0)
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end


def void_last_transaction
  @total -= @transactions.pop
end 


end
