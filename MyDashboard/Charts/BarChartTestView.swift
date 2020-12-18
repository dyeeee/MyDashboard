//
//  BarChartTestView.swift
//  MyDashboard
//
//  Created by YES on 2020/12/17.
//

import SwiftUI

struct BarChartTestView: View {
    let chartStyle = ChartStyle(backgroundColor: Color.black, accentColor: Colors.OrangeStart, secondGradientColor: Colors.OrangeEnd, textColor: Color.white, legendTextColor: Color.white, dropShadowColor: Color.gray )

    
    var body: some View {
        VStack {
            BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly")
            
            ScrollView(.horizontal, showsIndicators: false) {
                BarChartView(data: ChartData(points: [8,23,54,32,12,37,7,23,43,66,45,12,13,65]), title: "Title", form: CGSize(width:1000, height:240),dropShadow: false)
            }
            
            BarChartView(data: ChartData(points:[8,23,54,32,12,37,7,23,43]), title: "Title", style: chartStyle)
        }
    }
}

struct BarChartTestView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartTestView()
    }
}
