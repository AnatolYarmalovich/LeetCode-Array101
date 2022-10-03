import UIKit
import Darwin

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

//let nums = [-4,-1,0,3,10]
//
//func sortedSquares(_ nums: [Int]) -> [Int] {
//
//    var tempArray = nums
//
//    for i in 0..<nums.count {
//
//        var currentIndex = i
//
//        tempArray[currentIndex] = tempArray[currentIndex] * tempArray[currentIndex]
//
//        while currentIndex > 0 && tempArray[currentIndex] < tempArray[currentIndex - 1] {
//            tempArray.swapAt(currentIndex - 1, currentIndex)
//            currentIndex -= 1
//        }
//    }
//    return tempArray
//}
//
//print(sortedSquares(nums))

/*
 Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

 Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.

 Example: 1
 Input: arr = [1,0,2,3,0,4,5,0]
 Output: [1,0,0,2,3,0,0,4]
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

 */

//var testArray = [2, 4, 6, 0, 3, 0]

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


/* Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
 */

/*
 Example 1
 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 2.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */

//var testRemoveArray = [0,1,2,2,3,0,4,2]
//let val = 2
//
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//
//    var counter = 0
//
//    while counter < nums.count {
//        if nums[counter] == val {
//            nums.remove(at: counter)
//            counter = counter > 0  ? counter - 1 : 0
//        } else {
//            counter += 1
//        }
//    }
//    return nums.count
//}

//result [0,1,3,0,4]
//
//func removeElementFor(_ nums: inout [Int], _ val: Int) -> Int {
//
//    var index = 0
//
//    for num in nums {
//        if num != val {
//            nums[index] = num
//            index += 1
//        } else {
//            nums.remove(at: index)
//        }
//    }
//
//    return nums.count
//}
//
//let removeElementResult = removeElementFor(&testRemoveArray, val)
//print(removeElementResult, testRemoveArray)


/*
 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1

 Input: nums = [0,0,1,1,1,2,2,3,3,4]
 Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */

//var removeDuplicatesTest = [0,0,1,1,1,2,2,3,3,4]
//
//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//
//        var item: Int = nums[0]
//
//        var counter = 1
//
//        while counter < nums.count {
//            print(counter)
//            if nums[counter] == item {
//                print("If")
//                nums.remove(at: counter)
//            } else {
//                item = nums[counter]
//                counter += 1
//            }
//        }
//        return nums.count
//    }
//}
//
//let solution = Solution()
//let resultOfSolution = solution.removeDuplicates(&removeDuplicatesTest)
//print(removeDuplicatesTest)


/*

 Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).

 Input: arr = [10,2,5,3]
 Output: true
 Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.

 Input: arr = [7,1,14,11]
 Output: true
 Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.

 Input: arr = [3,1,7,11]
 Output: false
 Explanation: In this case does not exist N and M, such that N = 2 * M.

 */


//class Solution {
//    func checkIfExist(_ arr: [Int]) -> Bool {
//
//        var temp = Set<Int>()
//
//        for element in arr {
//
//            if temp.contains(element * 2) {
//                return true
//            }
//
//            if temp.contains(element / 2) && element % 2 == 0 {
//                return true
//            }
//
//            temp.insert(element)
//
//        }
//        return false
//    }
//}
//
//let testArray = [3,1,7,11]
//let solution = Solution()
//let resultOfSolution = solution.checkIfExist(testArray)


/*

 Given an array of integers arr, return true if and only if it is a valid mountain array.

 Example 1:

 Input: arr = [2,1]
 Output: false

 Example 2:
 Input: arr = [3,5,5]
 Output: false

 Example 3:

 Input: arr = [0,3,2,1]
 Output: true

 */

// My own solution

