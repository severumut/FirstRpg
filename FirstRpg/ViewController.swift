//
//  ViewController.swift
//  FirstRpg
//
//  Created by Umut Sever on 31.01.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var dex_value_cal = 0, str_value_cal = 0, int_value_cal = 0 //bunun degerini daha sonra hesaplamak icin kullanilacak.
    var dex_max_cal = 0, str_max_cal = 0, int_max_cal = 0 //
    let absoluteTotalPoints = 5.0  // total stat pool
    
    var str_current_value : Double = 0.0
    var dex_current_value : Double = 0.0
    
    
    var str_maximum_value : Double = 0.0
    
    

    @IBOutlet weak var STR_UILabel: UILabel!
    
    @IBOutlet weak var dex_value: UILabel!
    @IBOutlet weak var int_value: UILabel!
    
    //let calculation = str_value_cal + dex_value_cal
    func totalPool() -> Bool {

        var currentTotalPoints = str_current_value + dex_current_value
        
        if currentTotalPoints <= absoluteTotalPoints {
            return true
        }
        else {
            return false
        }
    
    }

    //initial maximum allowed points.
    
    //str_value_changer.sender.maximumValue
    
    
    @IBAction func str_value_changer(_ sender: UIStepper) { //comment here
        
        
        logstuff()
        
        str_current_value = sender.value //client 's input is stored in str_current_value
        STR_UILabel.text = String(sender.value) //current value of  the label
        str_maximum_value = sender.maximumValue //label's maximum value could be this
        
        
        
        var isAllowed = totalPool() //toplam havuz daha fazla puan atamama izin vericek mi??
        
        print (isAllowed)
        
        if isAllowed == true {
            
            sender.maximumValue = sender.maximumValue + 1
            
        }
        
        else {
            //sender.isHidden = true
            sender.maximumValue = sender.value
            print ("Maximum Points Allocated.",sender.value)
            
        }
        
  //sender.maximumValue = calculation >= max ? str_value_cal : max
        //dex_max_cal = calculation >= max ? dex_value_cal : max
       
        
    }

  @IBAction func dex_value_changer(_ sender: UIStepper) {
        /*  logstuff()
        dex_value.text = String(sender.value)
        dex_value_cal = Int(sender.value)
        dex_max_cal = Int(sender.maximumValue)
        sender.maximumValue = Double(calculation >= max ? dex_value_cal: max)
        str_max_cal = calculation >= max ? str_value_cal : max
    */
    }
 
    
    @IBAction func int_value_changer(_ sender: UIStepper) {
        
        logstuff()
        int_value.text = String(sender.value)
        
        
        
        
        
        print("int_value_cal: ", dex_value_cal)
        
    }
    
    func logstuff (   ) {
        
        print("ALPALPALP")
        print("dex_value_cal: ", dex_value_cal)
        print("dex_value_cal: ", dex_value_cal)
        //print("sender.maximumValue: ", sender.maximumValue)
        print("str_value_cal: ", str_value_cal)
    }
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
   
 
    

    
}

