//
//  MainViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Abdelaziz Reda on 13/11/2023.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ToSettings(_ sender: Any) {
        ToSettings()
    }
    
    //SwiftUI Screen
    func ToSettings(){
         let hostingController = UIHostingController(rootView: SettingView())
        present(hostingController , animated: true)

    }

}
