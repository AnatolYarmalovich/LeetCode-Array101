import UIKit

/*

Given a binary array, find the maximum number of consecutive 1s in this array.

Example 1:
Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.
Note:

The input array will only contain 0 and 1.
The length of input array is a positive integer and will not exceed 10,000
 */

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    
    var tempArray = [Int]()
    
    var tempCounter = 0
    
    if nums.count == 1 && nums[0] == 1 {
        return 1
    }
    
    for i in 0..<nums.count {
        if nums[i] == 1 {
            tempCounter += 1
        } else {
            tempArray.append(tempCounter)
            tempCounter = 0
        }
    }
    
    for y in 0..<tempArray.count {
        if tempCounter < tempArray[y] {
            tempCounter = tempArray[y]
        } else {
            continue
        }
    }
    
    return tempCounter
}


