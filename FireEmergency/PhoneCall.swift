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
                                   
                         }, label: {
                                
                          Image("leftArrow").foregroundColor(.white)
                    })
                     
                    Spacer()
                }
                .padding()
                
                 Spacer()
                
                Text(env.display).foregroundColor(.black)
                    .font(.system(size:64))
                
                     ForEach(buttons , id: \.self) { row in
                        HStack(spacing: 20) {
                             
                             ForEach(row , id:\.self) { button in
                               
                                
                                 Button(action: {
                                //    self.env.display += button
                                    self.env.receieveInput(input: button)
                                 //   self.env.memento()
                                 }, label: {
                                     Text(button)
                                 })
                             }
                         .buttonStyle(CircleStyle())
                         
                         }
                     }
                
                    HStack {
                            Button(action: {}) {
                            Image(systemName: "phone")
                        }
                         .buttonStyle(CallPhoneStyle())
                         .frame(width: 270, height: 70, alignment: .center)
                                
                        Button(action: {
                                    
                               self.env.isPresented.toggle()
                                    self.env.display.removeLast()
                                    
                                }, label: {
                                Image(systemName: "xmark.circle.fill")
                             .foregroundColor(.black)
                                    
                            })
                                
                    }
                    .padding(10)
                 } // end of Vstack
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
