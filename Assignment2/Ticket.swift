//
//  Ticket.swift
//  Assignment2
//
//  Created by user233437 on 6/12/23.
//

import Foundation

class Ticket{
    
    var price: Double
    var quantity: Int
    var type: String
    
    init(){
        self.price = 0.0
        self.quantity = 0
        self.type = ""
    }
    
    init(price: Double, quantity: Int, type: String) {
        self.price = price
        self.quantity = quantity
        self.type = type
    }
    
    func toString() -> String {
            var ticketListString = "\(type) \(quantity) Price: \(price)$"

            return ticketListString
        }
}

class PurchasedTicket: Ticket{
    
    var purchaseDate: Date
    
    init(price: Double, quantity: Int, type: String, purchaseDate: Date) {
        self.purchaseDate = purchaseDate
        super.init(price: price, quantity: quantity, type: type)
        
    }
    
}

class TicketList{
    
    var tickets:[Ticket]
    
    init() {
        tickets = []
    }
    
    func add(_ ticket:Ticket){
        tickets.append(ticket)
    }
   
}
