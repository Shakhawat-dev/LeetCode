import UIKit
import XCTest

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen: Set<Int> = []
        
        for num in nums {
            if seen.contains(num) {
                return true
            }
            
            seen.insert(num)
        }
        
        return false
    }
}

class Tests: XCTestCase {
    var solution = Solution()
    
    func test1() {
        XCTAssertEqual(solution.containsDuplicate([1,2,3,1]), true)
    }
    
    func test2() {
        XCTAssertEqual(solution.containsDuplicate([1,2,3,4]), false)
    }
    
    func test3() {
        XCTAssertEqual(solution.containsDuplicate([1,1,1,3,3,4,3,2,4,2]), true)
    }
}

Tests.defaultTestSuite.run()
