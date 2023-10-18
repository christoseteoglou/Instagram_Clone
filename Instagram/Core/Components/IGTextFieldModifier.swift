//
//  IGTextFieldModifier.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-17.
//

import Foundation
import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content 
            .font(.subheadline)
            .padding(12)
            .background(Color.init(uiColor: .systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
