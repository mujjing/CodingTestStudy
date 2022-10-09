import UIKit

//정수 배열 numbers가 주어집니다. numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.

//numbers    result
//[2,1,3,4,1]    [2,3,4,5,6,7]
//[5,0,2,7]    [2,5,7,9,12]

var sum = 0
var resultArr: [Int] = []

func solution(_ numbers:[Int]) -> [Int] {
    
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if i != j {
                sum = numbers[i] + numbers[j]
                if resultArr.contains(sum) {
                    continue
                } else {
                    resultArr.append(sum)
                }
            } else {
                continue
            }
        }
    }
    
    return resultArr.sorted()
}

solution([5,0,2,7])
