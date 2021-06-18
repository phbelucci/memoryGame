 //
//  ContentView.swift
//  memoryGame
//
//  Created by Paulo Belucci on 06/06/21.
//

import SwiftUI

struct JogoView: View {
    
    let emojis : Array<String> = ["🤕", "🕉", "🧡", "❌", "🉐", "🍉", "🥭", "🥬", "🎱", "🚎", "🎯", "🚚", "🎮", "🧩", "🎳", "🛸"]
    
    @State var emojiCount : Int = 15
    
    var body: some View {
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                    ForEach(emojis[0...emojiCount], id: \.self, content : { emoji in
                        CardView(content: emoji).aspectRatio(1/1, contentMode: .fit)
                    })
                }
            }.foregroundColor(.red)
            .padding(.horizontal)

            
        }.preferredColorScheme(.light)

    }
    
}
 
struct CardView: View {
    
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        
        ZStack {
            
            let shape = RoundedRectangle(cornerRadius: 10)
            if isFaceUp {
                shape
                    .fill().foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 5).foregroundColor(.red)
                
                Text(content)
                    .font(.largeTitle)
                    .padding(.all);
            } else {
                shape
                    .fill().foregroundColor(.red)
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }

        
    }
 }
