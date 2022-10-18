import UIKit

//한국중학교에 다니는 학생들은 각자 정수 번호를 갖고 있습니다. 이 학교 학생 3명의 정수 번호를 더했을 때 0이 되면 3명의 학생은 삼총사라고 합니다. 예를 들어, 5명의 학생이 있고, 각각의 정수 번호가 순서대로 -2, 3, 0, 2, -5일 때, 첫 번째, 세 번째, 네 번째 학생의 정수 번호를 더하면 0이므로 세 학생은 삼총사입니다. 또한, 두 번째, 네 번째, 다섯 번째 학생의 정수 번호를 더해도 0이므로 세 학생도 삼총사입니다. 따라서 이 경우 한국중학교에서는 두 가지 방법으로 삼총사를 만들 수 있습니다.

//number    result
//[-2, 3, 0, 2, -5]    2
//[-3, -2, -1, 0, 1, 2, 3]    5
//[-1, 1, -1, 1]    0

func solution(_ number:[Int]) -> Int {
    
    var count = 0
    
    for i in 0..<number.count - 2 {
        for j in i+1..<number.count - 1 {
            for k in j+1..<number.count {
                if calNum(number[i] + number[j] + number[k]) { count += 1 }
            }
        }
    }
    
    return count
}

func calNum(_ n: Int) -> Bool {
    if n == 0 { return true }
    return false
}

solution([-1, 1, -1, 1])
