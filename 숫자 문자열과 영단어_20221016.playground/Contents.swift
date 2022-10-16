import UIKit

//네오와 프로도가 숫자놀이를 하고 있습니다. 네오가 프로도에게 숫자를 건넬 때 일부 자릿수를 영단어로 바꾼 카드를 건네주면 프로도는 원래 숫자를 찾는 게임입니다.
//
//다음은 숫자의 일부 자릿수를 영단어로 바꾸는 예시입니다.
//
//1478 → "one4seveneight"
//234567 → "23four5six7"
//10203 → "1zerotwozero3"
//이렇게 숫자의 일부 자릿수가 영단어로 바뀌어졌거나, 혹은 바뀌지 않고 그대로인 문자열 s가 매개변수로 주어집니다. s가 의미하는 원래 숫자를 return 하도록 solution 함수를 완성해주세요.

//s    result
//"one4seveneight"    1478
//"23four5six7"    234567
//"2three45sixseven"    234567
//"123"    123

func solution(_ s:String) -> Int {
    var result:String = s
    result = result.replacingOccurrences(of: "zero", with: "0")
    result = result.replacingOccurrences(of: "one", with: "1")
    result = result.replacingOccurrences(of: "two", with: "2")
    result = result.replacingOccurrences(of: "three", with: "3")
    result = result.replacingOccurrences(of: "four", with: "4")
    result = result.replacingOccurrences(of: "five", with: "5")
    result = result.replacingOccurrences(of: "six", with: "6")
    result = result.replacingOccurrences(of: "seven", with: "7")
    result = result.replacingOccurrences(of: "eight", with: "8")
    result = result.replacingOccurrences(of: "nine", with: "9")
    return Int(result)!
}

solution("2three45sixseven")
