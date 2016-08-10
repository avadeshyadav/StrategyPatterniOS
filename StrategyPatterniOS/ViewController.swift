//
//  ViewController.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demonstrateStrategy()
    }
    
    func demonstrateStrategy() {
        
        let insurancePolicyHolder = InsuranceHolder()
        insurancePolicyHolder.policyType = PolicyJeevanAnand()
        let premiumOne = insurancePolicyHolder.calculatePremiumForAmount(10000)
        print("JeevanAnand Policy premium is:\(premiumOne)")
        
        insurancePolicyHolder.policyType = PolicySimplySave()
        let premiumTwo = insurancePolicyHolder.calculatePremiumForAmount(10000)
        print("Simply save Policy premium is:\(premiumTwo)")
        
        insurancePolicyHolder.policyType = PolicyXyz()
        let premiumThree = insurancePolicyHolder.calculatePremiumForAmount(10000)
        print("Policy xyz premium is:\(premiumThree)")
    }
}

