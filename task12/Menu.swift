//
//  MainView.swift
//  test
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

class Menu: UIViewController {

    @IBOutlet var iceScream: UIImageView!
    @IBOutlet var muffin: UIImageView!
    @IBOutlet var coffee: UIImageView!
    @IBOutlet var cookies: UIImageView!
    @IBOutlet var birthdayCake: UIImageView!
    var list: productionList!
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.view.backgroundColor = UIColor.redColor()
        NSBundle.mainBundle().loadNibNamed("Menu", owner: self, options: nil)
        view.backgroundColor = UIColor(patternImage: UIImage(named: "back.jpg")!)

        let tap = UITapGestureRecognizer(target: self, action: "onTap:")
        self.view.addGestureRecognizer(tap)
        
    }
//    enum category{
//        case CATEGORY_BIRTHDAY,
//        CATEGORY_BREAD,
//        CATEGORY_DRINK,
//        CATEGORY_ICECREAM,
//        CATEGORY_COOKIES
//    }
    
    func onTap(sender:UITapGestureRecognizer){
        if(list == nil){
            list = productionList()
        }
        let point = sender.locationInView(self.view)

        if(CGRectContainsPoint(iceScream.bounds, self.iceScream.convertPoint(point, fromView: self.view)) ){
            list.cate = category.CATEGORY_DRINK
            
            
        }else if(CGRectContainsPoint(self.muffin.bounds, self.muffin.convertPoint(point, fromView: self.view)) ){
            list.cate = category.CATEGORY_BREAD
           
        }else if(CGRectContainsPoint(self.coffee.bounds, self.coffee.convertPoint(point, fromView: self.view)) ){
            list.cate = category.CATEGORY_DRINK
            
        }else if(CGRectContainsPoint(self.cookies.bounds, self.cookies.convertPoint(point, fromView: self.view)) ){
            list.cate = category.CATEGORY_COOKIES
        }else if(CGRectContainsPoint(self.birthdayCake.bounds, self.birthdayCake.convertPoint(point, fromView: self.view)) ){
            list.cate = category.CATEGORY_BIRTHDAY
           
        }
        
        self.navigationController?.pushViewController(list, animated: true)
    }

}

