//
//  BarGraphGroup.swift
//  BarGraph
//
//  Created by Sai Raghu Varma Kallepalli on 2/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import SwiftUI

struct BarGraphGroup: View {
    
    var sales: [Sales]
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            ForEach(self.sales, id: \.year) { sale in
                BarView(sale: sale)
            }
        }
    }
}


struct BarGraphGroup_Previews: PreviewProvider {
    static var previews: some View {
        BarGraphGroup(sales: Sales.getAll())
    }
}
