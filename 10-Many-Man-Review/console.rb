require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

c1 = Customer.new("Vidhi", 1111)
c2 = Customer.new("PP", 2222)
c3 = Customer.new("Nick", 333)

b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")

acc1 = Account.new(c1, b1, 2000)
acc2 = Account.new(c2, b1, 10000)
acc3 = Account.new(c3, b2, 1000)

binding.pry
0