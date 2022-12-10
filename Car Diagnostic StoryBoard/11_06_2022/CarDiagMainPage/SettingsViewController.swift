//
//  SettingsViewController.swift
//  CarDiagMainPage
//
//  Created by Lily Baer on 12/5/22.
//

import SwiftUI
import UIKit

class SettingsViewController: UIViewController{
    @IBOutlet weak var LightMode: UIButton!
    @IBOutlet weak var DarkMode: UIButton!
    @IBOutlet weak var Terms: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func termsLink(_ sender: UIButton){
        if let url = URL(string: "https://github.com/mikemel21/GVSU-CIS350-RedSpark/blob/master/LICENSE"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func darkMode(_ sender: UIButton){
        overrideUserInterfaceStyle = .dark

    }
    
    @IBAction func lightMode(_ sender: UIButton){
        overrideUserInterfaceStyle = .light
    }
   
    
}
