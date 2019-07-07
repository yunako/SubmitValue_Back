//
//  FromViewController.swift
//  SubmitValue_Back
//
//  Created by YUNA KO on 07/07/2019.
//  Copyright © 2019 YUNAKO. All rights reserved.
//

import UIKit

class FromViewController : UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
        
        /*값 직접 전달 방법
        //이전화면을 presentingViewController속성으로 읽어온다음
        //ViewController타입으로 캐스팅한다.
        
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else{
            return
        }
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        

        */
        /*
        //저장소를 이용하는 방법 AppDelegate
        //AppDelegate 객체의 인스턴스를 가져온다
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        //값을 저장한다.
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        */
        
        //UserDefaults객체를 이용하여 값 전달
        let ud = UserDefaults.standard
        
        //값을 저장
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey:"interval")
        
        //이전화면으로 복귀
        self.presentingViewController?.dismiss(animated:true)
    }
    
    
}
