//
//  ViewController.swift
//  XConfigDemo
//
//  Created by Hugues Stéphano TELOLAHY on 1/21/18.
//  Copyright © 2018 Hugues Stéphano TELOLAHY. All rights reserved.
//

import UIKit

class Constants {
    
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let useDebugControls = info(forKey: "USE_DEBUG_CONTROLS"),
            let serverUrl = info(forKey: "SERVER_URL") else {
                return
        }
        infoLabel.text = """
        Use Debug controls: \(useDebugControls)
        Server: \(serverUrl)
        """
    }
    
    func info(forKey key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }
    
}

