import UIKit

//0부터 9까지의 숫자 중 일부가 들어있는 정수 배열 numbers가 매개변수로 주어집니다. numbers에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더한 수를 return 하도록 solution 함수를 완성해주세요.

//numbers    result
//[1,2,3,4,6,7,8,0]    14
//[5,8,4,0,6,7,9]    6

var nums = 0
var samplenum = 0
let sample = [0,1,2,3,4,5,6,7,8,9]

func solution(_ numbers:[Int]) -> Int {
    nums = numbers.map {$0}.reduce(0, +)
    samplenum = sample.reduce(0, +)
    
    return samplenum - nums
    
    //다른방법
    //return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
}

solution([5,8,4,0,6,7,9])
