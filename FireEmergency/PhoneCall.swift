//
//  PhoneCall.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-15.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct PhoneCall: View
{
    @EnvironmentObject var env: UserData
    @Environment(\.presentationMode) var presentationMode
    @State var isClicked = false
    @State var helpMode = false
     @State var backButton = false
    var showClearIcon = false
    

    
    let buttons = [
        ["1" , "2" , "3"],
        ["4" , "5" , "6"],
        ["7" , "8" , "9"],
        ["*" , "0" , "#"]
    ]
    
    var body: some View
    {
        ZStack(alignment: .bottom) {
           
            
            Color.white.edgesIgnoringSafeArea(.all)
            VStack (spacing: 20) {
               
                HStack {
                        Button(action: {
                            //self.presentationMode.wrappedValue.dismiss()
                            self.backButton.toggle()
                         }, label: {
                                
                   //       Image("leftArrow").foregroundColor(.black)
                            Image(systemName: "arrow.left.circle")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .leading)
                                .foregroundColor(.black)
                            Spacer()
                            
                    })
           
                    Button(action: {
                       
                        self.isClicked.toggle()
                    
                    }, label: {
                        VStack {
                            HStack {
                                Image("setting")
                                 .foregroundColor(.white)
                                .background(Color.black)
                            }
                            
                            Text("Option")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                            
                        }
                    })
                }
                .padding()
                
                 Spacer()
                
                VStack {
                    HStack {
                        if isClicked {
                            Toggle(isOn: $helpMode, label: {
                                HStack {
                                    Text("Help Mode")
                                        .font(.system(size: 30))
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            })
                        }
                        
                    }
                    Spacer()
                }
                Spacer()
 
                Text(env.display).foregroundColor(.black)
                    .font(.system(size:64))
                
                     ForEach(buttons , id: \.self) { row in
                        HStack(spacing: 20) {
                             
                             ForEach(row , id:\.self) { button in
                
                                 Button(action: {
                                    
                                    self.env.receieveInput(input: button)
                                    
                                 }, label: {
                                     Text(button)
                                 })
                             }
                             .buttonStyle(CircleStyle())

                         }
                        
                     }
                
                    HStack {
                        HStack {
                            Button(action: {}) {
                            Image(systemName: "phone")
                                
                        }
                            .padding(.top)
                         .buttonStyle(CallPhoneStyle())
                              //Spacer()
                        }
                        .padding(.trailing,10)
                        .frame(width: 105, height: 20, alignment: .leading)
                        
                        Text(" ")
                        HStack {
                        Button(action: {
                                    
                               self.env.isPresented.toggle()
                                    
                                    self.env.display.removeLast()
                                    
                                }, label: {
                                    
                                   if !self.env.display.isEmpty {
                                        Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.black)
                                            .font(.system(size:20))
                                          
                                    }
                            })
                        }
                        .padding(.leading,10)

                    }
                        .frame(width: 200, height: 20, alignment: .trailing)
                        
                    .padding(10)
               
                 } // end of Vstack
                .padding(.bottom,30)
        
        }

}

    struct PhoneCall_Previews: PreviewProvider
    {
        static var previews: some View
        {
            PhoneCall().environmentObject(UserData())
        }
    }
        
}
