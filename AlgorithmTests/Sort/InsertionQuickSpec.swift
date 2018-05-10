//
// Created by Xi, Paul on 5/9/18.
// Copyright (c) 2018 Xi, Paul. All rights reserved.
//

import Quick
import Nimble
import SwiftCheck
@testable import Algorithm

class InsertionQuickSpec: QuickSpec {
    override func spec() {
        describe("Insertion sort") {
            it("should return [3, 4, 5, 6, 7]") {
                let insertion = Insertion<Int>()
                let items = [5, 6, 3, 4, 7]
                expect(insertion.sort(items, <)).to(equal([3, 4, 5, 6, 7]))
            }
        }
    }
}
