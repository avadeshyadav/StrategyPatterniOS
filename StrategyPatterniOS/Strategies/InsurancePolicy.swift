//
//  InsurancePolicy.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import Foundation

class InsurancePolicy: NSObject {

    var policyType: PolicyPremium?
    var name: String?
    
    
    func calculatePremiumForAmount(amount: Int) -> Int {
        
        if let _ = policyType {
            return policyType!.calculatePremiumForPolicyAmount(amount);
        }
        else {
           // NSException.raise("Blank Policy Exception", format: "Please specify a Insurance Policy first", arguments: 0);
            return 0;
        }
    }
}
