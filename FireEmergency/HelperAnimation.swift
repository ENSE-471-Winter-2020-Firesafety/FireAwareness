//
//  HelperAnimation.swift
//  FireEmergency
//
//  Created by Pasion, Dionne on 2020-03-21.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct HelperAnimation: View {
    @State var helpAnimationOn = false
    var body: some View {
        //
        
        ZStack{
            VStack{
            Spacer().background(Color.red).padding(.all ,16)
            //Want this on the bottom of the safezone
                HStack{
                    Text("You are doing great! Here is some help. Follow the steps to successfully call 9-1-1. Keep up the great work!").font(.caption)
                    
                    Image("dog").resizable().frame(width:77 , height: 75)
                
                }
                }//end of vstack
    
            }//end of zstack
    
        }
}//end of struct

struct HelperAnimation_Previews: PreviewProvider {
    static var previews: some View {
        HelperAnimation()
    }
}
