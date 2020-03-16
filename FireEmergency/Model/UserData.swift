//
//  UserData.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-15.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI


class UserData : ObservableObject {
    @Published  var display : String = ""
    @Published var isPresented = false;
    
    //var originator : Originator = Originator(state: "")
   // var careTaker : Caretaker = Caretaker(originator: originator)

    func receieveInput(input : String)
    {
        self.display += input
    }
    
}
