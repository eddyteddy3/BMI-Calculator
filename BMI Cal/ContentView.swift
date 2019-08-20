//
//  ContentView.swift
//  BMI Cal
//
//  Created by Moazzam Tahir on 19/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderVal: Double
    @State var age: Int
    @State var weight: Int
    @State var selected1 = false
    @State var selected2 = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("BMI Calculator")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.top)
                    .padding(.leading)
                Spacer()
            }
            
            HStack{
                VStack {
                    Image("male")
                        .animation(.interactiveSpring())
                        .opacity(selected1 ? 1 : 0.3)
                        .scaleEffect(0.099)
                        .frame(width: 100, height: 150)
                    Text("Male")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .frame(width: 180, height: 250)
                .animation(.interactiveSpring())
                .background(selected2 ? Color("lightGray") : Color.gray)
                .cornerRadius(20)
                .shadow(radius: selected2 ? 0 : 30)
                .padding(.leading)
                .onTapGesture {
                    if self.selected1 == true {
                        self.selected2 = true
                        self.selected1 = false
                    } else {
                        self.selected2 = true
                    }
                }
            
                Spacer()
                
                VStack {
                    Image("female")
                        .animation(.interactiveSpring())
                        .opacity(selected2 ? 1 : 0.3)
                        .scaleEffect(0.099)
                        .frame(width: 100, height: 150)
                    Text("Female")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .frame(width: 180, height: 250)
                .animation(.interactiveSpring())
                .background(selected1 ? Color("lightGray") : Color.gray)
                .cornerRadius(20)
                .shadow(radius: selected1 ? 0 : 30)
                .padding(.trailing)
                .onTapGesture {
                    if self.selected2 == true {
                        self.selected1 = true
                        self.selected2 = false
                    } else {
                        self.selected1 = true
                    }
                }
            }
            
            VStack {
                TitleText()
                
                HStack(alignment: .bottom) {
                    numericText(num: "\(self.sliderVal)")
                        .animation(.easeIn)
                        .animation(.easeInOut(duration: 10))
                        .foregroundColor(Color.red)
                        
                    Text("cm")
                        .font(.headline)
                }
                
                Slider(value: $sliderVal, in: 0.0...250.0, step: 0.5)
                    .frame(width: 300)
                    .padding(.bottom)
            }
            .frame(minWidth: 0, maxWidth: .some(400))
            .background(Color.gray)
            .cornerRadius(20)
            .shadow(radius: 10)
            
            HStack{
                
                VStack(alignment: .center){
                    TitleText(title: "WEIGHT")
                        
                    numericText(num: "\(self.weight)")
                    
                    HStack {
                        Image(systemName: "minus.circle.fill")
                            .scaleEffect(2)
                            .padding()
                            .onTapGesture {
                                self.weight -= 1
                            }
                        
                        Image(systemName: "plus.circle.fill")
                            .scaleEffect(2)
                            .padding()
                            .onTapGesture {
                                self.weight += 1
                            }
                    }
                    
                    Spacer()
                }
                .padding(.top)
                .frame(width: 180, height: 250)
                .background(Color.gray)
                .cornerRadius(15)
                .padding()
                
                Spacer()
                
                VStack(alignment: .center){
                    TitleText(title: "AGE")
                        
                    numericText(num: "\(self.age)")
                    
                    HStack {
                        Image(systemName: "minus.circle.fill")
                            .scaleEffect(2)
                            .padding()
                            .onTapGesture {
                                self.age -= 1
                            }
                        
                        Image(systemName: "plus.circle.fill")
                            .scaleEffect(2)
                            .padding()
                            .onTapGesture {
                                self.age += 1
                            }
                    }
                    
                    Spacer()
                }
                .padding(.top)
                .frame(width: 180, height: 250)
                .background(Color.gray)
                .cornerRadius(15)
                .padding()
            }
            
            Button(action: {
                print("\(self.sliderVal)")
                print("Button tapped")
            }) {
                Text("CALCULATE YOUR BMI")
                .font(.callout)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .frame(height: 50)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.pink)
                
            }
            
        }
    .background(Color("background"))
        .edgesIgnoringSafeArea(.all)
        .padding(.top, 40)
            
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sliderVal: 125, age: 18, weight: 50)
    }
}
#endif

struct TitleText: View {
    var title = "HEIGHT"
    var body: some View {
        Text("\(title)")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct numericText: View {
    var num = "0"
    var body: some View {
        Text(num)
            .font(.system(size: 45))
            .font(.largeTitle)
            .fontWeight(.heavy)
            .animation(.spring())
        
    }
}
