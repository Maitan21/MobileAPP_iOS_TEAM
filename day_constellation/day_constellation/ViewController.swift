//
//  ViewController.swift
//  day_constellation
//
//  Created by 박형석 on 2020/06/07.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var constellImage: UIImageView!
    
    @IBOutlet weak var constellContents: UITextView!
    
    var constellations = [Constellation(name: "Aries", image: UIImage(named: "aries.jpg"), startDate: "3/21", stopDate: "4/19"),
                          Constellation(name: "Taurus", image: UIImage(named: "taurus.jpg"), startDate: "04/20", stopDate: "05/20"),
                          Constellation(name: "Gemini", image: UIImage(named: "gemini.jpg"), startDate: "05/21", stopDate: "06/20"),
                          Constellation(name: "Cancer", image: UIImage(named: "cancer.jpg"), startDate: "06/21", stopDate: "07/22"),
                          Constellation(name: "Leo", image: UIImage(named: "leo.jpg"), startDate: "07/23", stopDate: "08/22"),
                          Constellation(name: "Virgo", image: UIImage(named: "virgo.jpg"), startDate: "08/23", stopDate: "09/22"),
                          Constellation(name: "Libra", image: UIImage(named: "libra.jpg"), startDate: "09/23", stopDate: "10/22"),
                          Constellation(name: "Scorpio", image: UIImage(named: "scorpio.jpg"), startDate: "10/23", stopDate: "11/21"),
                          Constellation(name: "Sagittarius", image: UIImage(named: "sagittarius.jpg"), startDate: "11/22", stopDate: "12/21"),
                          Constellation(name: "Capricorn", image: UIImage(named: "capricorn.jpg"), startDate: "12/22", stopDate: "01/19"),
                          Constellation(name: "Aquarius", image: UIImage(named: "aquarius.jpg"), startDate: "01/20", stopDate: "02/18"),
                        Constellation(name: "Pisces", image: UIImage(named: "pisces.jpg"), startDate: "02/19", stopDate: "03/20")]
    
        var contents:[String] = ["가보고 싶다고 체크해두었던 와인 바가 있다면 오늘 같은 날 가라. 그동안 자주 가던 분식집 혹은 음식점보다는 분위기 있는 곳에서 사랑하는 사람과 조촐한 저녁식사를 하는 게 좋을 듯. 장소의 분위기에 취해 연인사이의 관계가 한 단계 더 발전할 수도 있겠다. 그렇다고 조급해하는 건 금물. 다 잡은 물고기 놓치듯 도망갈 수도 있기 때문이다", "오늘 당신의 스케줄은? 비었나? 오늘은 변신의 날로 삼자. 그 오래된 헤어스타일부터 청산해 버리자. 유행을 따를 거라면 처음부터 끝까지 확실하게 패션리더의 모습으로, 그게 아니라면 좀 평범하게.. 그동안 그로 인해 받은 스트레스로 예민해질 대로 예민해진 당신! 가장 문제가 되는 헤어스타일부터 치워 버리고 마음을 따뜻하게 가져보자", "당신 연인의 말 들어서 손해 날 것 하나도 없는 날이다. 오늘은 당신 연인의 꼭두각시가 되어보자, 하라는 대로 다하고 연인의 물음에 원하는 대답해주고 당신의 연인도 즐겁겠지만 나름 당신에게도 재미있을 걸?! 오래된 연인이라도 평소와 다른 모습이므로 지루하지 않을 것이다. 색다른 재미를 원하신다구요? 그렇다면 주저 말고 당신의 파트너를 따르세요. 사랑이 새록새록 피어납니다.", "생각 없이 속 얘기가 술술 나오는 날이니 오늘은 당신의 입에 촘촘한 그물망을 설치해야 하는 날이다. 무턱대고 믿고 털어놓은 속 얘기가 소문이 날 수 있겠으니 아무에게나 속얘기를 털어놓지 말자. 상처받을 수 있다. 노트를 하거나 시험을 볼 때 실수가 있을 수 있으니 주의가 필요한 날이다. 당신의 연인을 잘 감시하라! 제3의 인물이 나타나 삼각관계가 생길 수 있겠으니 긴장이 필요하다.", "당신의 선택에 따라 오늘 하루가 달라질 것이다. 선택이 중요한 날이니, 우물쭈물 하다 기회를 놓치지 말고 확실한 선택을 하여 행운을 잡아라! 앞뒤 상황 재고 결정하는 것 보다 순간적인 느낀, 당신의 감각대로 라면 실수하지 않고 좋은 선택을 할 수 있겠다. 오늘, 별의별 사람을 다 만날 수 있겠다.", "당신의 속을 끓어오르게 하는 크고 작은 일들이 생기는 날이다. 조금은 허술하게 넘어가주는 것이 오늘의 문제를 해결하는 포인트! 적당히 상대를 배려해주자. 사람과의 관계에 신경을 써야하는 날이다. 해결이 필요한 일이 있다면 작은 노력을 기울여도 큰 결과를 얻을 수 있으니 조금만 애쓰자. 지름신이 강림하기 쉬운 날! 필요치 않은 물건 혹 해서 사는 일이 없도록 주머니 단단히 붙들자.", "오늘은 당신의 능력을 발휘하는 날~! 그러나 혼자서는 절대 할 수 없는 날이기도 하다. 주위 사람의 도움을 받으라. 특히 윗사람에게 도움을 받는 것이 좋다. 당신의 연인과는 한 발짝 멀리 서서 서로의 문제에 대해 살펴보도록 하자. 그렇지 않으면 맨 날 같은 싸움으로 더 만나야 할지에 대한 고민을 하게 될지도 모른다.", "첫 단추의 구멍 언저리에서 맴돌고 있는 당신, 시작이 두려워 고민하고 있는 당신! 한 번 더 생각하는 것에서 머물지 말고 한발 더 움직이인다면 분명 하나 더 좋은 결실을 맺을 것이니 오늘 시작의 날로 정하자. 책상 앞에 가만히 앉아있다고, 하루 종일 머리를 싸매고 고민해도 좋은 수가 떠오르지 않는 날이다. 선배, 가족에게 고민을 털어놓으면 의외의 도움말을 듣게 될 것이니 상담을 요청하자.", "욱!하고 뚜껑이 열릴 것 같은 일들이 종종 생길 수 있는 날이다. 참지 않으면 내 안에 있는 또다른 나를 만나게 될 수 있으니 자제하자. 순간의 기분대로 표현하는 것이 와전되어 뒤탈이 생길 수 있으니 최대한 상대방을 배려하는 것 같은 이미지를 보여주는 것이 좋다. 릴랙스~ 시험이나 테스트, 긴장할 일들이 생길 수 있다. 심호흡 충분히 하고 떠는 모습을 보이지 말자. 가능한 자신감 있는 모습으로 대하는 것이 좋고 화가 나거나 긴장 될 때, 가벼운 산책으로 기분전환을 해주는 것도 좋은 생각이다.", "70%는 좋고 30%는 별로다. 화끈하고 직선적인 일처리가 필요한 날이다. 내 주장을 확실히 표현하는게 여러모로 좋지만 몇몇 기분 나빠 하는 사람들도 있겠다. 하지만 대세는 내 편이니 별로 신경 쓰지 않아도 된다. 교수님이나 선배로부터 칭찬받을 일이 있겠다. 너무 좋은 내색은 하지 말자. 어디선가 시기의 눈으로 당신을 째려보는 이들이 있다. 조심해서 나쁠껀 없다.", "논리적인 생각이 필요한 날이다. 당신의 합리적인 생각을 원하는 사람들이 많으니 오늘 똑소리 나는 당신의 주장을 펼쳐 보여주자. 간혹 당신에게 딴지를 걸어오는 사람들이 있어 기분이 살짝 상할 수는 있겠으나 침착하게 대응한다면 오히려 당신에겐 플러스가 될 수 있으니 맞대응하지 말고 씨익 웃어주자. 주위사람들 여럿 쓰러진다. 살짝 화장을 해 보거나 평소와는 다른 향수를 쓰거나, 너무 티나지 않게 살짝 분위기를 바꿔보자. 주위에서 관심을 눈길을 보내는 이들이 생길 수 있는 날이다.", "책, 노트, 영수증 등 문서와 관련된 것들은 다시 한 번 확인해야 하는 날이다. 중요한 메모를 잃어버린다거나, 문서위에 음료수를 쏟는다거나, 잘못 필기한다거나 여러 종류의 실수가 있을 수 있다. 새로운 일을 계획 중인가? 꼼꼼하게 준비해온 사람이 아니라면 오늘 시작은 별로 좋지 않을 것 같다. 한 번 더 점검의 계기로 삼고 본격적인 스타트는 다음으로 미루자. ", "후배들에겐 항상 카리스마의 상징인 당신~! 오늘만은 부드러운 말투로 이야기 해보자. 후배들은 당신의 행동에 의아해 할지도 모르겠으나 후에 인맥을 유지하려면 별 수 없다. 그렇다고 후배들에게 휘둘려서는 안 된다. 약간의 카리스마는 남겨 놓을 것. 당신이 분위기를 주도해야 한다. 곧 부드럽고 카리스마를 가진 선배로 후배들에게 기억될 것이다. 할 수 없다고 생각하지 말고 시작해보자.", "선배에 대한 지나친 친절은 당사자에게 거부감 생기는 아부로 느껴질 지도 모른다. 후배들에게는 튀는 행동으로 보일 수도 있고. 뭐든지 지나치면 모자란 것 보다 못한 법. 모자라서도 안 되겠지만 지나치지도 말자. 적당히 릴랙~스. 그것이 오늘을 살아가는 당신에게 필요한 한 가지. 오늘 당신에게 돈을 빌려간 사람이 있다면 꼼꼼히 리스트를 만들어 놓자.", "오늘 당신의 걱정이 하나 줄었다. 친구 말만 믿고 빌려주었던 돈을 받을 수 있는 날이다. 하지만 도로 나갈 수 있으니 조심할 것. 돈 갚았다고 한 턱 내라고 말하는 친구들이 종종 있으니 말이다. 지난밤 기분 나쁜 꿈을 꾸었다면 집안 구석구석 청소하자. 옥상에 올라가 이불도 탈탈 털자. 기분이 한 결 나아 질 것이다.", "고민하고 어려워할수록 작정하고 일이 꼬이는 날이다. 에라 모르겠다 하는 마음으로 가능한한 무식! 간단! 명료하게 생각하는 것이 차라리 낫겠다. 가볍게 단순하게 그리고 이왕이면 유쾌하게 행동하면 금상첨화. 주변 사람들과도 물 흐르듯 자연스럽게, 튀려고 하지만 않는다면 원만한 하루가 될 것 같다. 건강이 안좋아질 수있으니 적당한 운동을 시작하려는 계획을 세워보는 것도 좋겠다.", "벌어진 문제들을 피하고 싶더라도 자신의 문제를 다른 사람에게 떠넘기지 말지어다! 지금 회피하면 다음에 문제가 생겼을 때 해결하지도 못하고 정작 도움을 받을 수 있는 사람들도 다 떠나보낼 수 있다. 오늘, 당신의 문제를 받아들이고 정면돌파! 하여 해결해보도록 하자. 내일로 미루기보다 오늘, 가능한 빨리 해결하는 것이 손해가 적다.", "견고하던 사랑탑이 흔들흔들 하진 않나 확인이 필요한 날이다 요즘 유난히 남친, 여친의 심기가 불편한 것 같단 생각이 들진 않았는지? 오늘 허심탄회한 대화의 자리를 마련하자. 큰맘 먹고 근사한 저녁을 먹으면서 대화를 풀어나가면 분위기는 더 좋겠지? 주변에서 괜스레 참견하려는 사람들이 있다면 오늘은 좋다.", "오늘 면접을 보는 당신에게 한 마디~! 주어진 질문에 소신껏 대답하자. 데굴데굴 머리 굴리는 소리? 다 들린다. 당신의 생각이 맞을 수 있으니 자신 있고 확신 있는 언어로 상대를 제압하라. 그렇다고 알아들을 수 없는 외국어나 외계어는 금물~! 당신의 마음을 전달 할 수가 없다. 또한 다른 사람에게 도움을 요청해도 소용없으니 당신 스스로 해결하도록 하자. 고민은 빨리 해결할수록 좋다.", "이성문제로 하루 일을 그르칠 수 있는 날! 아무리 이성에게 끌리는 것이 본능이라도, 사적인 감정 때문에 일을 그르치지 않도록 하자. 이성과의 문제로 하루 종일 마음쓰이겠으나 공과 사는 구별하는 것이 좋다. 다른 사람에게 티내지 말고 둘의 문제는 둘이 알아서 해결하도록! 오늘의 문제, 오늘 해결되지 않을 가능성이 높으니 차라리 오늘은 해결을 미루고 학업에 몰두하는 것이 좋겠다. 잊고 있으면 없어질 문제일 수도 있다.", "에너지가 넘치는 하루! 활동적으로 오늘을 즐기자. 약간의 들뜬 기분이 일의 능률을 올려준다. 작은 일에도 크게 웃을 일들이 생기니 오늘 하루 윤활유가 되겠다. 남친, 여친과의 데이트가 있다면 콘서트, 연극처럼 사람들이 바글바글 많이 모인 시끄러운 장소를 택하는 것이 좋겠다. 살짝 자연스런 스킨십을 시도해 봐도 좋은 날이다.", "크고 작은 고민거리들이 있을지라도 밝은 성격을 표현한다면 주위 사람들의 도움을 쉽게 받을 수 있는 날이다. 생각대로 일이 술술 풀리니 기분 좋은 날! 배움과 진학에 관련된 일이 있다면 오늘 좋은 소식이 들릴 수도 있겠다. 과거의 경험으로 위기를 모면할 수 있는 일이 생긴다. 순간의 판단보다는 지난 기억에 비추어 일을 결정하는 것이 실수가 적고, 새로운 것 보다는 익숙한 것들을 선택하도록 하자.", "마음을 넓게 열수록 당신에게 좋은 날이다. 나 자신보다는 남을 돕는 여유를 갖자. 금전적인 도움보다 행동으로 도울 수 있는 일이라면 더 좋다. 익숙한 것이 어울리는 오늘, 어설프게 새로운 시도보다는 익숙한 것들이 더 잘 어울리고, 평소와 다른 가벼운 행동과 언행은 주의해야 하니 즐거운 기분을 유지하되, 기본 예의에 어긋나지 않게 수위를 조절하자.", "오늘은 부모님의 말씀이 곧 법이다. 부모님의 말씀대로 하면 손해볼 것이 없느니. 하지만 전적으로 의지하는 것은 좋지 않다. 부모님의 말씀을 따르되 주체적으로 행동하는 의젓한 모습을 보일 것. 도처에 안전사고가 도사리고 있다 조금 무리했다고 생각이된다면 하루를 일찍 마무리하고 휴식을 취해야 다음날 후유증이 없겠다. ", "당신의 유익한 생활을 위해 컴퓨터는 잠시 꺼두셔도 좋습니다. 컴퓨터 게임에 빠져있는 당신! 한 시간만 한 시간만 하다가 오늘 하루 다 간다. 해야 할일도 하지 못하고 그 후유증이 내일까지 갈 테니 오늘은 공원 농구장에 가서 땀 흘리게 뛰어보자. 색다른 재미에 폭~ 빠질지도. 걸어가다가 한 눈 팔지 말자.", "오늘은 좀 상상력을 발휘해보자. 평소 고지식했던 당신이라면, 이제 그만 조선시대에서 벗어나시죠? 당신이 융통성을 발휘하는 만큼 주변에 사람들이 늘어날 것이다. 당신에게 다가오지 못했던 사람들 모두 선비 같은 당신의 성격 때문. 그렇다고 엄마 아빠 못 알아보는 건 말이 안 되고 적당한 선에서의 예의는 지키는 것이 좋다. 구설수에 오를 수도 있으니 오늘은 먼저 나서지 말고 조용히 기다리자.", "이해하고, 이해하고 일곱 번을 이해하는 것도 모자라다. 하는 일마다 암초에 걸리지 않는 것이 없으니 이해하는 수밖에. 그러나 오늘, 포기하면 후회한다. 오늘 좀 힘들어도 이해하고 넘어가자. 혼자서 힘들다면 주변에 도움을 청해라. 최대한 예의를 갖춰서 이야기 할 것. 그렇지 않으면 더 포기하고 싶어질 것이다. 또한 예의를 갖추고 듣자. 그래야 이 상황을 이겨낼 수 있는 힘이 당신에게 생긴다. 당신을 믿는 것이 중요한 하루다.", "눈치, 코치, 재치. 3치 모두 필요한 날이다. 뭉근하고 신중한 생각보다는 순간적인 판단이 중요한 날이다. 목표달성의 여부는 순간의 기회를 얼마나 빨리, 정확하게 포착하느냐 하는 것! 대인관계가 별로 좋지 않을 수 있을 것같으니 아무리 스스로가 떳떳하다하더라도 내 목소리만 높이지 말고 주변의 이야기를 귀담아 듣는 것이 필요하겠다. 오늘 데이트가 있다면 푸른색 의상을 좋겠다.", "아침부터 오후까지 하루종일 해야 할 일들이 산더미같이 쌓여있지만 일처리 능력도 좋고, 나름 보람도 느끼겠다. 저녁시간, 당신의 애정운은 급상승! 데이트 하기 딱 좋은 날이다. 비가와도, 주머니 사정이 별로 좋지 못해도 만사 오케이~! 연인과 좀 더 가까워 질 수 있는 기회가 생긴다. 이왕이면 아직 가보지 못한 낯선 곳에 함께 가는게 좋을 듯.", ""]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let date = Date()
       
        let calendar = Calendar.current
        let dateComponents = DateComponents(calendar: calendar,
        year: 1995,
        month: 02,
        day: 12)
        
        
        
        let date = Date()
//        let currentYear = calendar.component(.year, from: date)
//        let currentMonth = calendar.component(.month, from: date)
        let currentDay = calendar.component(.day, from: date)
 

        
        print("\(dateComponents)")
        
 
        for (_, constellation) in constellations.enumerated() {
            if constellation.checkInterval(dateComponent: dateComponents) {
                constellImage.image = constellation.image
                constellContents.text = contents[currentDay % contents.count]
                print("\(constellation.name)")
                print("\(constellation)")
//                constellationPicker.selectRow(i, inComponent: 0, animated: true)
                break
            }
        }
        
        
    }
    
    


}


class Constellation {
    var name: String
    var image:UIImage?
    var startDate: String
    var stopDate: String
    
    init(name: String, image:UIImage?, startDate: String, stopDate: String) {
        self.name = name
        self.image = image
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







