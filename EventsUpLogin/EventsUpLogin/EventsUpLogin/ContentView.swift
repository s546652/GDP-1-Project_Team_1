//
//  ContentView.swift
//  EventsUpLogin
//
//  Created by Gundu,Naveen Kumar on 9/23/22.
//

import SwiftUI



struct ContentView: View {
    
    @State private var sid = ""
    @State private var password = ""
    @State private var wrongSid = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false

    var body: some View {
        NavigationView{
                   ZStack{
                       Color.white
                           .ignoresSafeArea()
                       Circle()
                           .scale(1.7)
                           .foregroundColor(.white.opacity(0.15))
                       Circle()
                           .scale(1.35)
                           .foregroundColor(.white)
                       
                       VStack {
                           Text("Login")
                               .font(.largeTitle)
                               .bold()
                               .padding()
                           TextField("SID", text: $sid)
                               .padding()
                               .frame(width: 300, height: 50)
                               .background(Color.black.opacity(0.05))
                               .cornerRadius(10)
                               .border(.red, width: CGFloat(wrongSid))
                           
                           SecureField("Password", text: $password)
                               .padding()
                               .frame(width: 300, height: 50)
                               .background(Color.black.opacity(0.05))
                               .cornerRadius(10)
                               .border(.red, width: CGFloat(wrongPassword))
                           
                           Button("Submit"){
                               authenticateUser(sid: sid, password: password)
                           }
                           .foregroundColor(.white)
                           .frame(width: 150, height: 50)
                           .background(Color.red)
                           .cornerRadius(25)
                           
                           NavigationLink(destination: Text("You are logged in @\(sid)"), isActive: $showingLoginScreen){
                                              EmptyView()
                                             }
                           
                       }
                   }
                   .navigationBarHidden(true)
               }
               
           }
           func authenticateUser(sid: String, password: String) {
               if sid.lowercased() == "s546960"{
                   wrongSid = 0
                   if password.lowercased() == "abc123"{
                       wrongPassword = 0
                       showingLoginScreen = true
                   } else {
                       wrongPassword = 2
                   }
               } else {
                   wrongSid = 2
               }
           }
       }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
