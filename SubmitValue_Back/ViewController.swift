//
//  ViewController.swift
//  SubmitValue_Back
//
//  Created by YUNA KO on 07/07/2019.
//  Copyright © 2019 YUNAKO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //값을 화면에 표시하기 위한 아울렛 변수들
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    /*
    //값을 직접 전달 받을 프로퍼티들
    var paramEmail : String?
    var paramUpdate : Bool?
    var paramInterval : Double?
    */
    override func viewWillAppear(_ animated: Bool) {
        /*
        if let email = paramEmail {
            resultEmail.text = email
        }
        if let update = paramUpdate {
            resultUpdate.text = update == true ? "자동갱신":"자동갱신안함"
        }
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }*/
        /*
        //AppDelegate객체의 인스턴스를 가져옴
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail{
            resultEmail.text = email
        }
        if let update = ad?.paramUpdate {
            resultUpdate.text = update == true ? "자동갱신":"자동갱신안함"
        }
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
        */
        
        //UserDefaults객체 이용 : 앱이 종료되고 다시 켜도 존재. 앱 삭제 전까지 존재함.
        //UserDelfaults객체의 인스턴스를 가져온다
        //가져오는 값의 타입을 정확히 모를 경우에는 ud.value나 ud.object를 이용하여 가져온다
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email"){
            resultEmail.text = email
        }//옵셔널 타입이기 때문에 없더라도 종료되지 않도록 옵셔널 바인딩 필요
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신":"자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
        
        // Do any additional setup after loading the view.
    }

}


