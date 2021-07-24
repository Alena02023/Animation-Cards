//
//  ContentView.swift
//  Animation Cards
//
//  Created by Алена on 11.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @GestureState var dragState: DragState = .inactive
    var body: some View {
        
        let dragGesture = DragGesture()
           .updating($dragState) {(value, state, transc) in
               state = .dragging(translation: value.translation)
            }
        ZStack {
            Cards(title: "Third Card")
                .rotation3DEffect(Angle(degrees: dragState.isActive ? 0 : 60),
                    axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
                .padding(dragState.isActive ? 32 : 64)
                .padding(.bottom, dragState.isActive ? 32 : 64)
                .animation(.spring())
            Cards(title: "Second Card")
                .rotation3DEffect(Angle(degrees: dragState.isActive ? 0 : 60),
                    axis: (x: 10, y: 10, z: 10))
                .blendMode(.hardLight)
                .padding(dragState.isActive ? 16 : 32)
                .padding(.bottom, dragState.isActive ? 0 : 32)
                .animation(.spring())
            Main(title: "Main card")
                .offset(
                    x: dragState.translation.width,
                    y: dragState.translation.height
                )
                .gesture(dragGesture)
                .animation(.spring())
        }
    }
}

enum DragState {
    
    case inactive
    case dragging(translation: CGSize)
    
    var translation: CGSize {
        switch self {
            case .inactive:
                return .zero
            case .dragging(let translation):
            return translation
        }
    }

    var isActive: Bool {
        switch self {
            case .inactive:
                return false
            case .dragging :
                return true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
