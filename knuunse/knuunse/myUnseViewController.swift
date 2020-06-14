//
//  myUnseViewController.swift
//  knuunse
//
//  Created by 박형석 on 2020/06/12.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class myUnseViewController: UIViewController {
    
    @IBOutlet weak var myUnseImageView: UIImageView!
    @IBOutlet weak var myUnseContentView: UITextView!
    @IBOutlet weak var myUnseSubContentView: UITextView!
    
    var constellations = [Constellation(startDate: "3/21", stopDate: "4/19"),
         Constellation(startDate: "04/20", stopDate: "05/20"),
         Constellation(startDate: "05/21", stopDate: "06/20"),
         Constellation(startDate: "06/21", stopDate: "07/22"),
         Constellation(startDate: "07/23", stopDate: "08/22"),
         Constellation(startDate: "08/23", stopDate: "09/22"),
         Constellation(startDate: "09/23", stopDate: "10/22"),
         Constellation(startDate: "10/23", stopDate: "11/21"),
         Constellation(startDate: "11/22", stopDate: "12/21"),
         Constellation(startDate: "12/22", stopDate: "01/19"),
         Constellation(startDate: "01/20", stopDate: "02/18"),
       Constellation(startDate: "02/19", stopDate: "03/20")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calendar = Calendar.current
        let dateComponents = DateComponents(calendar: calendar, year: (ViewController.mUser!.birthYear), month: (ViewController.mUser!.birthMonth), day: (ViewController.mUser!.birthDay))
           

        for (index , constellation) in constellations.enumerated() {
           if constellation.checkInterval(dateComponent: dateComponents) {
            let data = ViewController.unse.astralUnse[index]
                myUnseImageView.image = UIImage(named: data["astralImage"]!)
                myUnseSubContentView.text = data["astralName"]
                myUnseContentView.text = data["astralString"]
                break
           }
        }
    }
}


class Constellation {
    var startDate: String
    var stopDate: String
    
    init(startDate: String, stopDate: String) {

        self.startDate = startDate
        self.stopDate = stopDate
    }
    
    func checkInterval(dateComponent: DateComponents) -> Bool {
        if let date = dateComponent.date, let year = dateComponent.year {
            
            let start = "\(year)/\(self.startDate)"
            let end = "\(year)/\(self.stopDate)"
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yy/MM/dd"
            
            if startDate > stopDate {
                if let start1 = dateFormatter.date(from: start), let end1 = dateFormatter.date(from: "\(year)/12/31"), let start2 = dateFormatter.date(from: "\(year)/01/01"), let end2 = dateFormatter.date(from: end){
                    return DateInterval(start: start1, end: end1).contains(date) || DateInterval(start: start2, end: end2).contains(date)
                }
            } else {
                if let start = dateFormatter.date(from: start), let end = dateFormatter.date(from: end) {
                    return DateInterval(start: start, end: end).contains(date)
                }
            }
        }
        return false
    }
}

