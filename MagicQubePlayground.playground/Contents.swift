//: Playground - noun: a place where people can play

import UIKit

func isMagicQube(qube : [[Int]]) -> Bool{
    var testSum = 0
    let size = qube.count
    for i in 0..<size{
        testSum += qube[0][i]
    }
    
    var diag1sum = 0
    var diag2sum = 0
    
    for i in 0..<size{
        
        diag1sum += qube[i][i]
        diag2sum += qube[i][size-1-i]
        
        var rowSum = 0
        var colSum = 0
        
        for j in 0..<size{
            rowSum += qube[i][j]
            colSum += qube[j][i]
        }
        
        if rowSum != testSum || colSum != testSum{
            return false
        }
        
    }
    
    if diag1sum != testSum || diag2sum != testSum{
        return false
    }
    
    return true
}

let q = [
    [4,9,2],
    [3,5,7],
    [8,1,6]
]

isMagicQube(qube: q)







