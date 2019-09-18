class CashRegister

    attr_accessor :total
    attr_reader :discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end

    def add_item(item, price, quantity=1)
        price *= quantity
        @last_transaction = price
        @total += price
        quantity.times do @items << item end
    end

    def apply_discount
        if @discount != 0
            @total -= (@total * @discount) / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
        
end