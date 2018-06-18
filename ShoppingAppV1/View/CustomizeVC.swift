//
//  CustomizeVC.swift
//  ShoppingAppV1
//
//  Created by Kyla Wilson on 6/18/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import UIKit

class CustomizeVC: UIViewController {

    var shirt: Shirt!;
    var delegate: ShirtInfo? = self as? ShirtInfo;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(shirt.name!);
    }
    
    @IBAction func ColorButtonPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.PassShirtInfo(shirtColor: sender.backgroundColor!, shirtName: shirt.name!);
        }
        performSegue(withIdentifier: "ShirtVC", sender: self);
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let shirtVC = segue.destination as? ShirtVC {
            shirtVC.shirt = shirt;
        }
    }
}
