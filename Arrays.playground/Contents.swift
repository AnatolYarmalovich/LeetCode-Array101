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

//func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
//
//    var tempArray = [Int]()
//
//    var tempCounter = 0
//
//    if nums.count == 1 && nums[0] == 1 {
//        return 1
//    }
//
//    for i in 0..<nums.count {
//        if nums[i] == 1 {
//            tempCounter += 1
//        } else {
//            tempArray.append(tempCounter)
//            tempCounter = 0
//        }
//    }
//
//    for y in 0..<tempArray.count {
//        if tempCounter < tempArray[y] {
//            tempCounter = tempArray[y]
//        } else {
//            continue
//        }
//    }
//
//    return tempCounter
//}


/*

 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

 Example 1

 Input: nums = [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Explanation: After squaring, the array becomes [16,1,0,9,100].
 After sorting, it becomes [0,1,9,16,100].

 Example 2

 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]

 */

let nums = [-4,-1,0,3,10]

func sortedSquares(_ nums: [Int]) -> [Int] {

    var tempArray = nums

    for i in 0..<nums.count {

        var currentIndex = i

        tempArray[currentIndex] = tempArray[currentIndex] * tempArray[currentIndex]

        while currentIndex > 0 && tempArray[currentIndex] < tempArray[currentIndex - 1] {
            tempArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    return tempArray
}

print(sortedSquares(nums))

/*
 Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

 Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.

 Example: 1
 Input: arr = [1,0,2,3,0,4,5,0]
 Output: [1,0,0,2,3,0,0,4]
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

 */

var testArray = [2, 4, 6, 0, 3, 0]

//func duplicateZeros(_ arr: inout [Int]) {
//
//    if arr.count == 0 {
//        return
//    }
//
//    var i = 0
//
//    while i < arr.count - 1 {
//        if arr[i] == 0 {
//            arr.removeLast()
//            arr.insert(0, at: i+1)
//            i += 1
//        }
//        i += 1
//    }
//}
//
//duplicateZeros(&testArray)
//print(testArray)

/*
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.


 Example 1

 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

 */


//var firstArray: [Int] = [1,4,6,0,0]
//let secondArray: [Int] = [2,3]
//let m = firstArray.filter {$0 != 0}.count
//let n = secondArray.filter { $0 != 0 }.count
//print("Input: \(firstArray), \(m), \(secondArray), \(n)")
//
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//
//    var i = m - 1
//    var j = n - 1
//    var k = (m + n) - 1
//
//    while i >= 0, j >= 0 {
//        if nums1[i] >= nums2[j] {
//            nums1[k] = nums1[i]
//            i -= 1
//        } else {
//            nums1[k] = nums2[j]
//            j -= 1
//        }
//        k -= 1
//    }
//
//    while j >= 0 {
//        nums1[k] = nums2[j]
//        j -= 1
//        k -= 1
//    }
//}
//
//merge(&firstArray, m, secondArray, n)
//print(firstArray)
