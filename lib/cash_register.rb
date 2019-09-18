
class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction

    def initialize(discount=0) 
        @total=0 #sets a new instance variable @total to 0
        @discount=discount #optional discount
        @items=[] #array containing all items being added
    end

    def add_item(title, amount, quantity=1)
        self.total += amount * quantity #accepts a title and a price and increases total
        quantity.times do #accepts an optional quantity
            items << title 
        end
        self.last_transaction = amount * quantity #doesnt forget previous total
    end


    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i #employee discount applies to discount to total price
            "After the discount, the total comes to $#{self.total}."
          else
            "There is no discount to apply."
          end
    end

    def void_last_transaction
        self.total = self.total - last_transaction #subtracts the last item from total
    end


end

