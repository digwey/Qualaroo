//
//  ViewController.swift
//  Qualaroo
//
//  Created by Mohamed Digwey on 8/10/16.
//  Copyright © 2016 Mohamed Digwey. All rights reserved.
//

import UIKit
import QualarooMobileSDK

class ViewController: UIViewController {
    
    lazy var qualaroo: QualarooMobile? = {
        do {
            return try QualarooMobile(APIKey: "164186")
        } catch {
            print("Error instantiating QualarooMobile: \(error)")
            return nil
        }
    }()
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        qualaroo?.attachToViewController(self)
       // qualaroo?.showSurvey(164186)

        
    }

 
}

