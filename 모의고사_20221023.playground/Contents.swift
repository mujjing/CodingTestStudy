import UIKit

//수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.
//
//1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
//2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
//3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...
//
//1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//answers    return
//[1,2,3,4,5]    [1]
//[1,3,2,4,2]    [1,2,3]

func solution(_ answers:[Int]) -> [Int] {
    
    let givenUps = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]

    var scores:[Int: Int] = [1: 0, 2: 0, 3: 0]
    
    for (i, givenUp) in givenUps.enumerated() {
        for (j, answer) in answers.enumerated() {
            if answer == givenUp[j % givenUp.count] {
                scores[i + 1]! += 1
            }
        }
    }
    
    return scores.filter { $0.value == scores.values.max() }.keys.sorted()
}

solution([1,2,3,4,5])
