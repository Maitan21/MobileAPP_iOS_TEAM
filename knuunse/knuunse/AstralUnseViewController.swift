//
//  Astralunse.swift
//  knuunse
//
//  Created by 성진용 on 2020/05/21.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class AstralUnseViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var dataList = [[String:String]]()
    var constell:[String] = ["capricorn", "aquarius", "aries", "cancer", "gemini", "leo", "libra", "pisces", "sagittarius", "scorpio", "taurus", "virgo"]
    var contents:[String] = ["가보고 싶다고 체크해두었던 와인 바가 있다면 오늘 같은 날 가라. 그동안 자주 가던 분식집 혹은 음식점보다는 분위기 있는 곳에서 사랑하는 사람과 조촐한 저녁식사를 하는 게 좋을 듯. 장소의 분위기에 취해 연인사이의 관계가 한 단계 더 발전할 수도 있겠다.", "오늘 당신의 스케줄은? 비었나? 오늘은 변신의 날로 삼자. 그 오래된 헤어스타일부터 청산해 버리자. 유행을 따를 거라면 처음부터 끝까지 확실하게 패션리더의 모습으로, 그게 아니라면 좀 평범하게.", "당신 연인의 말 들어서 손해 날 것 하나도 없는 날이다. 오늘은 당신 연인의 꼭두각시가 되어보자, 하라는 대로 다하고 연인의 물음에 원하는 대답해주고 당신의 연인도 즐겁겠지만 나름 당신에게도 재미있을 걸?!", "생각 없이 속 얘기가 술술 나오는 날이니 오늘은 당신의 입에 촘촘한 그물망을 설치해야 하는 날이다. 무턱대고 믿고 털어놓은 속 얘기가 소문이 날 수 있겠으니 아무에게나 속얘기를 털어놓지 말자. 상처받을 수 있다.", "당신의 선택에 따라 오늘 하루가 달라질 것이다. 선택이 중요한 날이니, 우물쭈물 하다 기회를 놓치지 말고 확실한 선택을 하여 행운을 잡아라! 앞뒤 상황 재고 결정하는 것 보다 순간적인 느낀, 당신의 감각대로 라면 실수하지 않고 좋은 선택을 할 수 있겠다.", "당신의 속을 끓어오르게 하는 크고 작은 일들이 생기는 날이다. 조금은 허술하게 넘어가주는 것이 오늘의 문제를 해결하는 포인트! 적당히 상대를 배려해주자. 사람과의 관계에 신경을 써야하는 날이다.", "오늘은 당신의 능력을 발휘하는 날~! 그러나 혼자서는 절대 할 수 없는 날이기도 하다. 주위 사람의 도움을 받으라.", "첫 단추의 구멍 언저리에서 맴돌고 있는 당신, 시작이 두려워 고민하고 있는 당신! 한 번 더 생각하는 것에서 머물지 말고 한발 더 움직이인다면 분명 하나 더 좋은 결실을 맺을 것이니 오늘 시작의 날로 정하자.", "욱!하고 뚜껑이 열릴 것 같은 일들이 종종 생길 수 있는 날이다. 참지 않으면 내 안에 있는 또다른 나를 만나게 될 수 있으니 자제하자. 순간의 기분대로 표현하는 것이 와전되어 뒤탈이 생길 수 있으니 최대한 상대방을 배려하는 것 같은 이미지를 보여주는 것이 좋다.", "70%는 좋고 30%는 별로다. 화끈하고 직선적인 일처리가 필요한 날이다. 내 주장을 확실히 표현하는게 여러모로 좋지만 몇몇 기분 나빠 하는 사람들도 있겠다. 하지만 대세는 내 편이니 별로 신경 쓰지 않아도 된다.", "논리적인 생각이 필요한 날이다. 당신의 합리적인 생각을 원하는 사람들이 많으니 오늘 똑소리 나는 당신의 주장을 펼쳐 보여주자.", "책, 노트, 영수증 등 문서와 관련된 것들은 다시 한 번 확인해야 하는 날이다. 중요한 메모를 잃어버린다거나, 문서위에 음료수를 쏟는다거나, 잘못 필기한다거나 여러 종류의 실수가 있을 수 있다.", "후배들에겐 항상 카리스마의 상징인 당신~! 오늘만은 부드러운 말투로 이야기 해보자. 후배들은 당신의 행동에 의아해 할지도 모르겠으나 후에 인맥을 유지하려면 별 수 없다.", "선배에 대한 지나친 친절은 당사자에게 거부감 생기는 아부로 느껴질 지도 모른다. 후배들에게는 튀는 행동으로 보일 수도 있고. 뭐든지 지나치면 모자란 것 보다 못한 법. 모자라서도 안 되겠지만 지나치지도 말자.", "오늘 당신의 걱정이 하나 줄었다. 친구 말만 믿고 빌려주었던 돈을 받을 수 있는 날이다. 하지만 도로 나갈 수 있으니 조심할 것. 돈 갚았다고 한 턱 내라고 말하는 친구들이 종종 있으니 말이다.", "고민하고 어려워할수록 작정하고 일이 꼬이는 날이다. 에라 모르겠다 하는 마음으로 가능한한 무식! 간단! 명료하게 생각하는 것이 차라리 낫겠다. 가볍게 단순하게 그리고 이왕이면 유쾌하게 행동하면 금상첨화.", "벌어진 문제들을 피하고 싶더라도 자신의 문제를 다른 사람에게 떠넘기지 말지어다! 지금 회피하면 다음에 문제가 생겼을 때 해결하지도 못하고 정작 도움을 받을 수 있는 사람들도 다 떠나보낼 수 있다.", "견고하던 사랑탑이 흔들흔들 하진 않나 확인이 필요한 날이다 요즘 유난히 남친, 여친의 심기가 불편한 것 같단 생각이 들진 않았는지? 오늘 허심탄회한 대화의 자리를 마련하자.", "오늘 면접을 보는 당신에게 한 마디~! 주어진 질문에 소신껏 대답하자. 데굴데굴 머리 굴리는 소리? 다 들린다. 당신의 생각이 맞을 수 있으니 자신 있고 확신 있는 언어로 상대를 제압하라.", "이성문제로 하루 일을 그르칠 수 있는 날! 아무리 이성에게 끌리는 것이 본능이라도, 사적인 감정 때문에 일을 그르치지 않도록 하자. 이성과의 문제로 하루 종일 마음쓰이겠으나 공과 사는 구별하는 것이 좋다.", "에너지가 넘치는 하루! 활동적으로 오늘을 즐기자. 약간의 들뜬 기분이 일의 능률을 올려준다. 작은 일에도 크게 웃을 일들이 생기니 오늘 하루 윤활유가 되겠다.", "크고 작은 고민거리들이 있을지라도 밝은 성격을 표현한다면 주위 사람들의 도움을 쉽게 받을 수 있는 날이다. 생각대로 일이 술술 풀리니 기분 좋은 날! 배움과 진학에 관련된 일이 있다면 오늘 좋은 소식이 들릴 수도 있겠다.", "마음을 넓게 열수록 당신에게 좋은 날이다. 나 자신보다는 남을 돕는 여유를 갖자. 금전적인 도움보다 행동으로 도울 수 있는 일이라면 더 좋다.", "오늘은 부모님의 말씀이 곧 법이다. 부모님의 말씀대로 하면 손해볼 것이 없느니. 하지만 전적으로 의지하는 것은 좋지 않다.", "당신의 유익한 생활을 위해 컴퓨터는 잠시 꺼두셔도 좋습니다. 컴퓨터 게임에 빠져있는 당신! 한 시간만 한 시간만 하다가 오늘 하루 다 간다.", "오늘은 좀 상상력을 발휘해보자. 평소 고지식했던 당신이라면, 이제 그만 조선시대에서 벗어나시죠? 당신이 융통성을 발휘하는 만큼 주변에 사람들이 늘어날 것이다. 당신에게 다가오지 못했던 사람들 모두 선비 같은 당신의 성격 때문.", "이해하고, 이해하고 일곱 번을 이해하는 것도 모자라다. 하는 일마다 암초에 걸리지 않는 것이 없으니 이해하는 수밖에. 그러나 오늘, 포기하면 후회한다. 오늘 좀 힘들어도 이해하고 넘어가자. ", "눈치, 코치, 재치. 3치 모두 필요한 날이다. 뭉근하고 신중한 생각보다는 순간적인 판단이 중요한 날이다. 목표달성의 여부는 순간의 기회를 얼마나 빨리, 정확하게 포착하느냐 하는 것!", "아침부터 오후까지 하루종일 해야 할 일들이 산더미같이 쌓여있지만 일처리 능력도 좋고, 나름 보람도 느끼겠다. 저녁시간, 당신의 애정운은 급상승! 데이트 하기 딱 좋은 날이다."]
    
    var name:[String] = ["염소자리", "물병자리",  "양자리", "게자리", "쌍둥이자리", "사자자리", "천칭자리", "물고기자리", "사수자리", "전갈자리", "황소자리", "처녀자리"]
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var AstralTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...name.count-1 {
            dataList.append( [ "name":name[index], "contents":contents[Int(arc4random_uniform(UInt32(contents.count)))], "constell":constell[index] ] )
        }
        
       backBtn.layer.cornerRadius = 10.0
        backBtn.contentEdgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
        
       self.AstralTableView.layer.cornerRadius = 20.0
        AstralTableView.delegate = self
        AstralTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        )
        
        let currentRowOfList = dataList[indexPath.row]
        let currentConstellInfo = currentRowOfList["constell"]
        
        cell.textLabel?.text = currentRowOfList["name"]
        
        cell.detailTextLabel?.text = currentRowOfList["contents"]
        
        
        
        switch currentConstellInfo! {
        case "capricorn":
            cell.imageView?.image = UIImage(named: "capricorn.jpg")
        case "aquarius":
            cell.imageView?.image = UIImage(named: "aquarius.jpg")
        case "aries":
            cell.imageView?.image = UIImage(named: "aries.jpg")
        case "cancer":
            cell.imageView?.image = UIImage(named: "cancer.jpg")
        case "gemini":
            cell.imageView?.image = UIImage(named: "gemini.jpg")
        case "leo":
            cell.imageView?.image = UIImage(named: "leo.jpg")
        case "libra":
            cell.imageView?.image = UIImage(named: "libra.jpg")
        case "pisces":
            cell.imageView?.image = UIImage(named: "pisces.jpg")
        case "sagittarius":
            cell.imageView?.image = UIImage(named: "sagittarius.jpg")
        case "scorpio":
            cell.imageView?.image = UIImage(named: "scorpio.jpg")
        case "taurus":
            cell.imageView?.image = UIImage(named: "taurus.jpg")
        case "virgo":
            cell.imageView?.image = UIImage(named: "virgo.jpg")
        default:
            print("No Match Image")
        }
         
        return cell
         
    }
    
    
    
    @IBAction func clickBtn(_ sender : Any)
    {
        tabBarController?.selectedIndex = 0
    }

}
