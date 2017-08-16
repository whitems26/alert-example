//
//  ViewController.swift
//  AlertExample
//
//  Created by ktds 19 on 2017. 8. 16..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openActionSheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Notice",
                                      message: "Message", preferredStyle: .actionSheet)
        
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: {(UIAlertAction) ->Void in
            print("on Cancel!!!")})
        
        
        let facebookBtn = UIAlertAction(title: "FaceBook", style: .default){
            (UIAlertAction) -> Void in
            print("FaceBook")
        }
        
        let twitterBtn = UIAlertAction(title: "Twitter", style: .default, handler: {
            (UIAlertAction) -> Void in
            print("Twitter")
        })
        
        alert.addAction(cancelBtn)
        alert.addAction(facebookBtn)
        alert.addAction(twitterBtn)
        
        self.present(alert, animated: true, completion: {() -> Void in
        print("Show action sheet")})
        
    }
    
    @IBAction func showAlert(_ sender: Any) {
        
        let loginAlert = UIAlertController(title: "Log In", message: "Input your ID and Password", preferredStyle: .alert)
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "ID"
        })
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        })
        
        loginAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            
        loginAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
                alertAction in
                
                let id = loginAlert.textFields?[0].text
                let pw = loginAlert.textFields?[1].text
                
                if id == "test" && pw == "1234"{
                    print("Success")
                }
                else{
                    print("Fail")
                }
            }))
            
        self.present(loginAlert, animated: true, completion: {
            print("show Alert ")
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

