//
//  PolicyJeevanAnand.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import Foundation

class PolicyJeevanAnand: NSObject, PolicyPremium {
    
    func calculatePremiumForPolicyAmount(amount: Int) -> Int {
        
        return amount * 8 / 1000;
    }
}
