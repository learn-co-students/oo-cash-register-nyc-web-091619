
class CashRegister
    attr_accessor :total, :discount


    def initialize(discount=0)
        @total = 0
        @old_total = 0
        @discount = discount
        @items = []
    end

    def add_item(name, price, quantity = 1)
        @old_total = @total
        @total += price * quantity
        @items.concat([name] * quantity)
    end

    def apply_discount
        if discount > 0
            @total *= (1.0 - @discount * 0.01) 
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items 
        @items
    end

    def void_last_transaction
        @total = @old_total
        if @items.any?
            @items.pop
        end

    end


end
