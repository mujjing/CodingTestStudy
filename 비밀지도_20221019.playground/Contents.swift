import UIKit

//네오는 평소 프로도가 비상금을 숨겨놓는 장소를 알려줄 비밀지도를 손에 넣었다. 그런데 이 비밀지도는 숫자로 암호화되어 있어 위치를 확인하기 위해서는 암호를 해독해야 한다. 다행히 지도 암호를 해독할 방법을 적어놓은 메모도 함께 발견했다.
//
//지도는 한 변의 길이가 n인 정사각형 배열 형태로, 각 칸은 "공백"(" ") 또는 "벽"("#") 두 종류로 이루어져 있다.
//전체 지도는 두 장의 지도를 겹쳐서 얻을 수 있다. 각각 "지도 1"과 "지도 2"라고 하자. 지도 1 또는 지도 2 중 어느 하나라도 벽인 부분은 전체 지도에서도 벽이다. 지도 1과 지도 2에서 모두 공백인 부분은 전체 지도에서도 공백이다.
//"지도 1"과 "지도 2"는 각각 정수 배열로 암호화되어 있다.
//암호화된 배열은 지도의 각 가로줄에서 벽 부분을 1, 공백 부분을 0으로 부호화했을 때 얻어지는 이진수에 해당하는 값의 배열이다.

//매개변수    값
//n    5
//arr1    [9, 20, 28, 18, 11]
//arr2    [30, 1, 21, 17, 28]
//출력    ["#####","# # #", "### #", "# ##", "#####"]
//매개변수    값
//n    6
//arr1    [46, 33, 33 ,22, 31, 50]
//arr2    [27 ,56, 19, 14, 14, 10]
//출력    ["######", "### #", "## ##", " #### ", " #####", "### # "]

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var binaryArr: [String] = []
    var answer: [String] = []
    
    for i in 0..<arr1.count {
        binaryArr.append(String((arr1[i] | arr2[i]), radix: 2))
    }
    
    for b in binaryArr {
      var arrLine = ""
    
      if b.count != n {
        for _ in 0..<n-b.count {
            arrLine += " "
        }
      }
      
      for num in b {
          if num == "1" {
              arrLine += "#"
          } else {
              arrLine += " "
          }
      }
      answer.append(arrLine)
    }
    
    return answer
}

solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10])

//간단하게 하는 방법
//return (0..<n).map { String(String(arr1[$0]|arr2[$0]|2<<(n - 1), radix: 2).map { $0 == "1" ? "#" : " " }[1...n]) }

//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    var answer: [String] = []
//
//    for i in 0..<n {
//        var bitwise = String(arr1[i] | arr2[i], radix: 2)
//        bitwise = String(repeating: "0", count: n-bitwise.count) + bitwise
//        answer += [bitwise.reduce("", { $0 + ($1 == "1" ? "#" : " ") })]
//    }
//
//    return answer
//}
