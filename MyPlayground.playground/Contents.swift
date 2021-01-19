import UIKit

class Customer {

   let name: String
   var card: CreditCard?

   init(name: String) {
       self.name = name
    print("Customer is inited")
   }
   deinit { print("\(name) is being deinitialized") }
}


class CreditCard {
   let number: UInt64
   unowned let customer: Customer

    init(number: UInt64, customer: Customer) {
       self.number = number
        self.customer = customer
        print("card is inited")
   }

   deinit { print("Card #\(number) is being deinitialized") }
}

var customer = Customer.init(name: "mobile")
var card = CreditCard.init(number: 12, customer: customer)

customer.card = card

