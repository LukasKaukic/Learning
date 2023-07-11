//
//  Onboarding.swift
//  Learning
//
//  Created by Lukáš Kaukič on 07.07.2023.
//

import SwiftUI

struct OnboardingView: View {
   
   // Onboarding states:
    /*
     0 - Welcome screen
     1 - Sing In screen
     2 - Register screen
     3 - Skip button interaction
     */
    
    @State var email = ""
    @State var password = ""
    @State private var wrongPassword = 0
    @State private var wrongEmail = 0

    
    var body: some View {
        NavigationStack {
            ZStack {
                // conntent layer
                ZStack {
                        welcomeSection
                        
                        VStack {
                            Spacer()
                            HStack {
                                NavigationLink {
                                  SignUpScreen()
                                        .navigationBarBackButtonHidden(true)
                                } label: {
                                    VStack(spacing: 3) {
                                        Text("Sign In")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .frame(height: 55)
                                            .frame(maxWidth: .infinity)
                                            .background(Color.gray)
                                            .cornerRadius(10)
                                    }
                                    .font(.footnote)
                                }
                                NavigationLink {
                                    RegisterScreen()
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
                            }
                            NavigationLink {
                                MainTabView()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                VStack(spacing: 3) {
                                    Text("Skip")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .frame(height: 55)
                                        .frame(maxWidth: .infinity)
                                        .background(Color.red)
                                        .cornerRadius(10)
                                }
                                .font(.footnote)
                            }
                        }
                    }
                }
                .padding(30)
            }
    
        }
    }


struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.white)
    }
}

// MARK: COMPONENTS
extension OnboardingView {
    
    private var registerBottomButton: some View {
        Text("Register")
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray)
            .cornerRadius(10)
            .onTapGesture {
                
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image("vut-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
            Spacer()
            Spacer()
        }

    }
}

// MARK: FUNCTIONS
