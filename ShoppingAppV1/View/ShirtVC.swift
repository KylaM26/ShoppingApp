//
//  ShirtVC.swift
//  ShoppingAppV1
//
//  Created by Kyla Wilson on 6/18/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import UIKit

class ShirtVC: UIViewController {

    var shirt: Shirt!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shirt = Shirt();
        // Next setup delegate
        print(shirt.color);
        // Do any additional setup after loading the view.
    }


}
