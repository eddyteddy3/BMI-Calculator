//
//  ResultPage.swift
//  BMI Cal
//
//  Created by Moazzam Tahir on 20/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ResultPage: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("BMI Calculator")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .padding(.leading)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Text("Your Result")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(.leading, 30)
                
                Spacer()
            }
            .padding(.bottom)
             //Spacer()
            
            VStack(alignment: .center){
                Text("NORMAL")
                    .font(.system(size: 25))
                    .foregroundColor(Color.green)
                    .padding(.top)
                Text("22.1")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                Spacer()
                
                Text("Normal BMI Range:")
                Text("18.5 - 25 kg/m2")
                Spacer()
                Text("You have normal body weight. Good Job!")
                    .font(.headline)
                    .frame(width: 220)
                
                Spacer()
                
                Button(action: {
                    print("result saved.")
                }) {
                    Text("Save Result")
                        .foregroundColor(Color.white)
                }
                    .frame(width: 150, height: 50)
                    .background(Color.pink)
                    .cornerRadius(10)
                .padding(.bottom)
            }
                .frame(width: 350, height: 500)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 30)
            
            Spacer()
            Button(action: {
                print("Buttom Tapped")
            }) {
                Text("RE-CALCULATE YOUR BMI")
                    .foregroundColor(Color.white)
            }
            .frame(height: 60)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.red)
            .cornerRadius(35)
            .padding()
        }
    }
}

#if DEBUG
struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
#endif
