//
//  SettingView.swift
//  UIKitWithSwiftUI
//
//  Created by Abdelaziz Reda on 13/11/2023.
//

import SwiftUI

struct SettingView: View {
    @State var isOne = false
    @State var isOnn = true
    @State var isOneee = false

    var body: some View {
        
        NavigationView{
            VStack{
                Form{
                    
                    Toggle(isOn: $isOne, label: {
                        Text("Dark Mode")
                    })
                    
                    Toggle(isOn: $isOnn, label: {
                        Text("Mute Notification")
                    })
                    
                    Toggle(isOn: $isOne, label: {
                        Text("Active")
                    })
                    
                    Spacer()
                    
                }
                
            }
            .navigationTitle("Settings")
        }
        
    }
}

#Preview {
    SettingView()
}
