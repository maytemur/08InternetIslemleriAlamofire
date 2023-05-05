//
//  ViewController.swift
//  08InternetIslemleriAlamofire
//
//  Created by maytemur on 5.05.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Request yapısı
        //AF.request("https://httpbin.org/get").response { response in
        //    debugPrint(response)
        //}
        
        
        //Headers yapısı - 1nci yöntem
//        let headers: HTTPHeaders = [
//            .authorization(username: "eposta", password: "şifre"),
//            .accept("application/json")
//        ]
//
//        print(headers)
        
        //Headers yapısı - 2nci yöntem olarak kendi istediğimiz türden parametreler gönderiyoruz
//
//        let headers: HTTPHeaders = [
//            "Token" : "Token değeri",
//            "Content-Type" : "application/json"
//        ]
//
//        print(headers)

//        AF.request("https://httpbin.org/headers", headers: headers).responseJSON  { response in
//            debugPrint(response)
//
//            //error varsa alalım
//            response.error
            
            let k = Kisi(Ad: "Ad 1", Soyad: "Soyad 2")
            
            AF.request("https://httpbin.org/post",
                       method: .post,   //biz metod yazmadık yazmayınca get oluyordu!
                       parameters: k,
                       encoder: JSONParameterEncoder.default).response { response in
                debugPrint(response)
        }
    }

    struct Kisi : Encodable {
        let Ad : String
        let Soyad : String
    }
}

