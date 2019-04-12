class Bank
    attr_accessor :name
    @@all = []

def initialize(name)
    @name = name
    @@all << self    #all class instances to class
end

def  self.all      #class getter method
    
    @@all
end



def accounts                               #return all account belong to the bank
    Account.all.select do |account|
        account.bak == self
    end
end


end