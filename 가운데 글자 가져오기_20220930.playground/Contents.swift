import UIKit

//단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

//s    return
//"abcde"    "c"
//"qwer"    "we"

func solution(_ s:String) -> String {
    
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1...(s.count/2)]) : String(Array(s)[(s.count/2)])
}

solution("abcde")
