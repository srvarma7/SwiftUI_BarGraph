//
//  ContentView.swift
//  BarGraph
//
//  Created by Sai Raghu Varma Kallepalli on 1/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var sales: [Sales] = Sales.getAll()
    
    
    var body: some View {
        
        ZStack {
            Color.init(.orange)
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            VStack {
                TitleView()
                BarGraphGroup(sales: sales)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //.previewLayout(.sizeThatFits)
    }
}

struct TitleView: View {
    var body: some View {
        Text("Bar Graph")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}
