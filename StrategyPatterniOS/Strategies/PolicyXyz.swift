//
//  PolicyXyz.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import Foundation

class PolicyXyz: NSObject, PolicyPremium {

    func calculatePremiumForPolicyAmount(_ amount: Int) -> Int {
        
        return amount * 6 / 1000;
    }
}
