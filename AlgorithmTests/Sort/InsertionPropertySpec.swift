//
//  InsertionPropertySpec.swift
//  AlgorithmTests
//
//  Created by Xi, Paul on 5/10/18.
//  Copyright © 2018 Xi, Paul. All rights reserved.
//

import XCTest
import SwiftCheck
@testable import Algorithm

class InsertionPropertySpec: XCTestCase {
    func testAll() {
        property("Array should be sorted") <- forAll { (items: [Int]) in
            let insertion = Insertion<Int>()
            let results = insertion.sort(items, <)
            return results.isSorted(by: <=)
        }
    }
}
