import UIKit
import Foundation

var arr: [Int] = []
var num = 0
var result = 0
var check = 0
func solution(_ n:Int) -> Int {

    num = n
    while num > 0 {
        arr.append(num % 3)
        num = num / 3
    }
    check = arr.count
    for i in arr {
        result = result + (i * Int(pow(3.0, Double(check - 1))))
        check -= 1
    }

    return result
    
    //간단히 하면
//    let flipToThree = String(n,radix: 3)
//    let answer = Int(String(flipToThree.reversed()),radix:3)!
}

solution(45)
