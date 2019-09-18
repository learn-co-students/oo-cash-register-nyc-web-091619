require 'pry'

class CashRegister
    attr_reader :discount
    attr_accessor :total, :last_transaction

    def initialize(discount = false)
        @total = 0
        @discount = discount
        @item_list = []
        @price_list = []
    end

    def add_item(item, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times{
            @item_list << item
        }
        self.last_transaction = price * quantity
    end

    def apply_discount
        if self.discount
            self.total *= (100 - self.discount) * 0.01
            return "After the discount, the total comes to $#{self.total.to_i}."
        else 
            return "There is no discount to apply."
        end
    end

    def items
        return @item_list
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
