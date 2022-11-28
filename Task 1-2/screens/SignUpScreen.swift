//
//  SignUpScreen.swift
//  Task 1-2
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct SignUpScreen: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Firstname", text: $firstname)
                .frame(height: 50)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Lastname", text: $lastname)
                .frame(height: 50)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Email", text: $email)
                .frame(height: 50)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Address", text: $address)
                .frame(height: 50)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            
            SecureField("Password", text: $password)
                .frame(height: 50)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            
            Button(action: {
                
            }, label: {
                HStack {
                    Spacer()
                    Text("Sign In")
                        .foregroundColor(.white)
                    Spacer()
                }
            })
            .frame(height: 50)
            .background(Color(uiColor: UIColor.systemRed))
            .cornerRadius(25)
            
            Spacer()
            
            HStack {
                Text("Already have an account?")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 18))
                
                Text("Sign In")
                    .foregroundColor(.accentColor)
                    .bold()
                    .font(.system(size: 18))
                    .onTapGesture {
                        presentation.wrappedValue.dismiss()
                    }
                
            }
        }.padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
