import UIKit

//두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.

//left    right    result
//13    17    43
//24    27    52

//수    약수    약수의 개수
//13    1, 13    2
//14    1, 2, 7, 14    4
//15    1, 3, 5, 15    4
//16    1, 2, 4, 8, 16    5
//17    1, 17    2


var positiveNum = 0
var negativeNum = 0
var arr:[Int] = []

func solution(_ left:Int, _ right:Int) -> Int {
    
    for i in left...right {
        for j in 1...i {
            if i % j == 0 {
                arr.append(j)
            }
        }
        if arr.count % 2 == 0 {
            positiveNum += i
        } else {
            negativeNum += i
        }
        arr.removeAll()
    }
    return positiveNum - negativeNum
    
    //간단하게 하면
    //return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}

solution(24, 27)
