//
//  EscapePlanGridLayout.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-22.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct EscapePlanGridLayout: View {
  
   var body: some View {
                  
                  ZStack {
                     // Color.yellow.edgesIgnoringSafeArea(.all)
                    
                      VStack {
                          Button(action: {
                              
                          }, label: {
                              HStack {
                                 Image(systemName: "text.justify")
                                      .resizable().frame(width: 20, height: 20)
                                      .foregroundColor(.black)
                                  Spacer()
                              }
                              .padding()
                              .padding(.top,80)
                              .padding(.leading,25)
                          })
                         
                          Spacer()
                          
                        HStack(spacing: 10) {
                              Spacer()
                              Button (action: {
                                  
                              }, label: {
                                  
                                  HStack {
                                      // Spacer()
                                     Image(systemName: "arrow.uturn.left")
                                          .resizable().frame(width: 20, height: 20)
                                          .foregroundColor(.white)
                                      Text("Undo")
                                          .foregroundColor(.white)
                                           .font(.system(size:20))
                                  }
                                
                                  
                              })
                              .padding(10)
                              .background(Color.red)
                              .cornerRadius(40)
                              .padding(.trailing,30)
                     
                              Button (action: {
                                  
                              }, label: {
                                  
                                  HStack {
                                      // Spacer()
                                     Image(systemName: "xmark.circle")
                                          .resizable().frame(width: 20, height: 20)
                                          .foregroundColor(.white)
                                      Text("Clear")
                                          .foregroundColor(.white)
                                          .font(.system(size:20))
                                  }
                                  
                              })
                                  .padding(10)
                                  .background(Color.red)
                                  .cornerRadius(40)
                                  .padding(.trailing,24)
                          

                              Button (action: {
                                  
                              }, label: {
                                  
                                  HStack {
                                      // Spacer()
                                     Image(systemName: "bookmark")
                                          .resizable().frame(width: 20, height: 20)
                                          .foregroundColor(.white)
                                      Text("Save")
                                          .foregroundColor(.white)
                                          .font(.system(size:20))
                                  }
                                  
                              })
                                  .padding(10)
                                  .background(Color.red)
                                  .cornerRadius(40)
                                  .padding(.trailing,20)
                          
                          
                          }
                          .padding()
                          .padding(.top,-160)
                        //  .padding(.leading,25)
                      }
            
                    VerticleLine()
                    HorizontalLine()

                  } // end of ZStack

              }

}

  
struct EscapePlanGridLayout_Previews: PreviewProvider {
    static var previews: some View {
        EscapePlanGridLayout()
    }
}

struct VerticleLine: View {
    var body: some View {
        VStack(spacing : 34) {
            ForEach(0 ..< 24) { item in
                Divider()
            }
        }
    }
}

struct HorizontalLine: View {
    var body: some View {
        HStack(spacing : 18) {
            ForEach(0 ..< 24) { item in
                Divider()
            }
        }
    }
}
