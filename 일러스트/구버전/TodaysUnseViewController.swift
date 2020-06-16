//
//  Todaysunse.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class TodaysUnseViewController : UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var ContentView: UIView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    var unse = [[String:String]]()
    
    var Zodiac:[String] = ["쥐띠","소띠","호랑이띠","토끼띠","용띠","뱀띠","말띠","양띠","원숭이띠","닭띠","개띠","돼지띠"]
    var ZodiacImage = ["t_1.png","t_2.png","t_3.png","t_4.png","t_5.png","t_6.png","t_7.png","t_8.png","t_9.png","t_10.png","t_11.png","t_12.png"]
    var unseToday:[String] = ["드물게 운이 좋은 하루입니다. 하는 일도 순조롭고 모처럼 풍족한 여유도 누리게 됩니다. 당신의 주위에 사람들이 많이 모여드는 하루가 되겠습니다.","좋은 사람을 얻게 될 운수입니다. 두 사람 모두 삶의 또 다른 출발선에서 마주치는 상황일 것입니다. 지금 당장은 서로에게 큰 힘이 되어 주지 못하겠지요.","남달리 큰 포부를 갖게 되는 때입니다. 그러나 기회는 준비 없이는 오지 않는 법이지요. 뜻을 이루기 위해서는 더 세심한 준비와 무르익은 시기를 기다릴 필요가 있습니다.","곤란을 겪는 가운데서도 희망의 빛을 발견할 수 있는 운입니다. 당신의 뜻하는 바의 일을 추진하다 보면 다소 어려움에 부딪히기도 하는 하루가 될 것입니다.","다소 곤란한 상황이 예상되는 하루입니다. 추진하는 일에 들었던 행운의 여신이 잠시 모습을 감추었습니다. 때로 당혹스럽고 견디기 힘들겠군요.","당신의 뜻을 마음껏 펼쳐 다양한 시도를 해볼 수 있는 드문 기회가 될 것입니다. 이제까지 준비해 왔던 일이나 계획한 바가 있다면 이 기회에 과감히 도전해 보십시오.","시련은 혼자 오지 않는다고 합니다. 유난히 엎친 데 덮친 격으로 어려움이 끊이질 않습니다. 가도 가도 끝이 없는 망망대해를 건너는 심정일 수도 있습니다.","평소에 다른 사람에 대한 세심한 배려로 인해 많은 사람으로부터 호감을 받고 있습니다. 그것이 오늘, 당신에게 큰 도움이 되겠군요.","인생은 '공수래공수거'라는 말이 있습니다. 손해를 볼 수도, 때로는 이득을 얻을 수도 있겠지요. 얻은 만큼 잃게 된다는 말도 있습니다.","뜻하지 않게 어려움에 처하는 상황이 예상되는 하루입니다. 미리 준비가 되어 있는 상태가 아니므로 순발력 있게 적절한 대처 방안을 마련하기가 쉽지 않을 것입니다.","눈앞의 안개가 시야를 가리는 형국이지만 어쩔 수 없이 밀고 나아가야 할 처지입니다. 자잘한 근심으로 분주한 하루가 예상됩니다.","많은 사람들의 당신에 대한 기대가 큽니다. 그러나 부담스러움에 지레 주눅 들지 말고 대담하게 앞장서서 일을 추진하십시오.","매우 안온한 하루가 예상됩니다. 아직 결정적인 시기를 만나지는 못했을 뿐, 달빛 아래 펼쳐진 풍요로운 들판처럼 잠재된 당신의 재능은 무한합니다.","큰 산의 정상에 떠오른 태양이 그 위세를 떨치는 형상입니다. 보기 드문 현자나 후덕한 인물을 만나 영향을 입게 되는 운수이군요.","무엇인가를 끊임없이 시도하려는 하루가 될 것입니다. 계획도 치밀하고 들인 공도 만만치 않습니다. 그러나 정작 당신 자신이 지나치게 소심하군요.","그 동안 공들여 이루어 놓은 많은 것을 허망하게 잃기 쉬운 운수입니다. 물질적인 것일 수도, 정신적·심리적인 것일 수도 있습니다.","큰 산에서 비를 만난 뒤에 맞는 화창한 오후의 형상입니다. 모든 것이 싱그럽게 되살아나는 기운이 온 천지에 진동하는 격이군요.","세상과 단절된 깊은 산 속에 있는 형상입니다. 누구에게도 방해 받지 않을 수 있으니 오랜만에 여유 있는 시간을 가질 수 있을 것입니다.","당신의 굳은 의지가 요구되는 하루입니다. 비록 눈에 띄는 발전을 기대할 수는 없을지라도 자신의 노력과 잠재된 능력에 대한 신뢰를 잃지 않으시기를 바랍니다.","당신이 노력하고 수고한 만큼 그에 상응하는 결과가 약속되는 하루입니다. 힘껏, 능력이 허락하는 대로 다양한 모든 일에 도전해 보십시오.","안타까운 하루입니다. 쌓아 온 실력도 든든하고 재능 면에서나 자신감 면에서나 누구 못치 않게 의욕도 왕성한데 당신을 알아주는 곳이 없군요.","명예와 신용이 빛나는 하루입니다. 승진, 영전 등 행운이 따르고 생기가 나는 날입니다. 조직 속에 있으면서 조직의 성격을 제대로 파악, 그 노선을 지키면서 활약하십시오.","운세가 점차 기우는 형국입니다. 그러나 궁즉통이라는 말처럼 궁하고 답답한 가운데서도 항상 통하는 길이나 벗어나는 방법은 있기 마련입니다.","걱정, 근심, 고통거리라고 생각했던 일들이 이제는 당신의 처지와 형편을 향상시킬 것입니다. 어떤 일이든 망설이지 마시고 도전하십시오.","끝없는 사막을 헤매는 형상입니다. 적잖은 어려움이 예상되는군요. 산 너머 산이라고, 도움을 구하려 해도 기대할 만한 곳이 없으니 쓸쓸함 마저 더합니다.","부단한 노력이 요구되는 하루가 예상됩니다. 다소 힘들겠지만 당신이 수고한 만큼 응분의 성과를 기대할 수 있으니 부딪히는 모든 일에 최선을 다하시기 바랍니다.","오늘의 운수는 산 위에 육중한 바위가 위태롭게 올라앉아 있는 형상입니다. 자칫 주의를 게을리 한다면 큰 해를 입게 될 수도 있습니다.","오늘 운세는 어려움 속에서 스스로를 확인해나가는 형국입니다. 앞에 놓인 난관이 부담스럽더라도 결코 굴하지 않고 나가는 정신력이 요구됩니다.","즐거운 일이 기대되는 하루는 아닙니다. 기분 상하는 일을 만난다거나 주변 환경의 제약으로 추진하고 있는 일이 순조롭게 진행되지 못할 수가 있습니다.","기적과도 같은 행운이 깃들어 있으니 뜻밖의 도움을 기대할 수 있는 하루입니다. 하는 일이 막막하고 희망이 보이지 않더라도 묵묵히 제 자리를 지켜나가시기 바랍니다.","지나치게 이익을 다투면 보기에 좋지 않은 일이 일어나기 마련이지요. 누구라도 맞대고 싸우기보다 적당히 양보할 수 있는 마음의 여유가 필요합니다.","당신의 몸과 마음이 쇠약해 질 우려가 있는 하루입니다. 무리하게 일을 추진하다 보면 항상 정신적, 체력적인 문제가 발생하기 마련이지요.","기운이 서로 생성하여 통하는 운수이니 막히는 것이 없습니다. 평소에 마음 먹었던 생각대로 일을 도모하고 추진하기에 좋은 하루입니다.","일의 진행이 어렵고 더딘 하루가 예상됩니다. 당신의 인내와 의지가 필요한 시간이 될 것입니다. 회피하거나 포기하지 말고 당당히 맞서 노력하시기 바랍니다.","당신이 노력하고 수고하는 만큼 그 대가를 충분히 기대할 수 있는 운수입니다. 당신에게 적극적인 활기를 요구하는 날이 될 것입니다.","돌발적으로 행동하기 쉬운 하루입니다. 이런 때일수록 자신도 모르게 들떠있는 마음을 가라앉히는 것이 급선무일 것입니다. 주변에 일도 많고 문제도 많을 것입니다."]
    
    @IBOutlet weak var unseTableView: UITableView!
    @IBOutlet weak var TodayString: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.layer.cornerRadius = 10.0
        backBtn.contentEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
        
        let date = Date()
        let calendar = Calendar.current
          
        let currentYear = calendar.component(.year, from: date)
        let currentMonth = calendar.component(.month, from: date)
        let currentDay = calendar.component(.day, from: date)
           
        let now=NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 MM월 dd일의 운세"
        TodayString.text=dateFormatter.string(from: now as Date)
        
        TodayString.clipsToBounds = true
        self.TodayString.layer.cornerRadius = 15.0
        
        var pseudoRandomNumber = (currentYear + currentMonth + currentDay + ViewController.mUser!.birthYear + ViewController.mUser!.birthMonth + ViewController.mUser!.birthDay)
        
        for index in 0...Zodiac.count - 1{
            pseudoRandomNumber = (pseudoRandomNumber + index) % Zodiac.count
            
            unse.append( ["unseToday":unseToday[pseudoRandomNumber ],"ZodiacName":Zodiac[index],"ZodiacImage":ZodiacImage[index]])
        }
        //Int(arc4random_uniform(UInt32(unseToday.count)))
        self.unseTableView.layer.cornerRadius = 20.0
        ContentView.layer.cornerRadius = 20.0
        unseTableView.delegate = self
        unseTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return unse.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UnseCellTableViewCell
               
            let unseCell = unse[indexPath.row]
        
            cell.UnseString.text = unseCell["unseToday"]
            cell.ZodiacName.text = unseCell["ZodiacName"]
            cell.ZodiacImageView.image = UIImage(named: unseCell["ZodiacImage"]!)
            cell.selectionStyle = .none
        
        
        
            return cell
    }
    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
