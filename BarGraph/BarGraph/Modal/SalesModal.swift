//
//  SalesModal.swift
//  BarGraph
//
//  Created by Sai Raghu Varma Kallepalli on 1/9/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import Foundation


struct Sales: Hashable {
    let year: Int
    let revenue: Double
}

extension Sales {
    
    static func getAll() -> [Sales] {
        
        return [
        
            Sales(year: 2018, revenue: 130),
            Sales(year: 2019, revenue: 150),
            Sales(year: 2020, revenue: 190),
            Sales(year: 2021, revenue: 250),
            Sales(year: 2022, revenue: 300),
            Sales(year: 2023, revenue: 400),
            Sales(year: 2024, revenue: 410)
        
        ]
    }
    
}
