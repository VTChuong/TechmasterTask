//
//  AboutUs.swift
//  task12
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

class AboutUs: UIViewController {

    @IBOutlet var about: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        NSBundle.mainBundle().loadNibNamed("AboutUs", owner: self, options: nil)
        NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: "update", userInfo: nil, repeats: true)
    }

    func update(){
        var scrollPoint: CGPoint = self.about.contentOffset;
        scrollPoint = CGPointMake(scrollPoint.x, scrollPoint.y + 1);
        self.about.setContentOffset(scrollPoint, animated: true)
    }

}
