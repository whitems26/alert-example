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
        
        
        alert.addAction(cancelBtn)
        
        self.present(alert, animated: true, completion: {() -> Void in
        print("Show action sheet")})
        
    }
    
    @IBAction func showAlert(_ sender: Any) {
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

