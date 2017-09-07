//
//  Wage.swift
//  window-shopper
//
//  Created by Igor Chernyshov on 07.09.17.
//  Copyright © 2017 Frostfell. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}
