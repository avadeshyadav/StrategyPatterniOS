# StrategyPatterniOS

Strategy pattern enables us to write more than one solutions of a problem and allows us to dynamically change the solution without breaking existing code.
To acheive this functionality, we need to write a protocol with required behaviour, and solutions will implement that protocol.
Here In this demo, I have taken example of Insurance Policies. 

My Strategy protocol is:

    protocol PolicyPremium {
        func calculatePremiumForPolicyAmount(amount: Int) -> Int
    }

And suppose currently 2 policies available as:
1. PolicyJeevanAnand
2. PolicySimplySave

As I am not a guy with good knowledge of Insurance policies, so just made two types with random name.
So implementations of these classes are:

    class PolicyJeevanAnand: NSObject, PolicyPremium {
        func calculatePremiumForPolicyAmount(amount: Int) -> Int {
            return amount * 8 / 1000;
        }
    }

    class PolicySimplySave: NSObject, PolicyPremium {
        func calculatePremiumForPolicyAmount(amount: Int) -> Int {
            return amount * 10 / 1000;// This is just for understanding
        }
    }

All these classes conform to PolicyPremium protocol, and implements method : func calculatePremiumForPolicyAmount(amount: Int) -> Int
For better understanding I have taken only one method, it may have more than one methods also.

Now suppose, there is a consumer who use policies like InsuranceHolder

class InsuranceHolder: NSObject {
    
    var policyType: PolicyPremium?
    var name: String?

    func calculatePremiumForAmount(amount: Int) -> Int {
        
        if let _ = policyType {
            return policyType!.calculatePremiumForPolicyAmount(amount);
        }
        else {
            NSException(name: "Blank Policy Exception", reason: "Please specify a Insurance Policy first", userInfo: [:]).raise()
            return 0;
        }
    }
}

Notice one thing here, we are maknig instance of PolicyPremium protocol, not any of classes that conform this protocol.

Let's see the code to use this behaviour, currently I have put it in ViewController:

    func demonstrateStrategy() {
        
        let insurancePolicyHolder = InsuranceHolder()
        insurancePolicyHolder.policyType = PolicyJeevanAnand()
        let premiumOne = insurancePolicyHolder.calculatePremiumForAmount(10000)
        print("JeevanAnand Policy premium is:\(premiumOne)")
        
        insurancePolicyHolder.policyType = PolicySimplySave()
        let premiumTwo = insurancePolicyHolder.calculatePremiumForAmount(10000)
        print("Simply save Policy premium is:\(premiumTwo)")
    }
    
    Output of this code will be:
    JeevanAnand Policy premium is:80
    Simply save Policy premium is:100
    
  Nothing awesome till now, but now comes the advantage of using this pattern. 
  Suppose new developer started working on it, and he/she has to add one more Insurance policy to the existing code without touching your functionality. Suppose he need to add PolicyXyz, now he just need to do:
  1. Create one more class PolicyXyz.
  2. PolicyXyz must conform to protocol PolicyPremium.
  3. Implement the methods of PolicyPremium protocol, eg. func calculatePremiumForAmount(amount: Int) -> Int
  4. Write your own logic in this method for calculating premium and return the value.
  5. Now while using set policyType to new policy ie. PolicyXyz.
  
    class PolicyXyz: NSObject, PolicyPremium {
        func calculatePremiumForPolicyAmount(amount: Int) -> Int {
            return amount * 6 / 1000;
        }
    }
  
  And In your ViewController use it like: 
  
    insurancePolicyHolder.policyType = PolicyXyz()
    let premiumThree = insurancePolicyHolder.calculatePremiumForAmount(10000)
    print("Policy xyz premium is:\(premiumThree)")
  
    Now your combined output will be:
    JeevanAnand Policy premium is:80
    Simply save Policy premium is:100
    Policy xyz premium is:60

  Now you have done it, without touching existing policies, PolicyHolder also. You may have notice that on run time I am just changing the policyType for the same policyHolder and it's behaviour changes dynamically, it is a great example of Polymorphism.
  
  This code meant to demo Strategy Pattern with minimum code, you can do a lot of stuff using it.
  
  




