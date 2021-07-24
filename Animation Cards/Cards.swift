//
//  Cards.swift
//  Animation Cards
//
//  Created by Алена on 11.06.2021.
//

import SwiftUI

struct Cards: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 68 / 255, green: 42 / 255, blue: 182 / 255))
                .frame(height: 230)
                .cornerRadius(10)
                .padding(16)
            
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .bold()
        }
    }
}

