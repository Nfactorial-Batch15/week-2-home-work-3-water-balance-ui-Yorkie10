//
//  ThirdScreen.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 12.12.2021.
//

import SwiftUI

struct ThirdScreen: View {
    var body: some View {
        ZStack{
                    VStack{
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                                .frame(width: 18, height: 24)
                                .padding(.leading,9)
                            Spacer()
                        }.padding(.top)
                        Spacer()
                    }
        VStack(alignment: .center, spacing: 0) {
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.top, 108)
            
            Text("Daily Intake?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            Spacer()
            DailyIntake()
              Spacer()
            CustomButton2()
               .padding(.bottom,  300)
                
        }
            
            .padding([.leading, .trailing], 16)
            .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
            
            
    }
}
}

struct DailyIntake : View{
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(width: 358, height: 108)
            VStack(alignment: .center, spacing: 14) {
                            HStack(spacing: 12){
                             MlScoreButton()
                                Text("ML")
                            }
                        }
            }
            
        }
    }



struct MlScoreButton : View {
    
    var action: () -> Void = {}
    var body : some View {
        
        Button(action: action) {
        
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
            HStack{
                TextField(" " , text: .constant("2400"))
                    .keyboardType(.numberPad)
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .padding(.horizontal, 24)
            }
           
        } .frame(width: 250, height: 60)
        
    
        }
}
}
struct CustomButton2: View {
    var body: some View {
        Button {
            print("Safe button was pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text("Save")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame( height: 60)
        }

    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
