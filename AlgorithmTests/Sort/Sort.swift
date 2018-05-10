//
//  SortUtil.swift
//  AlgorithmTests
//
//  Created by Xi, Paul on 5/10/18.
//  Copyright © 2018 Xi, Paul. All rights reserved.
//

import Foundation

extension Array {
    func isSorted(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows -> Bool {
        guard self.count > 1 else {
            return true
        }
        do {
            let first = try zip(self, self[1...]).first {
                do {
                    return try !areInIncreasingOrder($0, $1)
                }
            }
            switch first {
            case .none:
                return true
            default:
                return false
            }
        }
    }
}
