//
//  InsuranceHolder.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import Foundation

class InsuranceHolder: NSObject {
    
    var policyType: PolicyPremium?
    var name: String?
    
    
    func calculatePremiumForAmount(_ amount: Int) -> Int {
        
        if let _ = policyType {
            return policyType!.calculatePremiumForPolicyAmount(amount);
        }
        else {
            
            NSException(name: NSExceptionName(rawValue: "Blank Policy Exception"), reason: "Please specify a Insurance Policy first", userInfo: [:]).raise()
            return 0;
        }
    }
}
