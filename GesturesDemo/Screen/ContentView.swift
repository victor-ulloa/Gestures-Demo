//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Victor Ulloa on 2023-10-01.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    //MARK: - FUNCTION
    
    //MARK: - CONTENT
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                // MARK: - 1. TAP GESTURE
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    })
            } //: ZSTACK
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
        } // :NAVIGATION
        .navigationViewStyle(.stack)
    }
}

//MARK: - PREVIEW

#Preview {
    ContentView()
}
