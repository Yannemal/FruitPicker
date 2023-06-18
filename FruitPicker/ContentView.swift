//
//  ContentView.swift
//  FruitPicker
//  Picker View test #SWiftUI #XCode
//  Created by yannemal on 18JUNE2023.
//

import SwiftUI

struct ContentView: View {
    // data goes here w default values
    
    // constant data:
    let fruitArray = ["🍏", "🍐", "🍋", "🍌", "🍅", "🍍", "🥝", "🫐", "🍑", "🥭", "🥥", "", "🍓", "🍊", "🍇", "🍎", "🥑", "🍉"]
    var body: some View {
    // the ViewDidLoad of SwiftUI
        NavigationStack{
            Form {
                Section{
                    
                }
                
                Section{
                    
                }
            }
            .navigationTitle("🍌FruitPicker v2🍐")
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
