//
//  Badge.swift
//  Landmarks
//
//  Created by Icung on 19/06/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach (0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8) * 360))
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3.0 / 4) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
