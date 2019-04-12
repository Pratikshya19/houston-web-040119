class Customer
    attr_accessor :name, :number
    @@all = []

def initialize(name, number)
    @name = name
    @number = number
    @@all << self
end

def  self.all
    
    @@all
end

def accounts
    Account.all.select do |account|  #select return all that match to our selection
    account.cutomer == self 
    end
end


def banks
    self.accounts.map do |account| #here self is instance or can eliminate self
        account.bank
    end
end

def balance
    total = 0
    self.accounts.each do |account|
        total += account.balance
    end
total   #total = total + account.balance
end


end