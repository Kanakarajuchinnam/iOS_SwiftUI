//
//  MusicPlayerView.swift
//  GroupBox
//
//  Created by Raju Chinnam on 1/30/25.
//

import SwiftUI

struct MusicPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.secondary)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Song")
                        .font(.headline.bold())
                        .foregroundColor(.red)
                    Text("Artist")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .foregroundColor(.red)
                }
                
                Spacer()
            }
            .padding(.bottom, 8)
            
            ProgressView(value: 0.4, total: 1)
                .tint(.secondary)
                .padding(.bottom, 20)
            
            HStack(spacing: 30) {
                Image(systemName: "backward.fill")
                Image(systemName: "pause.fill")
                Image(systemName: "forward.fill")
            }
            .foregroundStyle(.secondary)
            .font(.title)
        }
    }
}
