//
//  ProgressVIew.swift
//  MyDashboard
//
//  Created by YES on 2020/12/18.
//

import SwiftUI

struct ProgressTestView: View {
    @State var progress = 0.5
    @State var dynamicProgress = 0.0
    public static let gradientBlue = LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
                .frame(width: .infinity, height: 180, alignment: .center)
                .shadow(radius: 2)

            VStack(alignment: .leading){
                HStack {
                    Text("TaskName").font(.title3)
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing:5) {
                            Image(systemName: "book")
                            Text("List")
                        }.foregroundColor(.gray)
                    })
                }
                HStack{
                    Text("Doing 20")
                    Text("Done 1197")
                    Text("UnDone 205")
                    Text("All 1583")
                }.font(.caption)
                
                HStack {
                    ProgressView(value: dynamicProgress)
                        .scaleEffect(x: 1.0, y: 2, anchor: .center)
                        .accentColor(.blue)
                }.padding([.bottom], 20)
                
                
                HStack {
                    VStack{
                        Text("20")
                            .font(.custom("hyg5gjm", size: 18))
                        Text("NewThings")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    VStack{
                        Text("50")
                        Text("ToDos")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    VStack{
                        Text("\(progress*100,specifier: "%.1f")%")
                        Text("Done Rate")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button(action: {}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 100, height: 30, alignment: .center)
                            Text("Start").foregroundColor(.white)
                        }
                        
                    })
                }
                
                
            }.padding([.leading,.trailing], 15)
        }
        .onAppear(perform: {
            self.dynamicProgress = self.progress
        })
//        .animation(Animation.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.5)
//                    .delay(0.1))
    }
}

struct ProgressVIew_Previews: PreviewProvider {
    static var previews: some View {
        ProgressTestView(progress: 1197/1583)
    }
}


struct CustomProgressViewStyle1: ProgressViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            
    }
}
