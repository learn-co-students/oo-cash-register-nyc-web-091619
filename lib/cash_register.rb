require 'pry'

class CashRegister
    
    attr_accessor :total, :discount, :quantity, :items

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items =[]
        @items_hash = {}
        
    end

    def add_item(item, price, quantity=1)
        quantity.times do
        @items.push(item)
        @items_hash[item] = price
        end 
        self.total += price * quantity
    end

    def apply_discount
        if discount > 0
            self.total -= self.total * discount / 100
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."  
        end
    end

    def void_last_transaction
        key = items.pop
        value = @items_hash[key]
        @items_hash.delete(key)
        if @items_hash.empty?
            self.total = 0.0 
        else 
            self.total -= value 
        end
    end    
end
