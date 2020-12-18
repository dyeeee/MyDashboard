//
//  LineChartTestView.swift
//  MyDashboard
//
//  Created by YES on 2020/12/17.
//

import SwiftUI

struct LineChartTestView: View {
    var body: some View {
        NavigationView {
        VStack {
            ScrollView(.horizontal, showsIndicators: true) {
            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title", legend: "Legendary",form: CGSize(width:1000, height:240))
            }
            
            LineView(data: [8,23,54,32,12,37,7,23,43], title: "Line chart", legend: "Full screen")
        }
            
            
//            MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "Title")
        }
    }
}

struct LineChartTestView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartTestView()
    }
}
