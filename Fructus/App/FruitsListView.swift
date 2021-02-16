//
//  ContentView.swift
//  Fructus
//
//  Created by Vandan Patel on 2/13/21.
//

import SwiftUI

struct FruitsListView: View {
    var fruits = fruitsData
    @State private var isShowingSettings = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSettings = true
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                    })
                                    .sheet(isPresented: $isShowingSettings, content: {
                                        SettingsView()
                                    })
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView(fruits: fruitsData)
    }
}
