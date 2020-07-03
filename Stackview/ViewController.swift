//
//  Created by Dustin on 2019/8/23.
//  Copyright © 2019 drs24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myStackView: UIStackView!
    let data:[String] = ["我沒倒戈！北漂媽媽再澄清 言論卻讓韓粉又崩潰"
        ,"吸塵器遭惡意攻擊 憲哥：我來抓你了","被韓國瑜突襲擁抱很尷尬？面對媒體馬英九避談"
        ,"最新！索隆內閣會議 決定與台斷交"
        ,"豆豆龍批「高雄這個小孩被騙走」 凱多：皇帝封建想法"
    ,"豆豆龍批「高雄這個小孩被騙走」  凱多：皇帝封建想法"
    ,"豆豆龍批「高雄這個小孩被騙走」  凱多：皇帝封建想法"
    ,"豆豆龍批「高雄這個小孩被騙走」  凱多：皇帝封建想法"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 120.0, height: 24.0))
        let ageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 80.0, height: 24.0))
        nameLabel.text = "Harry Potter"
        ageLabel.text = "100"

        myStackView.addArrangedSubview(nameLabel)
        myStackView.addArrangedSubview(ageLabel)
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: myStackView.bounds.width, height: myStackView.bounds.height))
        view1.backgroundColor = .red
        myStackView.addBackground(color: .red)
        
        for str in data{
            let Label = UILabel(frame: CGRect(x: 0, y: 0, width: myStackView.bounds.width, height: 40))
            Label.text = str
            
            // For Swift >= 3
            Label.lineBreakMode = .byWordWrapping // notice the 'b' instead of 'B'
            Label.numberOfLines = 0
            Label.layoutIfNeeded()
            Label.font = Label.font.withSize(24)
            
            myStackView.addArrangedSubview(Label)
        }
        
//        myStackView.removeAllSubView()
        
    }
    
}

