//
//  BarView.swift
//  BarGraph
//
//  Created by Sai Raghu Varma Kallepalli on 1/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import SwiftUI

struct BarView: View {
    
    var sale: Sales
    @State private var loaded: Bool = false
    
    var body: some View {
        
//        let value = sale.revenue / 50
//        let yValue = Swift.min(value*20, 50)
        
        VStack {
            Text(String(format: "$%.2f", sale.revenue))
            Rectangle()
                .frame(width: 80, height: !self.loaded ? 0 : CGFloat(sale.revenue))
                .foregroundColor(.green)
                .onAppear() {
                    withAnimation(.default) {
                        self.loaded = true
                    }
                }
            Text(String(sale.year))
        }.padding(3)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(sale: Sales(year: 2020, revenue: 190))//.previewLayout(.sizeThatFits)
    }
}
