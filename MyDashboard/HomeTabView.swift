//
//  HomeTabView.swift
//  MyDashboard
//
//  Created by YES on 2020/12/17.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView{
            BarChartTestView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("1")
                }
//                .tag(0)
            
            Text("hi").font(.custom("hyg5gjm", size: 18))
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("2")
                }
//                .tag(1)
            
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
