
//
//  CardView.swift
//  Swipe
//
//  Created by Mahamed on 2020-04-05.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @State private var translation: CGSize = .zero
    
    private var user: User
    private var onRemove: (_ user: User) -> Void
    
    private var thresholdPercentage: CGFloat = 0.5 // when the user has draged 50% the width of the screen in either direction
    
    init(user: User, onRemove: @escaping (_ user: User) -> Void) {
           self.user = user
           self.onRemove = onRemove
       }
    
    // 4
       /// What percentage of our own width have we swipped
       /// - Parameters:
       ///   - geometry: The geometry
       ///   - gesture: The current gesture translation value
    
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
           gesture.translation.width / geometry.size.width
       }
    
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Text(self.user.quesition)
                    .fontWeight(.semibold)
                    .font(.system(size:20))
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .offset(x: self.translation.width, y: self.translation.height) // 2
            .gesture(
                // 3
                DragGesture()
                    .onChanged { value in
                        self.translation = value.translation
                }.onEnded { value in
                    // 6
                    // determine snap distance > 0.5 aka half the width of the screen
                    if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                        self.onRemove(self.user)
                    } else {
                        self.translation = .zero
                    }
                }
            )

            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(id: 0, quesition: "911 what is your emergency?"),
                 onRemove: { _ in
                    // do nothing
            })
            .frame(height: 400)
            .padding()
    }
}


