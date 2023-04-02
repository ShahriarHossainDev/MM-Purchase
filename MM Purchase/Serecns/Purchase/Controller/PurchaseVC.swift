//
//  PurchaseVC.swift
//  MM Purchase
//
//  Created by Shishir_Mac on 2/4/23.
//

import UIKit

class PurchaseVC: UIViewController {
    
    @IBOutlet weak var policyButton: UIButton!
    @IBOutlet weak var termsOfUseButton: UIButton!
    @IBOutlet weak var dummyLabel: UILabel!
    
    
    @IBOutlet weak var yearView: UIView!
    @IBOutlet weak var monthView: UIView!
    @IBOutlet weak var lifeTime: UIView!
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var yearPriceLabel: UILabel!
    @IBOutlet weak var yearButton: UIButton!
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var monthPriceLabel: UILabel!
    @IBOutlet weak var monthButton: UIButton!
    
    @IBOutlet weak var lifeTimeLabel: UILabel!
    @IBOutlet weak var lifeTimePriceLabel: UILabel!
    @IBOutlet weak var lifeTimeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupContents()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    @IBAction func yearButtonAction(_ sender: UIButton) {
        print("yearButtonAction")
    }
    
    @IBAction func monthButtonAction(_ sender: UIButton) {
        print("monthButtonAction")
    }
    
    @IBAction func lifeTimeButtonAction(_ sender: UIButton) {
        print("lifeTimeButtonAction")
    }
    
    
    // MARK: - Function
    func setupContents() {
        // lifetime
        lifeTime.layer.borderWidth = 1.5
        lifeTime.layer.borderColor = Colors.view_borderColor.uiColor().cgColor
        lifeTime.layer.cornerRadius = lifeTime.frame.height / 2
        
        lifeTimeLabel.textColor = Colors.text_color_one.uiColor()
        lifeTimeLabel.font = UIFont(name: "Inter-Medium", size: 18.0)
        
        lifeTimePriceLabel.textColor = Colors.text_color_two.uiColor()
        lifeTimePriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        
        // monthView
        monthView.layer.borderWidth = 1.5
        monthView.layer.borderColor = Colors.view_borderColor.uiColor().cgColor
        monthView.layer.cornerRadius = lifeTime.frame.height / 2
        
        monthLabel.textColor = Colors.text_color_one.uiColor()
        monthLabel.font = UIFont(name: "Inter-Medium", size: 18.0)
        
        monthPriceLabel.textColor = Colors.text_color_two.uiColor()
        monthPriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        
        // monthView
        monthView.layer.borderWidth = 1.5
        monthView.layer.borderColor = Colors.view_borderColor.uiColor().cgColor
        monthView.layer.cornerRadius = lifeTime.frame.height / 2
        
        // yearView
        
        let gradient = CAGradientLayer()
        gradient.frame = yearView.bounds
        gradient.colors = [Colors.premium_button_tur.uiColor().cgColor, Colors.premium_button_turquoise.uiColor().cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        
        yearView.layer.insertSublayer(gradient, at: 0)
        
        yearView.layer.masksToBounds = true
        yearView.layer.cornerRadius = lifeTime.frame.height / 2
        
        yearLabel.textColor = Colors.text_color_one.uiColor()
        yearLabel.font = UIFont(name: "Inter-Medium", size: 20.0)
        
        yearPriceLabel.textColor = Colors.text_color_one.uiColor()
        yearPriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        
    }
    
}