//class Solution {
//    func validMountainArray(_ arr: [Int]) -> Bool {
//
//        var tempVault = [Int: Int]()
//
//        var directionUp: Bool = true
//
//        var result = false
//
//        if arr.count < 3 {
//            return result
//        }
//
//        for index in 0..<arr.count {
//            //Move up
//
//            if arr[index] == tempVault[index - 1] {
//                return result
//            }
//
//            if arr[index] > tempVault[index - 1] ?? 0 && directionUp == true  {
//                tempVault.updateValue(arr[index], forKey: index)
//            }
//
//            //Heigthest place
//            if arr[index] < tempVault[index - 1] ?? 0 && directionUp == true {
//                if index < 2 {
//                    return result
//                }
//                directionUp = false
//                tempVault.updateValue(arr[index], forKey: index)
//            }
//
//            //Move down
//            if arr[index] < tempVault[index - 1] ?? 0 && directionUp == false {
//                if index == arr.count - 1 {
//                    result = true
//                }
//                tempVault.updateValue(arr[index], forKey: index)
//            }
//        }
//
//        return result
//    }
//}

// Solution fron discussion

//class Solution {
//    func validMountainArray(_ arr: [Int]) -> Bool {
//        let n = arr.count
//        var i = 0
//        var j = n-1
//        while i + 1 < n , arr[i] < arr[i+1] {
//            i+=1
//        }
//        while j > 0 , arr[j] < arr[j-1] {
//            j-=1
//        }
//
//        return i == j && i > 0 && i < n - 1
//
//    }
//}
//
//let testArray = [3,5,5]
//let solution = Solution()
//let resultOfSolution = solution.validMountainArray(testArray)
//print(resultOfSolution)


/*
 Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.

 Example 1:
 Input: arr = [17,18,5,4,6,1]
 Output: [18,6,6,6,1,-1]
 Explanation:
 - index 0 --> the greatest element to the right of index 0 is index 1 (18).
 - index 1 --> the greatest element to the right of index 1 is index 4 (6).
 - index 2 --> the greatest element to the right of index 2 is index 4 (6).
 - index 3 --> the greatest element to the right of index 3 is index 4 (6).
 - index 4 --> the greatest element to the right of index 4 is index 5 (1).
 - index 5 --> there are no elements to the right of index 5, so we put -1.

 Example 2:
 Input: arr = [400]
 Output: [-1]
 Explanation: There are no elements to the right of index 0.
 */
//
//class Solution {
//    func replaceElements(_ arr: [Int]) -> [Int] {
//        // Iterate from back to front
//
//        if arr.count <= 1 {
//            return [-1]
//        }
//
//        var result: [Int] = [-1]
//
//        var tempValue = result[0]
//
//        for i in stride(from: arr.count - 1, through: 0, by: -1) {
//            print("Iteration specify: index - \(i), object - \(arr[i])")
//            if tempValue >= arr[i] {
//                result.append(tempValue)
//            } else {
//                result.append(arr[i])
//                tempValue = arr[i]
//            }
//            print("Result array: \(result) \n")
//        }
//
//        result.removeLast()
//
//        return result.reversed()
//
//    }
//}
//
//let testArr = [17,18,5,4,6,1]
//let solution = Solution()
//let result = solution.replaceElements(testArr)
//print(result)

//Awesome solution:

//func replaceElements(_ arr: [Int]) -> [Int] {
//    let lastIndex = arr.count - 1
//    var nums = arr
//    var curMax = nums[lastIndex]
//
//    nums[lastIndex] = -1
//    for i in stride(from: lastIndex - 1, through: 0, by: -1) {
//        let temp = curMax
//        curMax = max(curMax, nums[i])
//        nums[i] = temp
//    }
//
//    return nums
//}

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

 Example 1:

 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]

 Example 2:

 Input: nums = [0]
 Output: [0]
 */

//class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        var notZeroItem: Int = 0
//
//        for i in 0..<nums.count {
//            if nums[i] != 0 {
//                nums.swapAt(i, notZeroItem)
//                notZeroItem += 1
//            }
//        }
//    }
//}
//
//var nums = [0,1,0,3,12]
//let solution = Solution()
//solution.moveZeroes(&nums)
//print("Result: \(nums)")


