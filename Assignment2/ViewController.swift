//
//  ViewController.swift
//  Assignment2
//
//  Created by user233437 on 6/12/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    var tickets = (UIApplication.shared.delegate as! AppDelegate).ticketList
    var balconyTicket = (UIApplication.shared.delegate as! AppDelegate).balconyTicket
    var lowLevelTicket = (UIApplication.shared.delegate as! AppDelegate).lowLevelTicket
    var courtsideTicket = (UIApplication.shared.delegate as! AppDelegate).courtsideTicket
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tickets.add(balconyTicket)
        tickets.add(lowLevelTicket)
        tickets.add(courtsideTicket)
        
        //Default settings
        (UIApplication.shared.delegate as! AppDelegate).selectedType = tickets.tickets[0]
        typeLabel.text = tickets.tickets[0].type
        updateTotal()
        
    }

    @IBAction func numberClicked(_ sender: UIButton) {
        quantityLabel.text = (sender.titleLabel?.text!)
        if let quantity = Int(quantityLabel.text!){
            (UIApplication.shared.delegate as! AppDelegate).selectedQuantity = quantity
            
        }
        
        updateTotal()
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        guard row < tickets.tickets.count else {
                return nil
            }
        let ticket = tickets.tickets[row]
            return ticket.toString()
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        let selectedOption = tickets.tickets[row]
        
        (UIApplication.shared.delegate as! AppDelegate).selectedType = selectedOption
        
        typeLabel.text = selectedOption.type
        
        updateTotal()
        // Do something with the selected option
    }
    
    func updateTotal() -> Void{
        
        var total: Double
        total = (UIApplication.shared.delegate as! AppDelegate).selectedType.price * Double((UIApplication.shared.delegate as! AppDelegate).selectedQuantity)
        
        totalLabel.text = "$\(total)"

        print(total)
        
    }
 
    
}

