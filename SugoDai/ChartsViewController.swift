//
//  ChartsViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2023/01/23.
//

import UIKit
import Charts

class ChartsViewController: UIViewController {
    
    let saveData: UserDefaults = UserDefaults.standard
    
    var hunn: Int = 0
    
    let dateformatter = DateFormatter()
    var dic: Dictionary<String,Int> = [:]
    
    @IBOutlet var barChartView: BarChartView!
    
    var today: String!
    
    var sportstime: String!
    
    var chartstoday: String!
    
  
    
    override func viewDidLoad() {
        
        dateformatter.timeZone = TimeZone.current
        dateformatter.dateFormat = "yyyy/MM/dd"
        chartstoday = dateformatter.string(from:Date())
//        dateformatter.timeZone = TimeZone.current
//        dateformatter.dateFormat = "yyyy/MM/dd"
//        today = dateformatter.string(from:Date())
        
//
//        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "Md", options: 0, locale: Locale(identifier: "ja_JP"))
        
//        let dataString = dateFormatter.string(from: Date())
        
        
        
        if saveData.object(forKey: "count2") != nil {
            hunn = saveData.object(forKey: "count2") as! Int
        } else {
            hunn = 0
        }
        
        let rawData: [Int] = [20, 50, 70, 30, 60, 90, 40]
        //rawDataの要素番号にmap以下のコードを適用している。
        let entries = rawData.enumerated().map { BarChartDataEntry(x: Double($0.offset), y: Double($0.element)) }
        let dataSet = BarChartDataSet(entries: entries)
//        dataSet.valueFormatter = ChartValueFormatter()
        let data = BarChartData(dataSet: dataSet)
        barChartView.data = data
        
        // X軸のラベルの位置を下に設定
        barChartView.xAxis.labelPosition = .bottom
        //X軸のラベルの位置を変更
        
        // X軸のラベルの色を設定
        barChartView.xAxis.labelTextColor = .systemGray
        // X軸の線、グリッドを非表示にする
        barChartView.xAxis.drawGridLinesEnabled = false
        barChartView.xAxis.drawAxisLineEnabled = false
        
        // 右側のY座標軸は非表示にする
        barChartView.rightAxis.enabled = false
        
        // Y座標の値が0始まりになるように設定
        barChartView.leftAxis.axisMinimum = 0.0
        barChartView.leftAxis.drawZeroLineEnabled = true
        barChartView.leftAxis.zeroLineColor = .systemGray
        // ラベルの数を設定
        barChartView.leftAxis.labelCount = 5
        // ラベルの色を設定
        barChartView.leftAxis.labelTextColor = .systemGray
        // グリッドの色を設定
        barChartView.leftAxis.gridColor = .systemGray
        // 軸線は非表示にする
        barChartView.leftAxis.drawAxisLineEnabled = false
        //ピンチでズームが可能か
                barChartView.pinchZoomEnabled = false
                //ダブルタップでズームが可能か
                barChartView.doubleTapToZoomEnabled = false
                //ドラッグ可能か
                barChartView.dragEnabled = false
        //xy軸スケール拡大縮小をできなくする
                barChartView.scaleXEnabled = false
                barChartView.scaleYEnabled = false
        

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        today = saveData.object(forKey: "today") as? String
        sportstime = saveData.object(forKey: "sportstime") as? String
        
        
//        let key = dic.keys.contains(today) //今日やったかどうか
        let intsportstime = Int(sportstime)!
        print("やった時間は...",intsportstime)
//        if today == chartstoday {
//            print("今日やった")
////        print("今日やったかどうか",key)
////        if key == true { //既にこの日に行った場合
//            dic.updateValue(intsportstime, forKey: today)
//        } else  { //この日初めて行う場合
//            print("今日やってない")
//            dic[today] = intsportstime
//        }
    }
    
        
    

}


//class ChartValueFormatter: IValueFormatter {
//
//    func stringForValue(_ value: Double, entry: ChartDataEntry, dataSetIndex: Int, viewPortHandler viewPorHandler: ViewPortHandler?)-> String {
//            return String(Int(entry.y))
//        }
//    }

