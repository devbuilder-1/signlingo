

import SwiftUI

@main
struct SignlingoApp: App {
        
    @EnvironmentObject var vc: ViewController
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
                .modifier(TabBar())
                .environmentObject(ViewController())
             
        }
    }
}
