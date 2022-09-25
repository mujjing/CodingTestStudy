import UIKit


//두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
//예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

//a    b    return
//3    5    12
//3    3    3
//5    3    12

var resultNum = 0
var num1 = 0
var num2 = 0
func solution(_ a:Int, _ b:Int) -> Int64 {
    num1 = a
    num2 = b
    if num1 > num2 {
        for i in num2...num1 {
            resultNum += i
        }
    } else {
        for i in num1...num2 {
            resultNum += i
        }
    }
    
    return Int64(resultNum)
    //간단하게 하면
    // return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}

solution(3,5)
