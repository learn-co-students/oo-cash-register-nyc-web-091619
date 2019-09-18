class CashRegister

    attr_accessor :total, :price, :items, :discount

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(items, price, quantity = 1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        if quantity > 1
            counter = 0
            while counter < quantity
              @items << items
              counter += 1
            end
        else 
            @items << items
        end
    end

    def apply_discount
        if @discount != nil
            @amt_off = (price * discount)/100
            @total -= @amt_off
            return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @price * @quantity
    end

end

