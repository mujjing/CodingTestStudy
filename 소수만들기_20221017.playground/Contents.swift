import UIKit

//주어진 숫자 중 3개의 수를 더했을 때 소수가 되는 경우의 개수를 구하려고 합니다. 숫자들이 들어있는 배열 nums가 매개변수로 주어질 때, nums에 있는 숫자들 중 서로 다른 3개를 골라 더했을 때 소수가 되는 경우의 개수를 return 하도록 solution 함수를 완성해주세요.

//nums    result
//[1,2,3,4]    1
//[1,2,7,6,4]    4

func solution(_ nums:[Int]) -> Int {
    var result = 0
    
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                if checkPrime(n: nums[i] + nums[j] + nums[k]) {
                    result += 1
                }
            }
        }
    }
    
    return result
}

func checkPrime(n: Int) -> Bool {
    for p in 2...Int(sqrt(Double(n))) {
        if n % p == 0 {
            return false
        }
    }
    return true
}

solution([1,2,7,6,4])
