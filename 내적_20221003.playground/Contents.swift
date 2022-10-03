import UIKit

//길이가 같은 두 1차원 정수 배열 a, b가 매개변수로 주어집니다. a와 b의 내적을 return 하도록 solution 함수를 완성해주세요.

//이때, a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다. (n은 a, b의 길이)

//a    b    result
//[1,2,3,4]    [-3,-1,0,2]    3
//[-1,0,1]    [1,0,-1]    -2

var arr1: [Int] = []
var arr2: [Int] = []
var result: Int = 0

func solution(_ a:[Int], _ b:[Int]) -> Int {
    arr1 = a
    arr2 = b
    
    for i in 0..<arr1.count {
        result += (arr1[i] * arr2[i])
    }
    return result
    
    //간단하게하면
    //return zip(a, b).map(*).reduce(0, +)
}

solution([-1,0,1], [1,0,-1])
