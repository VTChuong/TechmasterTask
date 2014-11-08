//
//  WebView.swift
//  TechmasterSwiftApp
//
//  Created by Thien Chuong on 11/8/14.
//  Copyright (c) 2014 Adam. All rights reserved.
//

import UIKit

class WebView: UIViewController {
 
    var wv1: UIWebView!
    var wv2: UIWebView!
    var wv3: UIWebView!
    var wv4: UIWebView!

    var c1:[AnyObject]?
    var c2:[AnyObject]?
    var c3:[AnyObject]?
    var c4:[AnyObject]?
    var co1: NSLayoutConstraint?
    var co2: NSLayoutConstraint?
    var co3: NSLayoutConstraint?
    var co4: NSLayoutConstraint?
    var co5: NSLayoutConstraint?
    var co6: NSLayoutConstraint?
    
    
    var c_1:[AnyObject]?
    var c_2:[AnyObject]?
    var c_3:[AnyObject]?
    var co_1: NSLayoutConstraint?
    var co_2: NSLayoutConstraint!
    
    var isPhone:Bool = true

    override func loadView() {
        super.loadView()
        self.edgesForExtendedLayout = UIRectEdge.None
        let html = "<html><head></head><body><img src = 'http://www.w3schools.com/html/pic_mountain.jpg' style='width:154px;height:120px; padding-right: 10px' align='left'><p>1. You agree that you will be the technician servicing this work order?.<br>2. You are comfortable with the scope of work on this work order?.</p></body></html>"

        wv1 = UIWebView()
        wv1!.loadHTMLString(html, baseURL: nil)
        wv1!.backgroundColor = UIColor.blueColor()
        self.view.addSubview(wv1!)
        wv1!.setTranslatesAutoresizingMaskIntoConstraints(false)
        wv2 = UIWebView()
        wv2!.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(wv2!)
        wv2!.setTranslatesAutoresizingMaskIntoConstraints(false)
        wv2!.loadHTMLString(html, baseURL: nil)
        
        var a = UIDevice.currentDevice().model
        
        
        if(a.rangeOfString("iPhone", options: nil, range: nil, locale: nil) == nil){
            isPhone = false
        }else{
            isPhone = true
        }
        if (isPhone){
            portraitConstraint()
            landscapeConstraint()
            toggleConstraint(true)
        }else{
            wv3 = UIWebView()
            wv3!.loadHTMLString(html, baseURL: nil)
            wv3!.backgroundColor = UIColor.redColor()
            self.view.addSubview(wv3!)
            wv3!.setTranslatesAutoresizingMaskIntoConstraints(false)
            
            wv4 = UIWebView()
            wv4!.backgroundColor = UIColor.blackColor()
            self.view.addSubview(wv4!)
            wv4!.setTranslatesAutoresizingMaskIntoConstraints(false)
            wv4!.loadHTMLString(html, baseURL: nil)
            layoutForIpad()
        }
        
    }
    func layoutForIpad(){
        println("iPad nha")
        let views = ["view": self.view, "wv1": wv1!, "wv2": wv2!, "wv3": wv3!, "wv4": wv4!]
        c1 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[wv1]-10.0-[wv2]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c1!)
        c2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[wv3]-10.0-[wv4]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c2!)
        c3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[wv1]-10.0-[wv3]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c3!)
        c4 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[wv2]-10.0-[wv4]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c4!)
        
        co1 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        self.view.addConstraint(co1!)
        co2 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Width, multiplier: 2, constant: 0)
        self.view.addConstraint(co2!)
        co3 = NSLayoutConstraint(item: wv3!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        self.view.addConstraint(co1!)
        co4 = NSLayoutConstraint(item: wv3!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        self.view.addConstraint(co2!)
        co5 = NSLayoutConstraint(item: wv4!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        self.view.addConstraint(co1!)
        co6 = NSLayoutConstraint(item: wv4!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        self.view.addConstraint(co2!)

        NSLayoutConstraint.activateConstraints(c1!)
        NSLayoutConstraint.activateConstraints(c2!)
        NSLayoutConstraint.activateConstraints(c3!)
        NSLayoutConstraint.activateConstraints(c4!)
        co1!.active = true
        co2!.active = true
        co3!.active = true
        co4!.active = true
        co5!.active = true
        co6!.active = true

    }
    func portraitConstraint() {
        let views = ["view": self.view, "wv1": wv1!, "wv2": wv2!]
        //Vertical space:
        c1 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[wv1]-10.0-[wv2]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c1!)
        
        c2 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[wv1]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c2!)
        
        c3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[wv2]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c3!)
        
        co1 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        
        self.view.addConstraint(co1!)
        
        co2 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        self.view.addConstraint(co2!)
    }
    func landscapeConstraint() {
        let views = ["view": self.view, "wv1": wv1!, "wv2": wv2!]
        //Horizonal space:
        c_1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[wv1]-10.0-[wv2]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_1!)
        
        c_2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[wv1]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_2!)
        
        c_3 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[wv2]-8-|", options: nil, metrics: nil, views: views)
        self.view.addConstraints(c_3!)
        
        
        co_1 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        
        self.view.addConstraint(co_1!)
        
        co_2 = NSLayoutConstraint(item: wv2!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: wv1!, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        self.view.addConstraint(co_2!)
    }
    func toggleConstraint(portrait: Bool) {
        if portrait {
            //Always deactivate constraint first
            NSLayoutConstraint.deactivateConstraints(c_1!)
            NSLayoutConstraint.deactivateConstraints(c_2!)
            NSLayoutConstraint.deactivateConstraints(c_3!)
            
            co_1!.active = false
            co_2!.active = false
            
            //Then activate later
            NSLayoutConstraint.activateConstraints(c1!)
            NSLayoutConstraint.activateConstraints(c2!)
            NSLayoutConstraint.activateConstraints(c3!)
            
            co1!.active = true
            co2!.active = true
            
            
        } else {
            NSLayoutConstraint.deactivateConstraints(c1!)
            NSLayoutConstraint.deactivateConstraints(c2!)
            NSLayoutConstraint.deactivateConstraints(c3!)
            
            co1!.active = false
            co2!.active = false
            
            
            NSLayoutConstraint.activateConstraints(c_1!)
            NSLayoutConstraint.activateConstraints(c_2!)
            NSLayoutConstraint.activateConstraints(c_3!)
            
            co_1!.active = true
            co_2!.active = true
        }
    }
    
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        let size = self.view.bounds.size
        if isPhone{
            if size.width < size.height { //portrait
                toggleConstraint(true)
            } else {
                toggleConstraint(false)
            }

        }else{
            
        }
                
    }
    
    
}
