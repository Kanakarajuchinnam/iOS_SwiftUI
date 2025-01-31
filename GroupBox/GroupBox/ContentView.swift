//
//  ContentView.swift
//  GroupBox
//
//  Created by Raju Chinnam on 1/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.pink.opacity(0.5))
                .ignoresSafeArea()
            VStack(spacing: 40) {
                GroupBox {
                    GroupBox {
                        MusicPlayerView()
                    }
                    .groupBoxStyle(.music)
                } label: {
                    Label("Now Listening", systemImage: "music.note")
                }
                .groupBoxStyle(.music)
            }
            .padding()
        }
    }
}

extension GroupBoxStyle where Self == MusicGroupBoxStyle {
    static var music: MusicGroupBoxStyle { .init()}
}


#Preview {
    ContentView()
}
