import UIKit

//두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요. 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다. 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로 solution(3, 12)는 [3, 12]를 반환해야 합니다.


//n    m    return
//3    12    [3, 12]
//2    5    [1, 10]

var gcd = 0
var lgm = 0
func solution(_ n:Int, _ m:Int) -> [Int] {
    var maxNum = max(n, m)
    var minNum = min(n, m)
    
    gcd = minNum
    
    while gcd != 1 {
        if maxNum % gcd == 0 && minNum % gcd == 0 {
            break
        }
        gcd -= 1
    }
    
    lgm = m*n/gcd
    
    return [gcd, lgm]
}

solution(3, 12)
