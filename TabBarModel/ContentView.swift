//
//  ContentView.swift
//  TabBarModel
//
//  Created by Emrè Barish on 08/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection: Tab = .tabOne
    
    var body: some View {
        TabView(selection: $tabSelection) {
            TabOne()
                .tabItem { Label(
                    Tab.tabOne.title,
                    systemImage: Tab.tabOne.icon
                ) }
                .tag(Tab.tabOne)
            
            TabTwo()
                .tabItem { Label(
                    Tab.tabTwo.title,
                    systemImage: Tab.tabTwo.icon
                ) }
                .tag(Tab.tabTwo)
        }
        .opaqueTabBarStyle()
    }
}

// MARK: - Models

enum Tab {
    case tabOne
    case tabTwo
    
    var title: String {
        switch self {
        case .tabOne: return "Tab One"
        case .tabTwo: return "Tab Two"
        }
    }
    
    var icon: String {
        switch self {
        case .tabOne: return "1.circle.fill"
        case .tabTwo: return "2.circle.fill"
        }
    }
}

// MARK: - Styles

struct OpaqueTabBarStyle: ViewModifier {
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func opaqueTabBarStyle() -> some View {
        self.modifier(OpaqueTabBarStyle())
    }
}

// MARK: - Previews

#Preview {
    ContentView()
}
