//
//  ContentView.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-15.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct HomePageDetail: View {
    
    @State var show_phone_Screen = false;
    @State var isActive: Bool = false;
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    
    var body: some View
    {
        
        NavigationView
        {
        ZStack {
         
            
//            .forcegroundColor()
//            Color(red: 0.5, green: 0.3, bule: 0.4)
//            Color.pink.edgesIgnoringSafeArea(.bottom)
            
            
            Rectangle()
                .foregroundColor(Color(red: 195.0 / 255.0, green: 140.0/255.0, blue: 148.0/255.0))
                .edgesIgnoringSafeArea(.bottom)
                
            /*
            Rectangle()
               
                .foregroundColor(Color(red: 203.0/255.0, green: 108.0/255.0, blue: 99.0/255.0))
                .frame(height: 80.0)
                .padding(.trailing,0)
                .cornerRadius(16.0)
                .position(x: 207, y: 40)
                */

            VStack {
                HStack {
                    Text("Fire Awareness")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        
                    Spacer()

                    Image("dog")
                    .resizable()
                        .frame(width: 75, height: 60, alignment: .trailing)
                }
                .padding()
                .background(Color(red: 203.0/255.0, green: 108.0/255.0, blue: 99.0/255.0))
                
                Spacer()
          
                
                
                Button(action: {self.viewRouter.currentPage = PageEnum.PHONE_PAGE})
                {
                    Text("Practice Phone Call")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.leading)
                    .frame(width: 300.0, height: 100.0)
                    .background(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
                    .cornerRadius(40)
                    .shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
                }
//                Button(action: {
//
//                    self.showPhoneScreen()
//
//                    }) {
//
//                    Text("Practice Phone Call")
//                    .font(.title)
//                    .fontWeight(.medium)
//                    .foregroundColor(Color.black)
//                    .multilineTextAlignment(.center)
//                    .padding(.leading)
//                    .frame(width: 300.0, height: 100.0)
//                    .background(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(40)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
//
////                        if show_phone_Screen {
////                            EscapePlanGridLayout()
////                        }
//
//
//                }
                    
                
                
               
                
                Spacer()
        
                Button(action:{self.viewRouter.currentPage = PageEnum.ESCAPE_PAGE}) {
                                   Text("Draw Escape Plan")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 255/255, green: 172/255, blue: 4/255))
                    .cornerRadius(40)
                    .shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
                               }
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Text("Fire Survival Info")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 251/255, green: 219/255, blue: 123/255))
                    .cornerRadius(40)
                    .shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
//                                       .position(x: 200, y: 150)
                               }
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Text("Fire Safety Info")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 251/255, green: 251/255, blue: 4/255))
                                    .cornerRadius(40).shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
                    
                               }
                Spacer()
            }.padding()
           
            
          
        } // end of ZStack
            
    
        } // end of Nav
            .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Home page")
   
    }
    
    func showPhoneScreen() {
         show_phone_Screen.toggle()
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageDetail().environmentObject(ViewRouter())
    }
}



