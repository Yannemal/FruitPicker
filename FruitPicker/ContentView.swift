//
//  ContentView.swift
//  FruitPicker
//  Picker View test #SWiftUI #XCode
//  Created by yannemal on 18JUNE2023.
//

import SwiftUI

struct ContentView: View {
    // data goes here w default values
    @State private var favoriteFruit1 = "🍈"
    // constant data:
    let fruitArray = ["🍏", "🍐", "🍋", "🍌", "🍅", "🍍", "🥝", "🫐", "🍑", "🥭", "🥥", "", "🍓", "🍊", "🍇", "🍎", "🥑", "🍉"]
    
    var body: some View {
    // the ViewDidLoad of SwiftUI
        NavigationStack{
            Form {
                Section{
                    // Picker( title String, selection: bind var) CLOSE PARENTHESES { }
                    Picker("Favourite fruit by far", selection: $favoriteFruit1) {
                        ForEach(fruitArray, id: \.self) {
                            Text("\($0)")
                        }
                     }
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
