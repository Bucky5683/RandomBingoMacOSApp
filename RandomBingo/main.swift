//
//  main.swift
//  RandomBingo
//
//  Created by 김서연 on 2023/07/27.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice: Int = 0
while true {
    var userInput = readLine() //string 타입으로 받아옴
    
    if let input = userInput{ //Optional 벗기기
        if let number = Int(input){ //Optional 벗기기
            myChoice = number
        }
    }
    
    if computerChoice > myChoice{
        print("up")
    } else if computerChoice < myChoice{
        print("down")
    } else {
        print("Bingo")
        break //반복문 종료
    }
}
