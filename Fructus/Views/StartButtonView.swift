//
//  StartButtonView.swift
//  Fructus
//
//  Created by Mabast on 3/22/21.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 5) {
                Text("Start")
                Image(systemName: "chevron.right.circle")
                    .imageScale(.large)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
        }
        .accentColor(Color.white)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
