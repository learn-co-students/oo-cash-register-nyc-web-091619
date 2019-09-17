require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items

    def initialize(discount=nil)
        @total = 0.0
        @items = []
        @discount = discount.to_f
    end

    def add_item(item, cost, quantity=1)
        @items << self
        @total += cost * quantity
    end

    def apply_discount
        if @discount == nil
            return "There is no discount to apply."
        else
            @total *= (1-(@discount/100.0))
            return "After the discount, the total comes out to #{@total}"
        end
        binding.pry
    end
end #END CashRegister