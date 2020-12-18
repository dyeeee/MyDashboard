//
//  PageTabView.swift
//  MyDashboard
//
//  Created by YES on 2020/12/18.
//

import SwiftUI

struct PageTabView: View {
    var body: some View {
        ScrollView {
            TabView {
                HStack {
                    BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly")
                    
                    BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly")
                
                }
                HStack {
                    BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly")
                    
                    BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly")
                
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabView()
    }
}
