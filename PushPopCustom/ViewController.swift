//
//  ViewController.swift
//  PushPopCustom
//
//  Created by hc_cyril on 2017/2/15.
//  Copyright © 2017年 Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewControllerBackgroundColor()
        viewControllerTitle("A")
        customButton(title: "Push To B")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushOrPop(sender: Any) {
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }


}

