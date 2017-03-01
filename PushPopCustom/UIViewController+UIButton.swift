//
//  UIViewController+UIButton.swift
//  PushPopCustom
//
//  Created by hc_cyril on 2017/2/15.
//  Copyright © 2017年 Clark. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
    func customButton(title: String) {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: (self.view.frame.size.width - 100) / 2, y: (self.view.frame.size.height - 100) / 2, width: 100, height: 100)
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: #selector(pushOrPop(sender:)), for: UIControlEvents.touchUpInside)
        button.backgroundColor =  buttonColor()
        self.view.addSubview(button)
    }
    func pushOrPop(sender: Any) {
        print("push or pop button did clicked")
    }
    func buttonColor() -> UIColor {
        return UIColor.init(red: 233/255.0, green: 217/255.0, blue: 153/255.0, alpha: 1.0)
    }
    func viewControllerBackgroundColor() {
        self.view.backgroundColor = UIColor.init(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1.0)
    }
    func viewControllerTitle(_ title: String) {
        self.title = title
    }
}
