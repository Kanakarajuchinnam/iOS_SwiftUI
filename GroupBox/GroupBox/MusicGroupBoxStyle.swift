//
//  MusicGroupBoxStyle.swift
//  GroupBox
//
//  Created by Raju Chinnam on 1/30/25.
//

import Foundation
import SwiftUI

struct MusicGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading){
            configuration.label
                .bold()
                .foregroundStyle(.red)
            configuration.content
        }
        .padding()
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
    }
}

