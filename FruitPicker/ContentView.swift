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
    @State private var favoriteVeg1 = "🥕"
    @State private var favoriteSalad1 = "🥦"
    @State private var favoriteDrink1 = "🧋"
    // constant data:
    let fruitArray = ["🍏", "🍐", "🍋", "🍌", "🍅", "🍍", "🥝", "🫐", "🍑", "🥭", "🥥", "🍓", "🍊", "🍇", "🍎", "🥑", "🍉"]
    let vegArray = ["🫚", "🧄", "🧅", "🍠", "🫒",  "🥒", "🌶️", "🍆", "🫑", "🌽", "🥕", "🫛"]
    let saladArray = ["🥦", "🥬"]
    let drinkArray = ["🍺", "☕️", "🍷", "🥛",]
    
    var body: some View {
    // the ViewDidLoad of SwiftUI
        NavigationStack{
            Form {
                Section{
                    Text("Fruit Tray")
                        .foregroundColor(.blue)
                        .bold()
                        .fontDesign(.monospaced)
                    // Picker( title String, selection: bind var) CLOSE PARENTHESES whne you deleate the ()-> View dataType for the trailing {Closure}
                    Picker("Favourite fruit by far", selection: $favoriteFruit1) {
                        ForEach(fruitArray, id: \.self) {
                            Text("\($0)")
                        }
                     }
                    .pickerStyle(.menu)
                    //this seems to be default Picker and it works this way even when the above .menu code is omitted
                    Text("the menu pops up filled w Fruit")
                        .foregroundColor(.red)
                        .italic()
                  }
                
                // new Picker test
                Section{
                    Text("Vegetable Tray")
                        .foregroundColor(.blue)
                        .bold()
                        .fontDesign(.monospaced)
                    
                    Picker("Choose your favorite vegetable", selection: $favoriteVeg1)
                    {
                        ForEach(vegArray, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.navigationLink)
                    Text("the .nav.Link slides in a View menu")
                        .foregroundColor(.red)
                        .italic()
                }
                
                // new Picker test
                Section{
                    Text("Salad Tray")
                        .foregroundColor(.blue)
                        .bold()
                        .fontDesign(.monospaced)
                    
                   Picker("add your salad", selection: $favoriteSalad1)
                    {
                        ForEach(saladArray, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.inline)
                    
                    Text("the .inline shows items to pick in a list")
                        .foregroundColor(.red)
                        .italic()
                }
                
                // new Picker test
                Section{
                    Text("Drinks Tray")
                        .foregroundColor(.blue)
                        .bold()
                        .fontDesign(.monospaced)
                    
                   Picker("add your drink", selection: $favoriteDrink1)
                    {
                        ForEach(drinkArray, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text("the .segmented Picker Menu shows an animated sliding button for items to pick")
                        .foregroundColor(.red)
                        .italic()
                }
            }
            .navigationTitle("🍓FruitPicker v2🍐")
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
