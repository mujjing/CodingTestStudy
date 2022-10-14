import UIKit

//1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.
//
//소수는 1과 자기 자신으로만 나누어지는 수를 의미합니다.
//(1은 소수가 아닙니다.)
//

//n    result
//10    4
//5    3

func solution(_ n:Int) -> Int {
    var num = n
    var count = 0
    var isPrime = false
    
    for i in 2...num {
        isPrime = true
        for j in 2...Int(sqrt(Double(num))) + 1 {
            if i != j && i % j == 0 {
                isPrime = false
                break
            }
        }
        
        count = isPrime ? count + 1 : count
    }
    return count
}

solution(10)
