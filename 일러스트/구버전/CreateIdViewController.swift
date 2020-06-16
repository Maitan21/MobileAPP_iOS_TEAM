//
//  CreateIdViewController.swift
//  knuunse
//
//  Created by 성진용 on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class CreateIdViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var birthDate: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        userName.delegate = self
        contentView.layer.cornerRadius = 20.0
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        let year = Int( String(formatter.string(from: birthDate.date)))!
        formatter.dateFormat = "MM"
        let month = Int( String(formatter.string(from: birthDate.date)))!
        formatter.dateFormat = "dd"
        let day = Int( String(formatter.string(from: birthDate.date)))!
        ViewController.db.createTable()
        ViewController.db.insert(name: userName.text ?? "", year: year, month: month, day: day)
        
        self.dismiss(animated: true)
        

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
                self.view.endEditing(true)
          }
}
extension CreateIdViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
