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
    
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var largeTitleLabel: UILabel!
    @IBOutlet weak var noAdsLabel: UILabel!
    
    @IBOutlet weak var purchaseTableView: UITableView!
    
    private let cellIdentifier: String = "purchaseCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        purchaseTableView.dataSource = self
        purchaseTableView.delegate = self
        purchaseTableView.separatorStyle = .none
        
        self.purchaseTableView.register(UINib(nibName: "PurchaseTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        
        setupContents()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13, *) {
            return .lightContent
        } else {
            return .lightContent
        }
    }
    
    // MARK: - IBAction
    @IBAction func yearButtonAction(_ sender: UIButton) {
        self.yearView.viewPulse()
    }
    
    @IBAction func monthButtonAction(_ sender: UIButton) {
        self.monthView.viewPulse()
    }
    
    @IBAction func lifeTimeButtonAction(_ sender: UIButton) {
        self.lifeTime.viewPulse()
    }
    
    
    // MARK: - Function
    func setupContents() {
        // lifetime
        lifeTime.layer.borderWidth = 1.5
        lifeTime.layer.borderColor = Colors.view_borderColor.uiColor().cgColor
        lifeTime.layer.cornerRadius = lifeTime.frame.height / 2
        
        lifeTimeLabel.textColor = Colors.text_color_one.uiColor()
        lifeTimeLabel.font = UIFont(name: "Inter-Medium", size: 18.0)
        lifeTimeLabel.text = Strings.lifetime
        
        lifeTimePriceLabel.textColor = Colors.text_color_two.uiColor()
        lifeTimePriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        lifeTimePriceLabel.text = Strings.billed_one
        
        // monthView
        monthView.layer.borderWidth = 1.5
        monthView.layer.borderColor = Colors.view_borderColor.uiColor().cgColor
        monthView.layer.cornerRadius = lifeTime.frame.height / 2
        
        monthLabel.textColor = Colors.text_color_one.uiColor()
        monthLabel.font = UIFont(name: "Inter-Medium", size: 18.0)
        monthLabel.text = Strings.one_month
        
        monthPriceLabel.textColor = Colors.text_color_two.uiColor()
        monthPriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        monthPriceLabel.text = Strings.billed_two
        
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
        yearLabel.text = Strings.one_year
        
        yearPriceLabel.textColor = Colors.text_color_one.uiColor()
        yearPriceLabel.font = UIFont(name: "Inter-Regular", size: 13.0)
        yearPriceLabel.text = Strings.billed_three
        
        //Top
        largeTitleLabel.textColor = Colors.text_color_one.uiColor()
        largeTitleLabel.font = UIFont(name: "Inter-Bold", size: 30.0)
        largeTitleLabel.text = Strings.large_title
        
        proImage.image = UIImage(named: "prologo")
        
        noAdsLabel.textColor = Colors.text_color_three.uiColor()
        noAdsLabel.font = UIFont(name: "Inter-Regular", size: 15.0)
        noAdsLabel.text = Strings.no_ads
        
        dummyLabel.textColor = Colors.text_color_four.uiColor()
        dummyLabel.font = UIFont(name: "Inter-Regular", size: 12.0)
        dummyLabel.text = Strings.dummy
        
    }
    
}

extension PurchaseVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? PurchaseTableViewCell {
            return cell
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 34
    }
    
}
