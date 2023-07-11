//
//  SuccesfullLoginScreen.swift
//  Learning
//
//  Created by Lukáš Kaukič on 10.07.2023.
//

import SwiftUI

struct SuccesfullLoginScreen: View {
    
    @State var succesfullLogin = 0
    
    var body: some View {
        ZStack {
            // content layer
            ZStack {
                switch succesfullLogin {
                case 0:
                    VStack {
                        successfulLoginSection
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 100)
                    }

                    VStack {
                        Spacer()
                        continueButton
                    }
                case 1:
                    MainTabView()
                default: RoundedRectangle(cornerRadius: 25.5)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
    
    struct SuccesfullLoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            SuccesfullLoginScreen()
        }
    }
    
    extension SuccesfullLoginScreen {
        
        var continueButton: some View {
            Text("Continue")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .padding(30)
                .onTapGesture {
                    handleContinueButton()
                }
        }
        
        var successfulLoginSection: some View {
            VStack() {
                Text("Login Successful")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
            }
        }
    }
    
    extension SuccesfullLoginScreen {
        
        func handleContinueButton() {
            withAnimation(.spring()) {
                succesfullLogin = 1
            }
        }
    }

