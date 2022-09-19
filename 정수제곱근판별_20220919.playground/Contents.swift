import UIKit
import Foundation

//임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
//n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.

//n    return
//121    144
//3    -1

//입출력 예#1
//121은 양의 정수 11의 제곱이므로, (11+1)를 제곱한 144를 리턴합니다.

//입출력 예#2
//3은 양의 정수의 제곱이 아니므로, -1을 리턴합니다.

var sqrtNum = 0
func solution(n: Int) -> Int {
    sqrtNum = Int(sqrt(Double(n)))
    return sqrtNum == Int(Double(sqrtNum)) ? pow(Double(sqrtNum + 1), 2) : -1
}

solution(n: 3)
