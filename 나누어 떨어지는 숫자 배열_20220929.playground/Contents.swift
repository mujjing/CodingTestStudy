import UIKit

//array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
//divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.

//arr    divisor    return
//[5, 9, 7, 10]    5    [5, 10]
//[2, 36, 1, 3]    1    [1, 2, 3, 36]
//[3,2,6]    10    [-1]

var result: [Int] = []
var arrNum: [Int] = []

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    arrNum = arr
    
    for i in arrNum.sorted() {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    if result.count == 0 {
        result.append(-1)
    }
    return result
}

solution([3,2,6], 10)
