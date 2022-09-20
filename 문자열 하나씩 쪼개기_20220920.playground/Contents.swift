import UIKit

//대문자와 소문자가 섞여있는 문자열 s가 주어집니다. s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.

//예를 들어 s가 "pPoooyY"면 true를 return하고 "Pyy"라면 false를 return합니다.


var pArr: [Character] = []
var yArr: [Character] = []

func solution(_ s:String) -> Bool
{
    let lowString = s.lowercased()
    
    for i in 0..<lowString.count {
        if lowString[lowString.index(lowString.startIndex, offsetBy: i)] == "p" {
            pArr.append(lowString[lowString.index(lowString.startIndex, offsetBy: i)])
        } else if lowString[lowString.index(lowString.startIndex, offsetBy: i)] == "y"{
            yArr.append(lowString[lowString.index(lowString.startIndex, offsetBy: i)])
        }
    }
    
    return pArr.count == yArr.count ? true : false
    
    // 간단하게 해결
    //    return lowString.components(separatedBy: "p").count == lowString.components(separatedBy: "y").count
}

solution("PypYP")
