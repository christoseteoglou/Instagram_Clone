//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-17.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            
            Spacer()
            
            Text("Welcome to Instagram, eatoldglue")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)

            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.white))
                    .frame(width: 360, height: 44)
                    .background(Color.init(uiColor: .systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
