//
//  CallScreen.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-04-05.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct CallScreen: View {
    @State var homeButton = false;
    @State var callMode : Bool = true;
    @EnvironmentObject var display : UserData
    @State var disAbledOtherButtons = false;
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        
                        self.homeButton.toggle()
                        
                    }, label: {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        
                    })
                    Spacer()
                }
                .padding()
                Spacer()
                VStack {
                    Text(display.display)
                        .font(.system(size:40))
                    //   Spacer()
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image("mute")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            
                        })
                        .buttonStyle(CircleStyle())
                  
                        Button(action: {
                            
                        }, label: {
                            Image("keypad")
                            .resizable()
                            .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            
                        }) .buttonStyle(CircleStyle())
                            .padding()
                        
                   
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "speaker.2.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            
                        })
                         .buttonStyle(CircleStyle())
                       // .padding()
                        
                    } // end HStack for buttons
                        .padding(-10)
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            
                        })
                         .buttonStyle(CircleStyle())
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "video.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            
                        })
                             .buttonStyle(CircleStyle())
                            .padding()
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "person.3.fill")
                                .foregroundColor(.black)
                            
                        })
                         .buttonStyle(CircleStyle())
                        // .padding()
                        
                    } // end HStack for buttons
                    .padding(-10)
                   // Spacer()
                    VStack {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "phone")
                            .foregroundColor(.white)
                        })
                            .buttonStyle(CallPhoneStyle(callMode: callMode))
                    }
                    Spacer()
                    
                    
                } // ens of Vstack
               Spacer()
                VStack {
                    
                    HStack {
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                        
                    }
                    .padding()
                    Spacer()
                }
                
                
                
            } // end of VStack
        } // end of ZStack
    }
}

struct CallScreen_Previews: PreviewProvider {
    static var previews: some View {
        CallScreen().environmentObject(UserData())
    }
}
