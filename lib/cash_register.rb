require "pry"
class CashRegister
    attr_accessor :discount, :total, :items, :cart

    def initialize(discount=nil)
        @total = 0.0
        @items = []
        @cart = {}
        @discount = discount
    end

    def add_item(item, cost, quantity=1)
        @total += cost * quantity
        quantity.times{@items << item}
        @cart[item] = cost * quantity
        # binding.pry
    end

    def apply_discount
        if @discount == nil
            return "There is no discount to apply."
        else
            @total *= (1-(@discount.to_f/100.0))
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        @total -= @cart[@items[-1]]
        @items.pop
    end

end #END CashRegister