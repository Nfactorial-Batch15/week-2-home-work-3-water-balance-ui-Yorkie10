//
//  FifthScreen.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI

struct FifthScreen: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 20))
                .italic()
                .fontWeight(.black)
                //.frame(maxWidth: .infinity)
                 .padding(.top, 60)
            Spacer()
            WaterBalanceIndicator()
         
                .padding(.bottom, 10)
                    AddButton()
                .padding(.bottom, 45)
           
    }.padding([.leading, .trailing], 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
}

}


struct WaterBalanceIndicator: View{
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 16)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255), .white]), startPoint: .top, endPoint: .bottom))
                    .frame(height: 580)
            VStack{
                
            Circle()
                .foregroundColor(Color.white)
                .frame(width: 170, height: 170)
                .padding(.bottom, 240)
            }
            
            
            Image("Level")
                .frame(height:400 , alignment: .top)

            
            Text("Monday, 25th of November")
                                    .font(.system(size: 17))
                                    .foregroundColor(.black)
                                    .padding(.top, 50)
            VStack{
            Text("Great job!")
                .font(.system(size: 36, weight: .bold))
                    .frame(width: 358, height: 92, alignment: .center)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
               .padding(.top, 250)
            }
            
           
            
                ZStack{
                    VStack(spacing: 20){
                      
           
                Text("34%")
                    .font(.system(size: 36, weight: .bold))
                                           .foregroundColor(.black)
                        
                        Text("0.8 of 2,4 L")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                                          
                            
                
                    }
                } .padding(.bottom, 230)
    
        }
    }
    
}

struct FifthScreen_Previews: PreviewProvider {
    static var previews: some View {
        FifthScreen()
    }
}
