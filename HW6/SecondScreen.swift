//
//  SecondScreen.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 12.12.2021.
//

import SwiftUI

struct SecondScreen: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.top, 108)
            
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            Spacer()
            TimerView()
            Spacer()
            CustomButton()
                .padding(.bottom, 50 )
    }
        
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        
}
}


struct TimerView : View{
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            
            VStack{
                
                HStack(spacing: 20){
                    
                    ButtonCreator(text: "15 Minutes")
                    ButtonCreator(text: "30 Minutes")
                }
            
                 HStack(spacing: 20){
                ButtonCreator(text: "45 Minutes")
                ButtonCreator(text: "1 Hour")
            }
                
                HStack(spacing: 20){
               ButtonCreator(text: "1,5 Hours")
               ButtonCreator(text: "2 Hours")
                    
                }
                
                
                HStack(spacing: 20){
               ButtonCreator(text: "3 Hour")
               ButtonCreator(text: "4 Hours")
           
            }
            } .padding(.horizontal, 19)
                .padding(.vertical, 24)
    }.frame(height: 330)
    
    }
}


struct ButtonCreator: View {
    let text: String
     var action: () -> Void = {}

        var body: some View {
          Button(action: action) {
             ZStack {
               RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                // .border(Color.gray, width: 1)
                 // .opacity(0.05)
                .frame(width: 150, height: 60)
                  Text(text)
                .foregroundColor(.black)
                 
                 
                

        }
     }
   }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
