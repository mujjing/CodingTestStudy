import UIKit

//행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.

//arr1    arr2    return
//[[1,2],[2,3]]    [[3,4],[5,6]]    [[4,6],[7,9]]
//[[1],[2]]    [[3],[4]]    [[4],[6]]

var result: [[Int]] = []
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    for i in 0..<arr1.count {
      result.append([])
      for j in 0..<arr1[i].count {
        result[i].append(arr1[i][j] + arr2[i][j])
      }
    }
    return result
    
    //간단하게 하면
    //return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}

solution([[1],[2]], [[3],[4]])
