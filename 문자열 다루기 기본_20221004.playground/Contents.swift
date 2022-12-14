import UIKit

//문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.

//s    return
//"a234"    false
//"1234"    true

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        guard let _ = Int(s) else { return false }
        return true
    }
    return false
}

solution("a234")
