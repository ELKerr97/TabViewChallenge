//
//  ContentView.swift
//  TabViewChallenge
//
//  Created by Ethan L. Kerr on 1/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        
        TabView (selection: $tabIndex){
            Text("This tab's tag is \(tabIndex)")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise.fill")
                        Text("Tab 1")
                    }
                }
                .tag(1)
            
            Button {
                tabIndex = 3
            } label: {
                Text("Take me to tab 3!")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right.circle")
                    Text("Tab 2")
                }
            }
            .tag(2)
            
            List {
                ForEach(0...99, id: \.self) { t in
                    Text("This is Tab 3!")
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap.fill")
                    Text("Tab 3")
                }
            }
            .tag(3)
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
