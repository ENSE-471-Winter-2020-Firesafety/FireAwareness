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
}



