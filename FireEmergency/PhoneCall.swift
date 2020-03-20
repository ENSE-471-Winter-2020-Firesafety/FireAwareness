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
    var showClearIcon = false
    
    let buttons = [
        ["1" , "2" , "3"],
        ["4" , "5" , "6"],
        ["7" , "8" , "9"],
        ["*" , "0" , "#"]
    ]
    
    var body: some View
    {
        
        ZStack {
           Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack {
                    HStack {
                        Button(action: {
                            
                        }, label: {
                              Image(systemName: "arrow.left.circle")
                               .resizable()
                               .frame(width: 40, height: 40, alignment: .leading)
                                .foregroundColor(.black)
                             //   .background(Color.black)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            self.isClicked.toggle()
                        }, label: {
                               Image("setting")
                                .foregroundColor(.white)
                                 .background(Color.black)
                        })
                        
                    } // end of HStack option and backButton
                
                    HStack {
                        if isClicked {
                            Toggle(isOn: $helpMode, label: {
                                Text("Help Mode")
                                .font(.system(size: 30))
                                .foregroundColor(.black)

                            })
                            
                        } // end of if
                        
                    } // end of HStack helpMode
                    
                } // end of VStack for helpMode , back button and option
                    
                .padding()
                
                Spacer()

                VStack {
                    Text(env.display).foregroundColor(.black)
                    .font(.system(size:30))
     
                     ForEach(buttons , id: \.self) { row in
                        HStack {
                                ForEach(row , id:\.self) { button in
                                    Button(action: {
                                            self.env.receieveInput(input: button)
                                        
                                            }, label: {
                                                
                                          Text(button)
                                     })
                                    
                            } // end of forEach in each row
                            
                            .buttonStyle(CircleStyle())
                    

                        } // end of HStack for buttons
                       
                    } //  end of forEach in row
    
                    
                } // end of VStack for all of the the buttons
                   .padding(.bottom,20)
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "phone")
                    }
                     .buttonStyle(CallPhoneStyle())
                    .padding(.top,10)
                   
                    
                    Button(action: {
                        self.env.isPresented.toggle()
                        
                        self.env.display.removeLast()
                        
                    }, label: {
                        if !self.env.display.isEmpty {
                            Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.black)
                            .font(.system(size:20))
                            .frame(width: 40, height: 10, alignment: .trailing)
                        } // end of if
                    })
                    

                } // end of HStack for Call button and clear
                      .padding(.bottom,20)
                .padding(.leading,40)
        
            } // end of VStack for all of the the view
   
        } // end ZStack
            
    }

}

struct PhoneCall_Previews: PreviewProvider
{
    static var previews: some View
    {
        PhoneCall().environmentObject(UserData())
    }
}
        

