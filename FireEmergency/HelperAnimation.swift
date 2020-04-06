//
//  HelperAnimation.swift
//  FireEmergency
//
//  Created by Pasion, Dionne on 2020-03-21.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct HelperAnimation: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var wave = false
    @State var updateText = ""
    @State var count = 0
    @State var clickThis = "9"
    @State var animationInputNumbers = ""
    @State var numberStack =  ""
    var nineText = "Press the 9"
    var oneText = "Press the 1 twice"
    var callText = "Press the Call Button"
    let arrayOfString = [
        "You are doing great! Here is some help. Follow the steps to successfully call 9-1-1. Keep up the great work.",
        "Step 1: Press the 9",
        "Step 2: Press the 1 twice",
        "Step 3: Press the Call Button",
        "Step 4: Stay on the phone until an operator responds."
        
    ]
    let arrayOfInput = ["9" , "9 1 1"]
    
    
    var body: some View {
        
        
        
        VStack{
            HStack{
                            
                            Button(action: {
                                self.viewRouter.currentPage = PageEnum.PHONE_PAGE
                            }, label: {
                                Image(systemName: "arrow.left.circle")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .leading)
                                    .foregroundColor(.black)
                                //   .background(Color.black)
                            })
                            Spacer()
                        }.padding(30)
            Spacer()
            VStack{
              Text("\(numberStack)")

            }
         
            
            VStack{ //container for the keypad
          
                HStack{//1's Row
                    
                    Button(action: {}, label: {
                        if self.count ==  3 {
                            //   ZStack{
                            Circle()
                                .stroke(lineWidth: 15)
                                .frame(width: 70 , height:50)
                                .foregroundColor(.blue)
                                .scaleEffect(wave ? 2 : 1)
                                .opacity(wave ? 0.1 : 1)
                                .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true).speed(0.5)).onAppear(){
                                    self.wave.toggle()
                            }
                            //}
                        }else{Text("1")}}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("2")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("3")}).buttonStyle(CircleStyle())
                }//end of hstack 1's
                
                HStack{//4's Row
                    Button(action: {}, label: {
                        Text("4")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("5")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("6")}).buttonStyle(CircleStyle())
                }//end of hstack 4's
                
                HStack{//7's Row
                    Button(action: {}, label: {
                        Text("7")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("8")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {                //Text("9");
                        
                        if self.count ==  2 {
                            //   ZStack{
                            Circle()
                                .stroke(lineWidth: 15)
                                .frame(width: 70 , height:50)
                                .foregroundColor(.blue)
                                .scaleEffect(wave ? 2 : 1)
                                .opacity(wave ? 0.1 : 1)
                                .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true).speed(0.5)).onAppear(){
                                    self.wave.toggle()
                            }
                            
                            //}
                        }else{Text("9")}
                        
                        
                    }).buttonStyle(CircleStyle())
                }//end of hstack 7's
                
                
                HStack{//*'s Row
                    Button(action: {}, label: {
                        Text("*")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("0")}).buttonStyle(CircleStyle())
                    
                    Button(action: {}, label: {
                        Text("#")}).buttonStyle(CircleStyle())
                }//end of hstack
                HStack{//call  button
                    Button(action: {}, label: {
                        
                        if self.count ==  4 {
                            ZStack{
                                Circle()
                                    .stroke(lineWidth: 15)
                                    .frame(width: 70 , height:50)
                                    .foregroundColor(.blue)
                                    .scaleEffect(wave ? 2 : 1)
                                    .opacity(wave ? 0.1 : 1)
                                    .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true).speed(0.5)).onAppear(){
                                        self.wave.toggle()
                                }
                            }
                            
                        }else{Image(systemName: "phone")}
                    }).buttonStyle(CallPhoneStyle())
                }//end of hstack call button
                Divider()
                VStack{
                    HStack{
                        Image("dog").resizable().frame(width:80, height:80)
                            .padding()
                        Text("\(updateText)")
                        Button(action: {self.updateText =
                            self.arrayOfString[self.count];
                            self.count += 1 ;
                            if self.count == 2
                            {self.numberStack = self.arrayOfInput[0]}
                            else if self.count == 3
                            {self.numberStack = self.arrayOfInput[1]}
                            else if self.count == 1
                            {self.numberStack = ""}
                            if self.count == 5
                            {self.count = 0};
                            
                        },
                               label: {
                                Image("RightArrow")
                                    .resizable()
                                    .frame(width:50 , height: 50);
                        }).edgesIgnoringSafeArea(.all)
                        
                    }
                    
                }
                
                
            }//end of vstack
        }
        
    }//end of body
}//end of struct



//end of struct

struct HelperAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HelperAnimation()
    }
}

