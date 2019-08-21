//
//  ResultPage.swift
//  BMI Cal
//
//  Created by Moazzam Tahir on 20/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ResultPage: View {
    
    @State var toggleView = false
    
    var body: some View {
        ZStack {
            
            Button(action: {
                self.toggleView.toggle()
            }) {
                Text("Calculate")
            }
            
            //ContentView(sliderVal: 125, age: 18, weight: 50)
            
            ResultMenu(toggleView: $toggleView)
                .rotation3DEffect(Angle(degrees: toggleView ? 0 : 40), axis: (x: 10.0, y: 0, z: 0))
                .animation(.spring())
                .offset(y: toggleView ? 0 : UIScreen.main.bounds.height)
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

struct ResultMenu: View {
    @Binding var toggleView: Bool
    @State var show = false
    
    var body: some View {
        VStack {
            
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
                    self.show.toggle()
                }) {
                    Text("Save Result")
                        .foregroundColor(Color.white)
                }
                .frame(width: 150, height: 50)
                .background(Color.pink)
                .cornerRadius(10)
                .padding(.bottom)
                .alert(isPresented: $show) {
                    Alert(title: Text("Your result is saved successfully!"), message: nil, dismissButton: .cancel())
                }.accentColor(Color.blue)
                
            }
            .frame(width: 350, height: 500)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 30)
            
            Spacer()
            Button(action: {
                print("Buttom Tapped")
                self.toggleView.toggle()
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
        .frame(width: 400, height: 700)
        .background(Color("background"))
        .cornerRadius(30)
    }
}
