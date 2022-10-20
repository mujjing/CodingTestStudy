import UIKit

//어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다. "z"는 1만큼 밀면 "a"가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.

//s    n    result
//"AB"    1    "BC"
//"z"    1    "a"
//"a B z"    4    "e F d"

func solution(_ s:String, _ n:Int) -> String {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result = ""
    
    for i in s {
      let upperCaseCheck = i.isUppercase
      
      if let index = alphabet.firstIndex(of: i.lowercased()) {
        let nIndex = index + n > 25 ? index + n - 26 : index + n
          if upperCaseCheck {
              result += alphabet[nIndex].uppercased()
          } else {
              result += alphabet[nIndex]
          }
      } else {
        result += " "
      }
    }
    
    return result
}

solution("a B z", 1)

// 간단하게 하기

//func solution(_ s:String, _ n:Int) -> String {
//    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
//    return String(s.map {
//        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
//        let letter = alphabets[(index + n) % alphabets.count]
//        return $0.isUppercase ? Character(letter.uppercased()) : letter
//    })
//}
