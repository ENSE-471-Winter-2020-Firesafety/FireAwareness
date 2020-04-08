
//  QuesitionView.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-04-06.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI


struct QuesitionView: View {
    
    @State var questions :[User] = [
    
        User(id: 0, quesition: "Okay, the fire trucks are on their way. Don't go back into the house."),
        User(id: 1, quesition: "What is your phone number?"),
        User(id: 2, quesition: "Is anyone still in the house?"),
        User(id: 3, quesition: "What is your address?"),
        User(id: 4, quesition: "How can I help you?"),
        User(id: 5, quesition: "One moment."),
        User(id: 6, quesition: "911 what is your emergency?")
    ]
    
    // 2
    /// Return the CardViews width for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current user
    
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(questions.count - 1 - id) * 7
        return geometry.size.width - offset
    }
    
    // 3
       /// Return the CardViews frame offset for the given offset in the array
       /// - Parameters:
       ///   - geometry: The geometry proxy of the parent
       ///   - id: The ID of the current user
    
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
           return  CGFloat(questions.count - 1 - id) * 7
       }
    
    // Compute what the max ID in the given users array is.
    private var maxID: Int {
        return self.questions.map { $0.id }.max() ?? 0
    }
    
    
    
    var body: some View {
        VStack {
           //CardView()
            GeometryReader { geometry in
                
                VStack {
                     Spacer()
                    ZStack {
                        ForEach(self.questions, id: \.self) { user in
                            
                            CardView(user: user, onRemove: { removedUser in
                             // Remove that user from our array
                             self.questions.removeAll { $0.id == removedUser.id }
                            })
                            .animation(.spring()) // Animate our changes to our frame
                            .frame(width: self.getCardWidth(geometry, id: user.id),
                                   height: 400)
                            .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                                // 8
                                .frame(width: self.getCardWidth(geometry, id: user.id), height: 400)
                                .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                            
                        }
                        
                    } // end of ZStack
                   // Spacer()
                } // end of VStack
               
                
            }
        }
        .padding()
    
    }
}

struct QuesitionView_Previews: PreviewProvider {
    static var previews: some View {
        QuesitionView()
    }
}

