//
//  ContentView.swift
//  mariam's app
//
//  Created by Mariam Alhadi on 24/06/2023.
//
import SwiftUI

struct ContentView: View {
    @State var cookieEaten = 0
    @State var sweetsEaten = 0
    var body: some View {
        VStack {
            Text("\(cookieEaten) cookie eaten!")
            Button{
                print("yummy")
                cookieEaten += 1
            } label: {
                HStack {
                    Image("One")
                        .resizable()
                        .frame(width: 80, height: 100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                    Text("click me ")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                    
                    
                }
                .shadow(color: .blue, radius: 5, x: 0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0)
                .buttonStyle(.borderedProminent)
                if cookieEaten >= 15{
                    Text("thats enough")
                }
                else if cookieEaten >= 10{
                    Text("what are you doing!!!")
                }
                else if cookieEaten >= 6 {
                    Text("do not eat to many cookies")
                }
                VStack {
                    Text("\(sweetsEaten) sweets eaten!")
                    Button{
                        print("yummy")
                        cookieEaten -= 1
                    } label: {
                        HStack {
                            Image("One")
                                .resizable()
                                .frame(width: 80, height: 100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                            Text("click me 2 ")
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(100)
                            
                            
                        }
                        .shadow(color: .blue, radius: 5, x: 0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0)
                        .buttonStyle(.borderedProminent)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
