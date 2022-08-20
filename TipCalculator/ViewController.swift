//
//  ViewController.swift
//  TipCalculator
//
//  Created by Aishat Olatunji on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func CalculateTip(_ sender: Any) {
        
        let billAmount:Double = Double(BillAmountTxt.text!)!
        
        let TipAmount:Double = (Double(TipPercentTxt.text!)! / 100) * billAmount
        TipAmountLbl.text = String(format: "$%.02f", TipAmount)
        
        BillTotalLbl.text = String(format: "$%.02f", billAmount + TipAmount)
    }
    @IBOutlet weak var TipAmountLbl: UILabel!
    @IBOutlet weak var BillTotalLbl: UILabel!
    
    @IBOutlet weak var TipPercentTxt: UITextField!
    @IBOutlet weak var BillAmountTxt: UITextField!
    @IBOutlet weak var CalculateTipBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

