//
//  NextViewController.swift
//  WeatherApp
//
//  Created by 大和芳隆 on 2016/11/13.
//  Copyright © 2016年 BETA-yamato. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SDWebImage


class NextViewController: UIViewController {
    
    @IBOutlet weak var sapporoImage: UIImageView!
    @IBOutlet weak var moriokaImage: UIImageView!
    @IBOutlet weak var tokyoImage: UIImageView!
    @IBOutlet weak var nagoyaImage: UIImageView!
    @IBOutlet weak var osakaImage: UIImageView!
    @IBOutlet weak var kochiImage: UIImageView!
    @IBOutlet weak var fukuokaImage: UIImageView!
    @IBOutlet weak var okinawaImage: UIImageView!
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=016010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.sapporoImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=030010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.moriokaImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=130010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.tokyoImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=230010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.nagoyaImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=270000").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.osakaImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=390010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.kochiImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=400010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.fukuokaImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }
        Alamofire.request("http://weather.livedoor.com/forecast/webservice/json/v1?city=471010").responseJSON { (response: DataResponse<Any>) in
            
            print(response)
            
            guard let val = response.result.value as? [String: Any] else {
                //self.simpleAlert(title: "通信エラー", message: "通信結果がJSONではありませんでした")
                print("エラー")
                return
            }
            // responseJSONを使うと辞書形式でも扱えますが、今回はより簡単に扱うためにSwiftyJSONを利用します。
            let json = JSON(val)
            
            // 天気の情報
            if let forecasts = json["forecasts"].array {
                
                // 今日の天気
                let todayWeather = forecasts[0]
                if let imgUrl = todayWeather["image"]["url"].string {
                    self.okinawaImage.sd_setImage(with: URL(string: imgUrl))
                }
            }
        }

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
