//
//  CircleStyle.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-15.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct CircleStyle: ButtonStyle
{
    // .foregroundColor(.black).padding(4)
    @State var helpMode = false
    
    func makeBody(configuration: ButtonStyleConfiguration) -> some View {
        
            Circle()
                .fill(helpMode ? Color.gray : Color.white)
                .overlay(Circle().stroke(lineWidth: 2).foregroundColor(helpMode ? Color.gray : Color.black).padding(4))

            
        .overlay(
                Circle()
                    .fill(Color.gray)
                    .opacity(configuration.isPressed ? 0.5 : 0)
            ) //.overlay(Circle().stroke(lineWidth:2).foregroundColor(.white).padding(4))
              
        // .overlay(configuration.label.foregroundColor(.black))
        .overlay(configuration.label.foregroundColor(helpMode ? Color.gray : Color.black))
        .frame(width: 75, height: 75)

        
    }
    
   
}
