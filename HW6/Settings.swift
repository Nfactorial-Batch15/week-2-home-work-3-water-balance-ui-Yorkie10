//
//  Settings.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        VStack{
        Text("Today")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 20))
                .italic()
                .fontWeight(.black)
                //.frame(maxWidth: .infinity)
                 .padding(.top, 20)
            Spacer()
            VStack{
            HStack{
                               Text("Daily Intake Level")
                               Spacer()
                               TextField("ML", text: .constant("2400 ML"))
                                   .keyboardType(.numberPad)
                                   .multilineTextAlignment(.trailing)
                HStack{
                    Image(systemName: "chevron.right" )
                }
                           }
            Divider()
                    .padding(10)
                            HStack{
                                Text("Your goal")
                                Spacer()
                                Image(systemName: "chevron.right" )
                            }
                    Divider()
                    .padding(10)
                              HStack{
                              Text("Reminder")
                                Spacer()
                                  Image(systemName: "chevron.right" )
            }
            Divider()
                    .padding(10)
         
            
                    .padding(10)
           Spacer()
            
}
       
              .padding(.horizontal)
              .font(.system(size: 17))
            
          
                   
    }
}
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
