//
//  ProfileView.swift
//  AIChat
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 28.06.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showSettingsView: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItemGroup {
                        settingsView
                    }
                }
        }
        .sheet(isPresented: $showSettingsView) {
            Text("hello")
        }
    }
    
    var settingsView: some View {
        Button(action: {
            onSettingsButtonPressed()
        }) {
            Image(systemName: "gear")
                .font(.title2)
                .foregroundColor(.accentColor)
            
        }
    }
    
    private func onSettingsButtonPressed() {
        showSettingsView = true
    }
    
}

#Preview {
    ProfileView()
}
