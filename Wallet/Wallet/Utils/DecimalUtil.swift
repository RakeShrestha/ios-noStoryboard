//
//  DecimalUtil.swift
//  Wallet
//
//  Created by Rakesh Shrestha on 12/03/2024.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
