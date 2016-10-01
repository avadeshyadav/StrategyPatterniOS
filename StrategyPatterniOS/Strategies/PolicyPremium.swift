//
//  PolicyPremium.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//


protocol PolicyPremium {
    func calculatePremiumForPolicyAmount(_ amount: Int) -> Int
}
