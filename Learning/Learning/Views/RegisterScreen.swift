//
//  RegisterScreen.swift
//  Learning
//
//  Created by Lukáš Kaukič on 11.07.2023.
//

import SwiftUI

struct RegisterScreen: View {
    
    @State var name = ""
    @State var surrname = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    fillEmailPassword
                    NavigationLink {
                        MainTabView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        VStack(spacing: 3) {
                            Text("Register")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(height: 55)
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        .font(.footnote)
                    }
                    .padding(30)
                }
            }
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}

extension RegisterScreen {
    
    private var fillEmailPassword: some View {
        VStack() {
            Text("Fill in your login details")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            TextField("Name", text: $name)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
            TextField("Surrname", text: $surrname)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
            TextField("Email", text: $email)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
            SecureField("Password", text: $password)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .frame(height: 40)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(10)
        }
        .padding(30)
    }
}
