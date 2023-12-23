//
//  BaseTextField.swift
//  HBooking
//
//  Created by Ibragim Akaev on 12/23/23.
//

import SwiftUI

struct BaseTextField: View {
    @FocusState private var isFocused: Bool
    @Binding var text: String
    @Binding var isDataValid: Bool
    
    let title: String
    var onFocusChange: (Bool) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            TextField("", text: $text)
                .focused($isFocused)
                .foregroundColor(.textFieldForegroundColor)
                .font(.sfPro(size: 16))
                .onChange(of: isFocused) { _, newValue in
                    onFocusChange(newValue)
                }
                .placeholder(when: text.isEmpty) {
                    Text(title)
                        .font(.sfPro(size: 17))
                }
        }
        .padding(.leading, 16)
        .frame(height: 52)
        .foregroundColor(.textFieldTitleColor)
        .background(isDataValid ? Color.textFieldBackgroundColor : Color.errorBackgroundColor)
        .cornerRadius(12)
    }
    
    @ViewBuilder
    private var titleView: some View {
        if text.isNotEmpty || isFocused {
            Text(title)
                .font(.sfPro(size: 12))
        }
    }
}

#Preview {
    StatefulPreviewWrapper("") { text in
        BaseTextField(text: text, isDataValid: .constant(true), title: "Имя") { _ in }
    }
}
