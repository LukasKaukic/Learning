//
//  SignUpScreen.swift
//  Learning
//
//  Created by Lukáš Kaukič on 11.07.2023.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var email = ""
    @State var password = ""
    @State private var wrongPassword = 0
    @State private var wrongEmail = 0
    
    var body: some View {
        VStack {
            Spacer()
            cavaliersImage
            fillEmailPassword
            NavigationLink {
                SuccesfullLoginScreen()
                    .navigationBarBackButtonHidden(true)
            } label: {
                VStack(spacing: 3) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: 100)
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                .font(.footnote)
            }
        
        }    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}

extension SignUpScreen {
    
    private var fillEmailPassword: some View {
        VStack() {
            Text("Fill in your login details")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            TextField("Email", text: $email)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongEmail))
            SecureField("Password", text: $password)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongPassword))
        }
        .padding(30)
    }
    
    private var cavaliersImage: some View {
        VStack() {
            Image("cavaliers-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 400)
        }
    }
}
