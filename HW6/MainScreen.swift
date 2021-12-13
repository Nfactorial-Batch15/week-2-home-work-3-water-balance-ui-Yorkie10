//
//  MainScreen.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI

struct MainScreen: View {
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
            WaterIndicator()
            
                .padding(.bottom, 10)
                    AddButton()
                .padding(.bottom, 45)
                
                } .padding([.leading, .trailing], 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
            
           
    }
}

struct WaterIndicator: View{
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 16)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255), .white]), startPoint: .top, endPoint: .bottom))
                    .frame(height: 580)
            
            Text("Monday, 25th of November")
                                    .font(.system(size: 17))
                                    .foregroundColor(.black)
                                    .padding(.top, 50)
            VStack{
            Text("Add your first drink for today")
                .font(.system(size: 36, weight: .bold))
                    .frame(width: 358, height: 92, alignment: .center)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
               .padding(.top, 250)
            }
            
            VStack{
                Circle()
                    .trim(from: 0, to: 1)
                    .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                    .frame(width: 180, height: 180)
                    .overlay(
                        Circle()
                          .stroke(Color.white, lineWidth: 2 ))
                    .padding(.bottom, 280)
            }
                ZStack{
                    VStack(spacing: 16){
           
                Text("0%")
                    .font(.system(size: 36, weight: .bold))
                                           .foregroundColor(.black)
                                           //.padding(.bottom,290)
                Text("0 out of 2,4 L")
                                        .font(.system(size: 16))
                                        .foregroundColor(.black)
                    }                   //   .padding(.bottom, 200)
                } .padding(.bottom, 270)
    
        }
    }
    
}

struct AddButton: View {
    var body: some View {
        Button {
            print("Next button was pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text("Add")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame( height: 60)
            
        }

    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