/*
 Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

 Return any array that satisfies this condition.

 Example 1:

 Input: nums = [3,1,2,4]
 Output: [2,4,3,1]
 Explanation: The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
 Example 2:

 Input: nums = [0]
 Output: [0]
 */

//class Solution {
//    func sortArrayByParity(_ nums: [Int]) -> [Int] {
//        var result = nums
//
//        var evenIndex = 0
//
//        for i in 0..<nums.count {
//            if nums[i] % 2 == 0 {
//                result.swapAt(i, evenIndex)
//                evenIndex += 1
//            }
//        }
//        return result
//    }
//}
//
//var nums = [1,0,3]
//let result = Solution().sortArrayByParity(nums)
//print("Result: \(result)")

/*
 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:

 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 2.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 Example 2:

 Input: nums = [0,1,2,2,3,0,4,2], val = 2
 Output: 5, nums = [0,1,4,0,3,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
 Note that the five elements can be returned in any order.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */


//class Solution {
//    //o()
//    //O(1)
//    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//
//        var index: Int = 0
//
//        while index < nums.count {
//            if nums[index] == val {
//                nums.remove(at: index)
//            } else {
//                index += 1
//            }
//        }
//
//        return nums.count
//    }
//}
//
//var nums = [0,1,2,2,3,0,4,2]
//let result = Solution().removeElement(&nums, 2)
//print(result, nums)

/*
 A school is trying to take an annual photo of all the students. The students are asked to stand in a single file line in non-decreasing order by height. Let this ordering be represented by the integer array expected where expected[i] is the expected height of the ith student in line.

 You are given an integer array heights representing the current order that the students are standing in. Each heights[i] is the height of the ith student in line (0-indexed).

 Return the number of indices where heights[i] != expected[i].

 Example 1:

 Input: heights = [1,1,4,2,1,3]
 Output: 3
 Explanation:
 heights:  [1,1,4,2,1,3]
 expected: [1,1,1,2,3,4]
 Indices 2, 4, and 5 do not match.
 Example 2:

 Input: heights = [5,1,2,3,4]
 Output: 5
 Explanation:
 heights:  [5,1,2,3,4]
 expected: [1,2,3,4,5]
 All indices do not match.
 Example 3:

 Input: heights = [1,2,3,4,5]
 Output: 0
 Explanation:
 heights:  [1,2,3,4,5]
 expected: [1,2,3,4,5]
 All indices match.
 */

//class Solution {
//
//    func heightChecker(_ heights: [Int]) -> Int {
//        var counter = 0
//
//        var sortedHeights = mergeSort(heights)
//
//        for i in 0..<heights.count {
//            if sortedHeights[i] != heights[i] {
//                counter += 1
//            }
//        }
//
//        return counter
//    }
//
//    private func mergeSort(_ heights: [Int]) -> [Int] {
//        guard heights.count > 1 else {
//            return heights
//        }
//
//        let middleIndex = heights.count / 2
//        let leftArray = mergeSort(Array(heights[..<middleIndex]))
//        let rightArray = mergeSort(Array(heights[middleIndex...]))
//
//        return merge(leftArray, rightArray)
//    }
//
//    private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
//        var leftIndex = 0
//        var rightIndex = 0
//
//        var result: [Int] = []
//
//        while leftIndex < left.count && rightIndex < right.count {
//            let leftElement = left[leftIndex]
//            let rightElement = right[rightIndex]
//
//            if leftElement < rightElement {
//                result.append(leftElement)
//                leftIndex += 1
//            } else if leftElement > rightElement {
//                result.append(rightElement)
//                rightIndex += 1
//            } else {
//                result.append(leftElement)
//                leftIndex += 1
//                result.append(rightElement)
//                rightIndex += 1
//            }
//        }
//
//        if leftIndex < left.count {
//            result.append(contentsOf: left[leftIndex...])
//        }
//        if rightIndex < right.count {
//            result.append(contentsOf: right[rightIndex...])
//        }
//        return result
//    }
//}
//
//let result = Solution().heightChecker([5,1,2,3,4])
//print(result)
