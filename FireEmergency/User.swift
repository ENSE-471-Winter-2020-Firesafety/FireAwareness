//
//  User.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-04-06.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI


struct User: Hashable, CustomStringConvertible {
    var id: Int
    
    let quesition: String
    
    var description: String {
        return "\(quesition), id: \(id)"
    }
}
