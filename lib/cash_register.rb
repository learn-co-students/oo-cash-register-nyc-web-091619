require 'pry'
class CashRegister

    attr_accessor :discount, :total, :last_transaction, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        @total += price * quantity
        @last_transaction = price * quantity

        if quantity == 1 && quantity > 0
            items << item
        else
            quantity.times {
                items << item
            }
        end
    end

    def apply_discount
        @total = @total - (@total * discount/100.0)
        if discount > 0 
            return  "After the discount, the total comes to $#{total.to_i}."
        else 
            return "There is no discount to apply."   
        end
    end

    def items
        @items
    end
    
    def void_last_transaction
        @total = @total - @last_transaction
    end

end
