//
//  SwiftUI_NavigationApp.swift
//  SwiftUI Navigation
//
//  Created by Elaidzha Shchukin on 04.09.2022.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.brown]
    }
    
    var body: some Scene {
        
        WindowGroup {
            GrayEightView()
        }
    }
}
