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
        button0.layer.borderColor = UIColor.blackColor().CGColor
        button0.layer.borderWidth = 1.0
        view.addSubview(button0)
        
        button1.backgroundColor = UIColor.grayColor()
        button1.setTitle("1", forState: .Normal)
        button1.layer.borderColor = UIColor.blackColor().CGColor
        button1.layer.borderWidth = 1.0
        view.addSubview(button1)
        
        button2.backgroundColor = UIColor.grayColor()
        button2.setTitle("2", forState: .Normal)
        button2.layer.borderColor = UIColor.blackColor().CGColor
        button2.layer.borderWidth = 1.0
        view.addSubview(button2)

        button3.backgroundColor = UIColor.grayColor()
        button3.setTitle("3", forState: .Normal)
        button3.layer.borderColor = UIColor.blackColor().CGColor
        button3.layer.borderWidth = 1.0
        view.addSubview(button3)

        button4.backgroundColor = UIColor.grayColor()
        button4.setTitle("4", forState: .Normal)
        button4.layer.borderColor = UIColor.blackColor().CGColor
        button4.layer.borderWidth = 1.0
        view.addSubview(button4)

        button5.backgroundColor = UIColor.grayColor()
        button5.setTitle("5", forState: .Normal)
        button5.layer.borderColor = UIColor.blackColor().CGColor
        button5.layer.borderWidth = 1.0
        view.addSubview(button5)

        button6.backgroundColor = UIColor.grayColor()
        button6.setTitle("6", forState: .Normal)
        button6.layer.borderColor = UIColor.blackColor().CGColor
        button6.layer.borderWidth = 1.0
        view.addSubview(button6)
        
        button7.backgroundColor = UIColor.grayColor()
        button7.setTitle("7", forState: .Normal)
        button7.layer.borderColor = UIColor.blackColor().CGColor
        button7.layer.borderWidth = 1.0
        view.addSubview(button7)
        
        button8.backgroundColor = UIColor.grayColor()
        button8.setTitle("8", forState: .Normal)
        button8.layer.borderColor = UIColor.blackColor().CGColor
        button8.layer.borderWidth = 1.0
        view.addSubview(button8)
        
        button9.backgroundColor = UIColor.grayColor()
        button9.setTitle("9", forState: .Normal)
        button9.layer.borderColor = UIColor.blackColor().CGColor
        button9.layer.borderWidth = 1.0
        view.addSubview(button9)

        buttonReturn.backgroundColor = UIColor.greenColor()
        buttonReturn.setTitle("⏎", forState: .Normal)
        buttonReturn.layer.borderColor = UIColor.blackColor().CGColor
        buttonReturn.layer.borderWidth = 1.0
        view.addSubview(buttonReturn)

        buttonAdd.backgroundColor = UIColor.orangeColor()
        buttonAdd.setTitle("+", forState: .Normal)
        buttonAdd.layer.borderColor = UIColor.blackColor().CGColor
        buttonAdd.layer.borderWidth = 1.0
        view.addSubview(buttonAdd)

        buttonSubtract.backgroundColor = UIColor.orangeColor()
        buttonSubtract.setTitle("-", forState: .Normal)
        buttonSubtract.layer.borderColor = UIColor.blackColor().CGColor
        buttonSubtract.layer.borderWidth = 1.0
        view.addSubview(buttonSubtract)
        
        buttonMultiply.backgroundColor = UIColor.orangeColor()
        buttonMultiply.setTitle("x", forState: .Normal)
        buttonMultiply.layer.borderColor = UIColor.blackColor().CGColor
        buttonMultiply.layer.borderWidth = 1.0
        view.addSubview(buttonMultiply)
        
        buttonDivide.backgroundColor = UIColor.orangeColor()
        buttonDivide.setTitle("/", forState: .Normal)
        buttonDivide.layer.borderColor = UIColor.blackColor().CGColor
        buttonDivide.layer.borderWidth = 1.0
        view.addSubview(buttonDivide)
        
    }

    
    func addConstraints() {
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let leadingConstraint = NSLayoutConstraint(item: textLabel, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        view.addConstraint(leadingConstraint)
        
        let trailingConstraint = NSLayoutConstraint(item: textLabel, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        view.addConstraint(trailingConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: textLabel, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.28, constant: 0.0)
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
        
        //bottom buttons
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        let button1topConstraint = NSLayoutConstraint(item: button1, attribute: .Top, relatedBy: .Equal, toItem: button4, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button1topConstraint)
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        let button2topConstraint = NSLayoutConstraint(item: button2, attribute: .Top, relatedBy: .Equal, toItem: button5, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button2topConstraint)
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        let button3topConstraint = NSLayoutConstraint(item: button3, attribute: .Top, relatedBy: .Equal, toItem: button6, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button3topConstraint)
        
        buttonSubtract.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonSubtracttopConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Top, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonSubtracttopConstraint)
        
        
        //bottom bottom button
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        
        let button0topConstraint = NSLayoutConstraint(item: button0, attribute: .Top, relatedBy: .Equal, toItem: button1, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button0topConstraint)
        
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonReturntopConstraint = NSLayoutConstraint(item: buttonReturn, attribute: .Top, relatedBy: .Equal, toItem: button3, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonReturntopConstraint)
        
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonAddtopConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Top, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonAddtopConstraint)
        
        
        
        let allButtons = [button0, button1,button2,button3,button4, button5, button6,button7,button8,button9,buttonAdd, buttonMultiply,buttonSubtract,buttonDivide,buttonReturn]
        
        for i in allButtons{
            let heightConstraint = NSLayoutConstraint(item: i, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.18, constant: 0.0)
            self.view.addConstraint(heightConstraint)
            
        }
        
        let allButtonsNotZero = [ button1,button2,button3,button4, button5, button6,button7,button8,button9,buttonAdd, buttonMultiply,buttonSubtract,buttonDivide,buttonReturn]

        for i in allButtonsNotZero {
            let widthConstraint = NSLayoutConstraint(item: i, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
            self.view.addConstraint(widthConstraint)
            
        }
        
        
        let button0widthConstraint = NSLayoutConstraint(item: button0, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.5, constant: 0)
        self.view.addConstraint(button0widthConstraint)
        
        
        
        
        
        
        /// Leading constraints
        
        
        // let middleButtons = [button4, button5, button6, buttonMultiply]
        
       
        
        let button7leadingConstraint = NSLayoutConstraint(item: button7, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button7leadingConstraint)
        
        
        let button8leadingConstraint = NSLayoutConstraint(item: button8, attribute: .Leading, relatedBy: .Equal, toItem: button7, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button8leadingConstraint)
        
        
        let button9leadingConstraint = NSLayoutConstraint(item: button9, attribute: .Leading, relatedBy: .Equal, toItem: button8, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button9leadingConstraint)


        let buttonDivideLeadingConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Leading, relatedBy: .Equal, toItem: button9, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonDivideLeadingConstraint)
        
        
        let button4LeadingConstraint = NSLayoutConstraint(item: button4, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button4LeadingConstraint)

        
        let button5LeadingConstraint = NSLayoutConstraint(item: button5, attribute: .Leading, relatedBy: .Equal, toItem: button4, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button5LeadingConstraint)
        
        
        let button6LeadingConstraint = NSLayoutConstraint(item: button6, attribute: .Leading, relatedBy: .Equal, toItem: button5, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button6LeadingConstraint)
        
        
        let buttonMultiplyLeadingConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Leading, relatedBy: .Equal, toItem: button6, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonMultiplyLeadingConstraint)
        
        //bottom buttons
        
        let button1LeadingConstraint = NSLayoutConstraint(item: button1, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button1LeadingConstraint)
        
        
        let button2LeadingConstraint = NSLayoutConstraint(item: button2, attribute: .Leading, relatedBy: .Equal, toItem: button1, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button2LeadingConstraint)
        
        
        let button3LeadingConstraint = NSLayoutConstraint(item: button3, attribute: .Leading, relatedBy: .Equal, toItem: button2, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button3LeadingConstraint)
        
        
        let buttonSubtractLeadingConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Leading, relatedBy: .Equal, toItem: button3, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonSubtractLeadingConstraint)
        
        
        //bottom bottom button
        
        
        let button0LeadingConstraint = NSLayoutConstraint(item: button0, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(button0LeadingConstraint)
        
        
        let buttonReturnLeadingConstraint = NSLayoutConstraint(item: buttonReturn, attribute: .Leading, relatedBy: .Equal, toItem: button0, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonReturnLeadingConstraint)
        
        
        let buttonAddLeadingConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Leading, relatedBy: .Equal, toItem: buttonReturn, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(buttonAddLeadingConstraint)
        
        
        
        
        
        
    }

}