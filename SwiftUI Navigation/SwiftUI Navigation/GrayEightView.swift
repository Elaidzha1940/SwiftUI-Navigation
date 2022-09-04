//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by Elaidzha Shchukin on 04.09.2022.
//

import SwiftUI

struct GrayEightView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .pink, number: 8)
                    .navigationTitle("Pink eight")
                    .offset(y: -60)
                
                
                NavigationLink(destination: BrownNineView(color: .orange), label:{
                    Text("Next Screen")
                        .bold()
                        .frame(width: 250, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                })
                
            }
        }
        .accentColor(Color(.label))
    }
}


struct BrownNineView: View {
    
    var color: Color
    
    var body: some View {
        
        VStack {
            CircleNumberView(color: color, number: 9)
                .navigationTitle("Brown Nine")
                .offset(y: -60)
            
            
            NavigationLink(destination: GreenTenView(), label:{
                Text("Next Screen")
                    .bold()
                    .frame(width: 250, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
        }
        
    }
}

struct GreenTenView: View {
    
    var body: some View {
        
        VStack {
            CircleNumberView(color: .green, number: 10)
                .navigationTitle("Green Ten")
                .offset(y: -60)
            
            
        }
        
    }
}



struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GrayEightView()
            .preferredColorScheme(.dark)
    }
}
