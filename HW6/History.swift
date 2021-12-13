//
//  History.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI

struct History: View {
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
                               Text("250 Ml")
                               Spacer()
                               TextField("ML", text: .constant("12:13"))
                                   .keyboardType(.numberPad)
                                   .multilineTextAlignment(.trailing)
                           }
            Divider()
                    .padding(10)
                            HStack{
                                Text("200 Ml")
                                Spacer()
                                TextField("ML", text: .constant("14:10"))
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.trailing)
                            }
                    Divider()
                    .padding(10)
                              HStack{
                              Text("50 Ml")
                                Spacer()
                               TextField("ML", text:              .constant("15:30"))
                                       .keyboardType(.numberPad)
                                .multilineTextAlignment(.trailing)
            }
            Divider()
                    .padding(10)
            HStack{
            Text("300 Ml")
              Spacer()
             TextField("ML", text:              .constant("19:10"))
                     .keyboardType(.numberPad)
              .multilineTextAlignment(.trailing)
    }
            Divider()
                    .padding(10)
           Spacer()
            
}
       
              .padding(.horizontal)
              .font(.system(size: 17))
}
}
}
struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
