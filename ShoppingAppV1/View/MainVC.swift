//
//  ViewController.swift
//  ShoppingAppV1
//
//  Created by Kyla Wilson on 6/18/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var shirt:Shirt!

    override func viewDidLoad() {
        super.viewDidLoad()
        shirt = Shirt();
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ShirtButtonPressed(sender: UIButton) {
        shirt.image = sender.imageView?.image;
        shirt.name = sender.titleLabel;
        
        performSegue(withIdentifier: "CustomizeVC", sender: self);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let customizeVC = segue.destination as? CustomizeVC {
            customizeVC.shirt = shirt;
        }
    }

}

