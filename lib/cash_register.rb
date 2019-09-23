
class CashRegister

    attr_accessor :total, :items, :discount, :last_transaction

def initalize (discount)
    @total = 0
    @item = []
    @discount = discount
end

def add_item(item, price, quantity)
    self.total += item * quantity
    
    quantity << item

end

def apply_discount
    if discount != 0
        self.total = ((total - total * discount)/100.00)
        puts "After the discount, the total comes to #{self.total}"
    else 
        puts "There is no discount to apply"
    end

def void_last_transaction
    self.total = self.total - self.last_transaction
end

end # end of class cash register
