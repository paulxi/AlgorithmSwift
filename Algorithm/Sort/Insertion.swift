//
// Created by Xi, Paul on 5/9/18.
// Copyright (c) 2018 Xi, Paul. All rights reserved.
//

import Foundation

class Insertion<T> {
    public func sort(_ items: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
        var result = items
        for idx in 0 ..< items.count {
            var innerIdx = idx
            while (innerIdx > 0 && isOrderedBefore(result[innerIdx], result[innerIdx - 1])) {
                let temp = result[innerIdx]
                result[innerIdx] = result[innerIdx - 1]
                result[innerIdx - 1] = temp
                innerIdx -= 1
            }
        }
        return result
    }
}
