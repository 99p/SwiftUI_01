//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by macboy on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    @State var ans = 0
    
    var body: some View {
        VStack{
            if ans == 0{
                Text("Let's Janken")
                    .padding(.bottom)
            } else if ans == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Gu")
            } else if ans == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Choki")
            } else if ans == 3 {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Pa")
            }
            
            Button(action: {
                var newAns = 0
                repeat {
                    newAns = Int.random(in: 1...3)
                } while ans == newAns
                
                ans = newAns
            }) {
                Text("Let's Play Janken.")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 mini")
//        ContentView()
//            .preferredColorScheme(.dark)
//            .previewDevice("iPad Pro (9.7-inch)")
    }
}
