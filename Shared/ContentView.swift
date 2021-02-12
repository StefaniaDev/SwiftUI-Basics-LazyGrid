//
//  ContentView.swift
//  Shared
//
//  Created by Stefania Zinno on 11/02/21.
//

import SwiftUI

var dishes: [String] = ["🍕", "🍔", "🍣", "🍟", "🌮", "🌭"]
var beverage: [String] = ["🍷","🍸", "🍶", "🍾", "🍹", "🍺"]

struct ContentView: View {
    private var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 16,
                pinnedViews: [.sectionHeaders, .sectionFooters]
            ) {
                Section(header: Text("Food Dishes").font(.title)) {
                    ForEach(dishes, id: \.self) { dish in
                        Text("\(dish)").id(UUID()).font(.system(size: 60))
                    }
                }
            
                Section(header: Text("Beverage and Wine").font(.title)) {
                    ForEach(beverage, id: \.self) { drink in
                       Text("\(drink)").id(UUID()).font(.system(size: 60))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
