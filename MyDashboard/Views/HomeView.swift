//
//  HomeView.swift
//  MyDashboard
//
//  Created by YES on 2020/12/18.
//

import SwiftUI

struct HomeView: View {
    var progress:Double = Double(1197/1583)
    
    var body: some View {
        VStack {
            HStack{
                Text("Main").font(.title)
                    .bold().foregroundColor(.black)
                Spacer()
            }
            
            VStack {
                ProgressTestView(progress: 1197/1583)
                LineView(data: [5,12,21,25,27,34,37,45,75.6], title: "Done Rate  75.6%")
                        .padding(.leading, -18)

                    
            }
        }.padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
