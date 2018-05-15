//
//  ViewController.swift
//  Dynamic
//
//  Created by dong on 15/5/2018.
//  Copyright © 2018 dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeIcon(_ sender: UIButton) {
        if sender.tag == 0 {
            changeIcon(to: "pichu")
        }
        else if sender.tag == 1 {
            changeIcon(to: "pikachu")
        }
        else if sender.tag == 2 {
            changeIcon(to: "raichu")
        }
    }
    
    func changeIcon(to iconName: String) {
        guard UIApplication.shared.supportsAlternateIcons else {
            print("not support")
            return
        }
        
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
            if let error = error {
                print("App icon failed to change due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        })
    }
}

