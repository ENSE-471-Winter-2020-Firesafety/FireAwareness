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
    
    @State var helpMode = false
      
    @State var options = false
      
 
    var body: some View
    {
        ZStack {
               
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
                               self.options.toggle()
                               
                           }, label: {
                                  Image("setting")
                                   .foregroundColor(.white)
                                    .background(Color.black)
                           })
                       } // options
                       
                       HStack {
                           if options {
                               Toggle(isOn: $helpMode, label: {
                                   Text("Help Mode")
                                       .font(.system(size:25))
                                       .foregroundColor(.black)
                               })
                           }
                        
                       } // HStack for helpMode toggle
                           
                   } // option + back Button
                       
                   .padding()
                  Spacer()
                   
                   HStack {
             
                           Text(env.display)
                           .foregroundColor(.black)
                           .font(.system(size:25))

                       } // HStack for display Area
                   
                   HStack {
                       // button 1
                       
                       Button(action: {
                           
                           self.env.receieveInput(input: "1")
                       }, label: {
                           Text("1")
                           
                           })
                              .buttonStyle(CircleStyle())
                       
                       // button 2
                       Button(action: {
                               self.env.receieveInput(input: "2")
                       }, label: {
                           Text("2")
                           .foregroundColor(.black)
                           
                           }).disabled(helpMode)
                            .buttonStyle(CircleStyle(helpMode: helpMode))
                           
                       // button 3
                       Button(action: {
                               self.env.receieveInput(input: "3")
                           
                       }, label: {
                           Text("3")
                               .foregroundColor(.black)
                           
                           }).disabled(helpMode)
                            .buttonStyle(CircleStyle(helpMode: helpMode))
                       
                       } // end of HStack for button 1 , 2 and 3
                   
                   HStack {
                             // button 4
                           Button(action: {
                                   self.env.receieveInput(input: "4")
                           }, label: {
                               Text("4")
                                   .foregroundColor(.black)
                           }).disabled(helpMode)
                           .buttonStyle(CircleStyle(helpMode: helpMode))
                                      
                           // button 5
                           Button(action: {
                                   self.env.receieveInput(input: "5")
                               }, label: {
                                   Text("5")
                                   .foregroundColor(.black)
                                          
                           }).disabled(helpMode)
                           .buttonStyle(CircleStyle(helpMode: helpMode))
                                          
                           // button 6
                           Button(action: {
                                   self.env.receieveInput(input: "6")
                               }, label: {
                                   Text("6")
                                   .foregroundColor(.black)
                                          
                               }).disabled(helpMode)
                               .buttonStyle(CircleStyle(helpMode: helpMode))
                                      
                           } // end of HStack for button 4 , 5 and 6
                   
                           HStack {
                                      // button 7
                                    Button(action: {
                                           self.env.receieveInput(input: "7")
                                                  
                                    }, label: {
                                        Text("7")
                                            .foregroundColor(.black)
                                    }).disabled(helpMode)
                                    .buttonStyle(CircleStyle(helpMode: helpMode))
                                               
                                    // button 8
                                    Button(action: {
                                           self.env.receieveInput(input: "8")
                                        }, label: {
                                            Text("8")
                                            .foregroundColor(.black)
                                                   
                                    }).disabled(helpMode)
                                    .buttonStyle(CircleStyle(helpMode: helpMode))
                                                   
                                    // button 9
                                    Button(action: {
                                       self.env.receieveInput(input: "9")
                                   }, label: {
                                       Text("9")
                                   })
                                   .buttonStyle(CircleStyle())
                               
                            } // end of HStack for button 7 , 8 and 9
                   
                           HStack {
                                // button 4
                              Button(action: {
                                      self.env.receieveInput(input: "*")
                              }, label: {
                                  Text("*")
                                      .foregroundColor(.black)
                              }).disabled(helpMode)
                              .buttonStyle(CircleStyle(helpMode: helpMode))
                                         
                              // button 5
                              Button(action: {
                                      self.env.receieveInput(input: "0")
                                  }, label: {
                                      Text("0")
                                      .foregroundColor(.black)
                                             
                              }).disabled(helpMode)
                              .buttonStyle(CircleStyle(helpMode: helpMode))
                                             
                              // button 6
                              Button(action: {
                                      self.env.receieveInput(input: "#")
                                  }, label: {
                                      Text("#")
                                      .foregroundColor(.black)
                                             
                                  }).disabled(helpMode)
                                  .buttonStyle(CircleStyle(helpMode: helpMode))
                                         
                       } // end of HStack for button * , 0 and #
                   
                       VStack {

                           HStack {
                               
                               HStack {
                                   
                                       Button(action: {
                                           
                                           }, label: {
                                                   Image(systemName: "phone")
                                                                     
                                               }).buttonStyle(CallPhoneStyle())
                                               .padding()
                                       } // HStack for Call Icon
                                       .padding(.leading,50)
                               
                                   HStack {
                                             Button(action: {
                                               
                                                   if !self.env.display.isEmpty {
                                                       
                                                       self.env.display.removeLast()
                                                   }
                                               
                                             }, label: {

                                                Image(systemName: "xmark.circle.fill")
                                                 .foregroundColor(.black)
                                                .font(.system(size:20))
                                               
                                       }).padding(.leading,10)
                                       
                                   } // HStack for Clear Icon
                                   
                               } // HStack for both Call and Clear Icon

                           } // end of HStack for button 4 , 5 and 6
                   
                   } // end of vstack
               
           } // end of zstack
        
    }

}

struct PhoneCall_Previews: PreviewProvider
{
    static var previews: some View
    {
        PhoneCall().environmentObject(UserData())
    }
}
        

