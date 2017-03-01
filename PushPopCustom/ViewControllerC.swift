//
//  ViewControllerC.swift
//  PushPopCustom
//
//  Created by hc_cyril on 2017/2/15.
//  Copyright © 2017年 Clark. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewControllerBackgroundColor()
        viewControllerTitle("C")
        customButton(title: "Pop To A")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushOrPop(sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
