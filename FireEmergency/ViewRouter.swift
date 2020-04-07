//
//  ViewRouter.swift
//  FireEmergency
//
//  Created by Pasion, Dionne on 2020-03-28.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    @Published  var display : String = ""
    var currentPage: PageEnum = PageEnum.HOME_PAGE {
        didSet {
            withAnimation() {
                objectWillChange.send(self)
            }
        }
    }
    
    func getBadInputs() -> String{
        var badUserInput:String = ""
        //var startIndex = userInput.startIndex
        let firstIndex = display.index(display.startIndex, offsetBy: 0)
        let secondIndex = display.index(display.startIndex, offsetBy: 1)
        let thirdIndex = display.index(display.startIndex, offsetBy: 2)
        if display[firstIndex] != "9"
        {
            badUserInput.append(display[firstIndex])
        }
        if display[secondIndex] != "1"
        {
            badUserInput.append(display[secondIndex])
        }
        if display[thirdIndex] != "1"
        {
            badUserInput.append(display[thirdIndex])
        }
        return badUserInput
    }
    
    func getGoodInputs() -> String{
        var goodUserInput:String = ""
        //var startIndex = userInput.startIndex
        let firstIndex = display.index(display.startIndex, offsetBy: 0)
        let secondIndex = display.index(display.startIndex, offsetBy: 1)
        let thirdIndex = display.index(display.startIndex, offsetBy: 2)
        if display[firstIndex] == "9"
        {
            goodUserInput.append(display[firstIndex])
            
        }
        if display[secondIndex] == "1"
        {
            goodUserInput.append(display[secondIndex])
        }
        if display[thirdIndex] == "1"
        {
            goodUserInput.append(display[thirdIndex])
        }
        return goodUserInput
    }
    
    func printStars() -> Int{
        //var goodUserInput:String = ""
        var counter:Int = 0
        //var startIndex = userInput.startIndex
        let firstIndex = display.index(display.startIndex, offsetBy: 0)
        let secondIndex = display.index(display.startIndex, offsetBy: 1)
        let thirdIndex = display.index(display.startIndex, offsetBy: 2)
        if display[firstIndex] == "9"
        {
            counter += 1
        }
        if display[secondIndex] == "1"
        {
            counter += 1
        }
        if display[thirdIndex] == "1"
        {
            counter += 1
        }
        return counter
    }
}



