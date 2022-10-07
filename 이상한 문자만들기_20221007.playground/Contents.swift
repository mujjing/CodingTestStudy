import UIKit

//문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다. 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.

//s    return
//"try hello world"    "TrY HeLlO WoRlD"
var arr: [String] = []
var num = 0

func solution(_ s:String) -> String {
    for i in s {
        if num % 2 == 0 {
            arr.append(String(i.uppercased()))
        } else {
            arr.append(String(i.lowercased()))
        }
        num += 1
        if i == " " {
            num = 0
        }
    }
    return arr.joined()
}

solution("  tRy hello  WORLD   ")
