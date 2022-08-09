//
//  ViewController.swift
//  ItuDareGame
//
//  Created by 春田実利 on 2022/08/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ituLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var dousitaLabel: UILabel!
    
    let ituArray: [String] = ["一年前","一週間","昨日","今日"]
    let dokodeArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let dousitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        ituLabel.text = ituArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        dousitaLabel.text = dousitaArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
        
    }
    
    @IBAction func reset(){
        ituLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        dousitaLabel.text = "---"
        
        index = 0
        
    }
    
    @IBAction func random(){
        let ituIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let dousitaIndex = Int.random(in: 0...3)
        
        ituLabel.text = ituArray[ituIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dousitaLabel.text = dousitaArray[dousitaIndex]
        
        print("いつ: \(ituIndex)")
        print("どこで: \(dokodeIndex)")
        print("誰が: \(daregaIndex)")
        print("どうした: \(dousitaIndex)")
        
    }


}

