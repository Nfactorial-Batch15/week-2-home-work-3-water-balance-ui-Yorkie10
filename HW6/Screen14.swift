//
//  Screen14.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI

struct Screen14: View {
    var body: some View {
        VStack{
                    ZStack{
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                                .frame(width: 18, height: 24)
                                .padding(.leading,9)
                            Spacer()
                            Text("Today")
                                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                                    .font(.system(size: 20))
                                    .italic()
                                    .fontWeight(.black)
                                    //.frame(maxWidth: .infinity)
                                     .padding(.top, 20)
                                Spacer()
                        }.padding(.bottom, 700)
                        Spacer()
                    WhatIsYourGoal()
                        Spacer()
                        CustomButton()
                            .padding(.top, 600 )
                    }
                    .padding([.leading, .trailing], 16)
                .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct WhatIsYourGoal : View{
    var body : some View{
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
        
            VStack(spacing: 20){
                ButtonMaker(text: "Goal number one")
            
            VStack(spacing: 20){
                ButtonMaker(text: "Goal number two")
            }
            VStack(spacing: 20){
                ButtonMaker(text: "Goal number three")
    
            }
            VStack(spacing: 20){
                ButtonMaker(text: "Goal number four")
             }
             }.padding(.horizontal, 19)
                .padding(.vertical, 24)
        }.frame(height: 330)
}
}
struct ButtonMaker: View {
    let text: String
     var action: () -> Void = {}

        var body: some View {
          Button(action: action) {
             ZStack {
                 RoundedRectangle(cornerRadius: 16)
                                 .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                //.fill(Color.white)
                // .border(Color.gray, width: 1)
                 // .opacity(0.05)
                .frame(width: 320, height: 60)
                  Text(text)
                .foregroundColor(.black)
                 
                 
                 
                

        }
     }
   }
}


struct Screen14_Previews: PreviewProvider {
    static var previews: some View {
        Screen14()
    }
}
