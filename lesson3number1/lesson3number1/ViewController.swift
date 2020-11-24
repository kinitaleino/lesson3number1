//
//  ViewController.swift
//  lesson3number1
//
//  Created by kinitaleino on 11/23/20.
//  Copyright © 2020 kinitaleino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addPurpleView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var newViewTopAnchor: NSLayoutConstraint?
    
    func addPurpleView(){
        let newView = UIView()
        newView.backgroundColor = .purple
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
        newViewTopAnchor = newView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        newViewTopAnchor?.isActive = true
        
        newView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        newView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50).isActive = true
        newView.heightAnchor.constraint(equalToConstant:150).isActive = true
    }
    
    var isActive: Bool = true
    
    @IBAction func changeConstraint(_ sender:Any){
        isActive = !isActive
        if isActive{
            newViewTopAnchor?.constant = 200
        } else{
            newViewTopAnchor?.constant = 60
        }
    }
}

@IBDesignable class PrimaryButton:UIButton{
    @IBInspectable var cornerRadius: CGFloat{
        get{
            return self.layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable var borderWidth: CGFloat{
        get{
            return self.layer.borderWidth
        }
        set{
            layer.borderWidth = newValue
        }
    }
}
