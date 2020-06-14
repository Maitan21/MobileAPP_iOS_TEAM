//
//  Todaysunse.swift
//  knuunse
//
//  Created by 신재원 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class TodaysUnseViewController : UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var ContentView: UIView!
    
    /*띠, 띠별 사진, 운세 내용(Zodiac, ZodiacImage, unseToday)를 테이블뷰에 연결*/
    @IBOutlet weak var unseTableView: UITableView!
    @IBOutlet weak var TodayString: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        /*라벨에 오늘 날짜를 띄욱 위한 변수*/
        let now=NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 MM월 dd일의 운세"
        TodayString.text=dateFormatter.string(from: now as Date)
        /*오늘의 날짜르 보여주는 라벨의 굴곡 설정*/
        TodayString.clipsToBounds = true
        self.TodayString.layer.cornerRadius = 15.0
        /*수도랜덤 공식을 사용하기 위해 변수에 오늘 연월일과 개인 생년월일을 시드값으로 다 넣어줌*/
        
        self.unseTableView.layer.cornerRadius = 20.0
        ContentView.layer.cornerRadius = 20.0
        unseTableView.delegate = self
        unseTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.unse.todayUnse.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UnseCellTableViewCell
               /*셀을 추가*/
            let unseCell = ViewController.unse.todayUnse[indexPath.row]
        
            cell.UnseString.text = unseCell["zodiacString"]
            cell.ZodiacName.text = unseCell["zodiacName"]
            cell.ZodiacImageView.image = UIImage(named: unseCell["zodiacImage"]!)
            cell.selectionStyle = .none
        
            return cell
    }
    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
