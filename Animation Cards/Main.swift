//
//  Main.swift
//  Animation Cards
//
//  Created by Алена on 11.06.2021.
//

import SwiftUI

struct Main: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
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

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(title: "Main Card")
    }
}
