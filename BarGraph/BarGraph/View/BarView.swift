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
    
    var body: some View {
        VStack {
            Text(String(format: "$%.2f", sale.revenue))
            Rectangle()
                .frame(width: 50, height: CGFloat(sale.revenue))
                .foregroundColor(.green)
            
            Text(String(sale.year))
        }.padding(3)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(sale: Sales(year: 2020, revenue: 190)).previewLayout(.sizeThatFits)
    }
}
