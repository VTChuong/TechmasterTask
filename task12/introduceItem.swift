//
//  introduceItem.swift
//  task12
//
//  Created by Thien Chuong on 11/13/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

class introduceItem: UIViewController {

    @IBOutlet var img: UIImageView!
    @IBOutlet var introduction: UITextView!
    var imgData:UIImage?
    var txtData:String?
    var a = "1"
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brownColor()
        
    }
    override func loadView() {
        NSBundle.mainBundle().loadNibNamed("introduceItem", owner: self, options: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        introduction.text = txtData
        img.image = imgData

    }
    @IBAction func Order(sender: UIButton) {
//        UIAlertView *buy = [[UIAlertView alloc] initWithTitle:@"Confirm" message:@"Bạn chắc chắn muốn mua loại bánh này?" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
//        [buy show];
//
//        var  order:UIAlertView = UIAlertView(title: "Mua hang", message: "Ban mua san pham nay?", delegate: self, cancelButtonTitle: "Khong", otherButtonTitles: "Mua", nil)
//
       
        var order = UIAlertView(title: "mua hang", message: "Mua khong?", delegate: nil, cancelButtonTitle: "No", otherButtonTitles: "Yes")
        order.show()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
