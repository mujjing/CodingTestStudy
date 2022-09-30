import UIKit
import Foundation

//어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.

//absolutes    signs    result
//[4,7,12]    [true,false,true]    9
//[1,2,3]    [false,false,true]    0

var result = 0
var num: [Int] = []
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    for i in 0..<signs.count {
        if signs[i] {
            num.append(absolutes[i])
        } else {
            num.append(Int(String("-\(absolutes[i])")) ?? 0)
        }
    }
                           
    for i in num {
        result += i
    }
    return result
    
    //간단히 하면
//    return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
}

solution([1,2,3], [false,false,true])
