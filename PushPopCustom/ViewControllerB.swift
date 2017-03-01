//
//  ViewControllerB.swift
//  PushPopCustom
//
//  Created by hc_cyril on 2017/2/15.
//  Copyright © 2017年 Clark. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewControllerBackgroundColor()
        viewControllerTitle("B")
        customButton(title: "Push To D")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func pushOrPop(sender: Any) {
        self.navigationController?.pushViewController(ViewControllerD(), animated: true)
        var tempArray = self.navigationController?.viewControllers
        tempArray?.insert(ViewControllerC(), at: 1)
        tempArray?.remove(at: 2)
        self.navigationController?.setViewControllers(tempArray!, animated: true)
    }

}
