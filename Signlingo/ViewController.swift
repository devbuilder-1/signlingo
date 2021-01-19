

import Foundation

class ViewController: ObservableObject  {
    
    enum appState : Equatable {

        case learn
        case practice
         
        case learnMode
        case quizMode
        
        case info
      
    }
    
    enum difficulty : Equatable {
        case easy
        case medium
        case hard
    }
    
    enum type : Equatable {
        case numbers
        case core(difficulty: difficulty)
        case alphabet(difficulty: difficulty)
    }
    
    @Published var appstate : appState = appState.learn
    @Published var maintype : type = type.numbers
    
}
