//
//  ContentView.swift
//  slots
//
//  Created by 박준우 on 2021/06/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var first = "apple"
    @State var second = "apple"
    @State var third = "apple"
    
    var fruits = ["apple", "cherry", "star"]
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("SwiftUI Slots!").font(.largeTitle).padding(.top)
            Spacer()
            Text("Credits: \(String(credits))")
            Spacer()
            HStack {
                Image(first)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(second)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(third)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                first = fruits[Int.random(in: 0...2)]
                second = fruits[Int.random(in: 0...2)]
                third = fruits[Int.random(in: 0...2)]
                
                if (first == second && second == third) {
                    credits += 45
                } else {
                    credits -= 5
                }
            }
            .padding(.all, 10)
            .padding(.horizontal, 30.0)
            .background(Color(.systemPink))
            .foregroundColor(Color.white)
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (2nd generation)")
    }
}

