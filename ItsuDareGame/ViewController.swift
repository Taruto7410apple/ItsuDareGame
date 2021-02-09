//
//  ViewController.swift
//  ItsuDareGame
//
// 
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray:[String] = ["一年前","一週間前","昨日","今日","二日前","三日前"]
    
    let dokodeArray:[String]=["山の上で","アメリカで","学校で","クラスで","公園で","海で"]
    let daregaArray:[String]=["僕が","大統領が","先生が","友達が","子供が","お父さんが"]
    let doshitaArray:[String]=["叫んだ","演説した","怒った","踊った","遊んだ","泳いだ"]
    
    var index: Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func change() {
        itsuLabel.text=itsuArray[index]
        dokodeLabel.text=dokodeArray[index]
        daregaLabel.text=daregaArray[index]
        doshitaLabel.text=doshitaArray[index]
        
        index=index+1
        
        if index>5{
            index=0
        }
        
    }
    @IBAction func reset() {
        itsuLabel.text="-----"
        dokodeLabel.text="-----"
        daregaLabel.text="-----"
        doshitaLabel.text="-----"
        
        index=0
    }
    @IBAction func random() {
        
        let itsuIndex=Int.random(in: 0...5)
        let dokodeIndex=Int.random(in: 0...5)
        let daregaIndex=Int.random(in: 0...5)
        let doshitaIndex=Int.random(in: 0...5)
        
        print("いつ：\(itsuIndex)")
        print("どこで：\(dokodeIndex)")
        print("だれが：\(daregaIndex)")
        print("だれが：\(doshitaIndex)")
        
        itsuLabel.text=itsuArray[itsuIndex]
        dokodeLabel.text=dokodeArray[dokodeIndex]
        daregaLabel.text=daregaArray[daregaIndex]
        doshitaLabel.text=doshitaArray[doshitaIndex]
        
    }
}

