class CashRegister
    attr_accessor :discount, :total, :items

    def initialize(discount=nil)
        @total = 0.0
        @items = []
        @discount = discount
    end

    def add_item(item, cost, quantity=1)
        @items << self
        @total += cost * quantity
    end

    def apply_discount
        if @discount == nil
            return "There is no discount to apply."
        else
            @total *= (1-(@discount.to_f/100.0))
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end
end #END CashRegister