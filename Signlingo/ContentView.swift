

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vc: ViewController
    
    func updateAppOpenedCounter()  {
               var count = UserDefaults.standard.integer(forKey: "processCompletedCountKey")
               count += 1
               UserDefaults.standard.set(count, forKey: "processCompletedCountKey")
               print("Process completed \(count) time(s)")
        
        if count == 1 || count == 0 {
            UserDefaults.standard.set(false, forKey: "core_easy_lock")
            UserDefaults.standard.set(true, forKey: "core_medium_lock")
            UserDefaults.standard.set(true, forKey: "core_hard_lock")
            
            UserDefaults.standard.set(false, forKey: "alpha_easy_lock")
            UserDefaults.standard.set(true, forKey: "alpha_medium_lock")
            UserDefaults.standard.set(true, forKey: "alpha_hard_lock")
            
            self.vc.appstate = .info
        }
    }

    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(.systemRed), Color(.systemBlue)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3)
            
            if (self.vc.appstate == .learn)  && (self.vc.appstate != .learnMode) {
                Learn()
            }
            
            if self.vc.appstate == .practice {
                Practice()
            }
            
            if self.vc.appstate == .learnMode  {
                
                LearnMode()
                
            }
            
            if self.vc.appstate == .quizMode {
               PracticeMode()
            }
            
            if self.vc.appstate == .info {
               Info()
            }
            
            
        }
        .modifier(TabBar())
        .onAppear(){
            self.updateAppOpenedCounter()
            
            
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
       
            ContentView()
                .environment(\.colorScheme, .light)
                .modifier(TabBar())
                .environmentObject(ViewController())
            
        
    }
}
