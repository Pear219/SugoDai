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
    
    @IBOutlet var barChartView: BarChartView!

    override func viewDidLoad() {
        
        if saveData.object(forKey: "count2") != nil {
            hunn = saveData.object(forKey: "count2") as! Int
        } else {
            hunn = 0
        }
        
        let rawData: [Int] = [20, 50, 70, 30, 60, 90, 40]
        //rawDataの要素番号にmap以下のコードを適用している。
        let entries = rawData.enumerated().map { BarChartDataEntry(x: Double($0.offset), y: Double($0.element)) }
        let dataSet = BarChartDataSet(entries: entries)
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
        
        

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
