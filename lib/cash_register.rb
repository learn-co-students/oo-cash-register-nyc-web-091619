require "pry"
class CashRegister 
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=nil)
        @total = 0.00 
        @discount = discount 
        @items = []  
    end 

    def add_item(item, price, quantity=1) 
        self.total += price*quantity 
        quantity.times do   
        @items << item 
        end 
        self.last_transaction = price*quantity 
    end 

    def apply_discount
        if discount 
             self.total -= total*(discount*0.01) 
            return "After the discount, the total comes to $#{@total.to_i}."
        else 
            return "There is no discount to apply."
        end 
              
    end 

    def void_last_transaction 
        self.total -= last_transaction
        
    end 
end 