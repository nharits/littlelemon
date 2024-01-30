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
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            VStack{
                
                TextField("firstName", text: $firstName)
                
                TextField("lastName", text: $lastName)
                
                TextField("email",text: $email)
                
                NavigationLink(destination: EmptyView(), isActive: $isLoggedIn) {
                    Text("Go to Profile")
                }
                
                Button("Register") {
                    //code
                    if !firstName.isEmpty, !lastName.isEmpty, !email.isEmpty {
                        //condition
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        
                        UserDefaults.standard.set(email, forKey: kEmail)
                    }
                }
            }
        }//nav
    }//body
}//end

#Preview {
    Onboarding()
}
