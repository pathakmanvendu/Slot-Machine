//
//  SwiftUIView.swift
//  Slot Machine
//
//  Created by Manvendu Pathak on 01/06/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 400, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
            .padding()
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
      SwiftUIView()
    }
}
