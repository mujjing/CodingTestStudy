import UIKit

//String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 반환하는 함수, solution을 완성하세요. seoul에 "Kim"은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.


//seoul    return
//["Jane", "Kim"]    "김서방은 1에 있다"

var count = 0
func solution(_ seoul:[String]) -> String {
    
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            count = i
            break
        } else {
            continue
        }
    }
    return "김서방은 \(count)에 있다"
    
    //간단하게 하면
    // return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
}

let sample = ["Kim"]

solution(sample)
