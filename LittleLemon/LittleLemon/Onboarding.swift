//
//  Onboarding.swift
//  LittleLemon
//
//  Created by haritS on 26/1/2567 BE.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"



struct Onboarding: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                
                TextField("firstName", text: $firstName)
                
                TextField("lastName", text: $lastName)
                
                TextField("email",text: $email)
                
                Button {
                    //Code here before changing the bool value
                    firstName = ""
                    lastName = ""
                    email = ""
                    isLoggedIn = true
                } label: {
                    Text("Navigate Button")
                }
                .navigationDestination(isPresented: $isLoggedIn, destination: {
                    Home()
                        .navigationBarBackButtonHidden(true)
                })
                
                //.navigationTitle("LittleLemon")
            }//v
        }//nav
    }//body
}//end

#Preview {
    Onboarding()
}
