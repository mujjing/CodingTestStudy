import UIKit

//문자열로 구성된 리스트 strings와, 정수 n이 주어졌을 때, 각 문자열의 인덱스 n번째 글자를 기준으로 오름차순 정렬하려 합니다. 예를 들어 strings가 ["sun", "bed", "car"]이고 n이 1이면 각 단어의 인덱스 1의 문자 "u", "e", "a"로 strings를 정렬합니다.

//strings    n    return
//["sun", "bed", "car"]    1    ["car", "bed", "sun"]
//["abce", "abcd", "cdx"]    2    ["abcd", "abce", "cdx"]

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    let sort = strings.sorted { Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n] }
    
    return sort
}

solution(["sun", "bed", "car"], 1)
