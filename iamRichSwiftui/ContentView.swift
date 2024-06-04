//
//  ContentView.swift
//  iamRichSwiftui
//
//  Created by asmaa gamal  on 04/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.blue).ignoresSafeArea()
            VStack {
                Text("I AM RICH").font(.system(size: 50, weight: .bold)).foregroundStyle(.foreground)
                Image("diamond").resizable().aspectRatio(contentMode: .fit).frame(width: 300,height: 300)
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
