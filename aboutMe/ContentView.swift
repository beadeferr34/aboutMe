//
//  ContentView.swift
//  aboutMe
//
//  Created by scholar on 27/07/2023.
//

import SwiftUI
//COMMENT

struct ContentView: View {
    @State private var
    showingPopover = false
    
    var body: some View {
        ZStack{
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Text("Beatriz")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 500, height: 50)
                    .background(Rectangle().fill(Color.white).shadow(radius: 3))
                    .border(Color.gray)
                Image("ducky")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .border(Color.gray)
                
                Spacer()
                    .frame(width: 50)
                    .frame(height: 300)
                
                Button("About Me"){
                    
                }
                
                
                Button("Show Menu") {
                    showingPopover = true
                }
                .popover(isPresented: $showingPopover) {
                    Text("Your content here")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
