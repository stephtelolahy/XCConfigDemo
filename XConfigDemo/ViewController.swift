//
//  ViewController.swift
//  XConfigDemo
//
//  Created by Hugues Stéphano TELOLAHY on 1/21/18.
//  Copyright © 2018 Hugues Stéphano TELOLAHY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let configs = Bundle.main.infoDictionary,
            let useDebugControls = configs["USE_DEBUG_CONTROLS"] as? String,
            let fabricKey = configs["FABRIC_API_KEY"] as? String,
            let server = configs["SERVER_NAME"] as? String else {
                return
        }
        
        infoLabel.text = """
        \nUse Debug controls: \(useDebugControls)
        \nFabric API key: \(fabricKey)
        \nServer name: \(server)
        """
    }
    
}

