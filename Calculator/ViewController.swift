//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createViews()
        addConstraints()
    }
    
    var textLabel = UILabel()
    var button0 = UIButton()
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    var button5 = UIButton()
    var button6 = UIButton()
    var button7 = UIButton()
    var button8 = UIButton()
    var button9 = UIButton()
    var buttonReturn = UIButton()
    var buttonMultiply = UIButton()
    var buttonAdd = UIButton()
    var buttonDivide = UIButton()
    var buttonSubtract = UIButton()
    
    
    
    
    
    
    
    func createViews() {
        
        textLabel.backgroundColor = UIColor.blackColor()
        textLabel.text = "0"
        textLabel.textColor = UIColor.whiteColor()
        textLabel.textAlignment = NSTextAlignment.Right
        textLabel.font = UIFont.systemFontOfSize(60.0)
        view.addSubview(textLabel)
        
        button0.backgroundColor = UIColor.grayColor()
        button0.setTitle("0", forState: .Normal)
        view.addSubview(button0)
        
        button1.backgroundColor = UIColor.grayColor()
        button1.setTitle("1", forState: .Normal)
        view.addSubview(button1)
        
        button2.backgroundColor = UIColor.grayColor()
        button2.setTitle("2", forState: .Normal)
        view.addSubview(button2)

        button3.backgroundColor = UIColor.grayColor()
        button3.setTitle("3", forState: .Normal)
        view.addSubview(button3)

        button4.backgroundColor = UIColor.grayColor()
        button4.setTitle("4", forState: .Normal)
        view.addSubview(button4)

        button5.backgroundColor = UIColor.grayColor()
        button5.setTitle("5", forState: .Normal)
        view.addSubview(button5)

        button6.backgroundColor = UIColor.grayColor()
        button6.setTitle("6", forState: .Normal)
        view.addSubview(button6)
        
        button7.backgroundColor = UIColor.grayColor()
        button7.setTitle("7", forState: .Normal)
        view.addSubview(button7)
        
        button8.backgroundColor = UIColor.grayColor()
        button8.setTitle("8", forState: .Normal)
        view.addSubview(button8)
        
        button9.backgroundColor = UIColor.grayColor()
        button9.setTitle("9", forState: .Normal)
        view.addSubview(button9)

        buttonReturn.backgroundColor = UIColor.greenColor()
        buttonReturn.setTitle("⏎", forState: .Normal)
        view.addSubview(buttonReturn)

        buttonAdd.backgroundColor = UIColor.orangeColor()
        buttonAdd.setTitle("+", forState: .Normal)
        view.addSubview(buttonAdd)

        buttonSubtract.backgroundColor = UIColor.orangeColor()
        buttonSubtract.setTitle("-", forState: .Normal)
        view.addSubview(buttonSubtract)
        
        buttonMultiply.backgroundColor = UIColor.orangeColor()
        buttonMultiply.setTitle("x", forState: .Normal)
        view.addSubview(buttonMultiply)
        
        buttonDivide.backgroundColor = UIColor.orangeColor()
        buttonDivide.setTitle("/", forState: .Normal)
        view.addSubview(buttonDivide)

        
        
        

        
        
        
    }

    
    func addConstraints() {
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let leadingConstraint = NSLayoutConstraint(item: textLabel, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        view.addConstraint(leadingConstraint)
        
        let trailingConstraint = NSLayoutConstraint(item: textLabel, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        view.addConstraint(trailingConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: textLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 200.0)
        view.addConstraint(heightConstraint)

        
    
        let topButtons = [button7, button8, button9, buttonDivide]
        
        for button in topButtons {
        button.translatesAutoresizingMaskIntoConstraints = false
    
        
        let topConstraint = NSLayoutConstraint(item: button, attribute: .Top, relatedBy: .Equal, toItem: textLabel, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(topConstraint)
        }
        
        
        // let middleButtons = [button4, button5, button6, buttonMultiply]
        

        button4.translatesAutoresizingMaskIntoConstraints = false
    
        let button4topConstraint = NSLayoutConstraint(item: button4, attribute: .Top, relatedBy: .Equal, toItem: button7, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button4topConstraint)
    
        button5.translatesAutoresizingMaskIntoConstraints = false
        
        let button5topConstraint = NSLayoutConstraint(item: button5, attribute: .Top, relatedBy: .Equal, toItem: button8, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button5topConstraint)
        
        button6.translatesAutoresizingMaskIntoConstraints = false
        
        let button6topConstraint = NSLayoutConstraint(item: button6, attribute: .Top, relatedBy: .Equal, toItem: button9, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button6topConstraint)
        
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonMultiplytopConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Top, relatedBy: .Equal, toItem: buttonDivide, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonMultiplytopConstraint)
            
        
        
        

//        let topButtons = [button7, button8, button9, buttonDivide]
//        
//        for button in topButtons {
//            button.translatesAutoresizingMaskIntoConstraints = false
//            
//            
//            let topConstraint = NSLayoutConstraint(item: button, attribute: .Top, relatedBy: .Equal, toItem: textLabel, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
//            self.view.addConstraint(topConstraint)
//        }
//
//        
//        let topButtons = [button7, button8, button9, buttonDivide]
//        
//        for button in topButtons {
//            button.translatesAutoresizingMaskIntoConstraints = false
//            
//            
//            let topConstraint = NSLayoutConstraint(item: button, attribute: .Top, relatedBy: .Equal, toItem: textLabel, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
//            self.view.addConstraint(topConstraint)
//        }

        
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}