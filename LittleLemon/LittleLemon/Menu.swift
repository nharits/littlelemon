//
//  Menu.swift
//  LittleLemon
//
//  Created by haritS on 26/1/2567 BE.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Text(" title of your application at the top").padding()
            Text(" restaurant location, like Chicago, below it").padding()
            Text("short description of the whole application below the previous two fields.").padding()
            
            List{
                Text("add code")
            }
            
            
        }
    }//body
}//struct

#Preview {
    Menu()
}
