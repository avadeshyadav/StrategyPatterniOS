//
//  PolicySimplySave.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import Foundation

class PolicySimplySave: NSObject, PolicyPremium {
    
    func calculatePremiumForPolicyAmount(_ amount: Int) -> Int {
        
        return amount * 10 / 1000;// This is just for understanding
    }
}
