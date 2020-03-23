//
//  HelperAnimation.swift
//  FireEmergency
//
//  Created by Pasion, Dionne on 2020-03-21.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI
import UIKit
struct HelperAnimation: View {
    @State var helpAnimationOn = false
    @State var updateText = ""
    @State var count = 0
    
    var nineText = "Press the 9"
    var oneText = "Press the 1 twice"
    var callText = "Press the Call Button"
    var arrayOfString: [String] = [
        "You are doing great! Here is some help. Follow the steps to successfully call 9-1-1. Keep up the great work",
        "Press the 9",
        "Press the 1",
        "Press the Call Button"
    ]
    
    
    var body: some View {
        
        
        VStack{ //container for the keypad
            
            HStack{//1's Row
                
                Button(action: {}, label: {
                    Text("1")}).buttonStyle(CircleStyle())
                
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
                
                Button(action: {}, label: {
                    Text("9")}).buttonStyle(CircleStyle())
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
                    Image(systemName: "phone")}).buttonStyle(CallPhoneStyle())
            }//end of hstack call button
            
            VStack{
                HStack{
                    Image("dog").resizable().frame(width:80, height:80)
                        .padding()
                    Text("\(updateText)")
                    Button(action: {self.updateText = self.arrayOfString[self.count]; self.count += 1 },
                    label: {
                        Image("RightArrow")
                        .resizable()
                        .frame(width:50 , height: 50)})
                }
            }
            
        }//end of vstack
        
    }//end of body
}//end of struct


//end of struct

struct HelperAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HelperAnimation()
    }
}
