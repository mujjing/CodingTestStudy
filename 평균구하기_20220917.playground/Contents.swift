import UIKit

//정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.

//arr    return
//[1,2,3,4]    2.5
//[5,5]    5

func solution(_ arr:[Int]) -> Double {
    var sum = 0.0
    var result = 0.0
    
    for i in arr {
        sum += Double(i)
    }
    
    result = sum / Double(arr.count)
    
    return result
}

solution([1,2,3,4])
