//
//  ContentView.swift
//  BMI Cal
//
//  Created by Moazzam Tahir on 19/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("BMI Calculator")
            }
            
            HStack{
                RoundRect()
                    .padding(.leading)
            
                Spacer()
                
                RoundRect()
                    .padding(.trailing)
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(height: 100)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            //Spacer()
            
            HStack{
                RoundRect()
                    .padding(.leading)
                
                Spacer()
                
                RoundRect()
                    .padding(.trailing)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                
                
                Rectangle()
                .frame(height: 50)
            
            }
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct RoundRect: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.gray)
            .frame(width: 180, height: 250)
            .padding(.bottom)
    }
}
