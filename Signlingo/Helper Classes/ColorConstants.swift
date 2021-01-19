
import Foundation
import SwiftUI
import UIKit

struct ColorConstants {

    
    
 
    
    ///these are the color to be used for the main background
    static var darkmainColor : Color {
          return Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
      }
      static var lightmainColor : Color {
          return Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 0.2466180788))
      }
    

    static func loginGradient(withScheme: ColorScheme) -> LinearGradient {
        if withScheme == .dark {
            return darkModeLoginGradient
        }
        return lightModeLoginGradient
    }
    
    
    static func mainBackground(withScheme: ColorScheme) -> Color {
         if withScheme == .dark {
             return darkmainColor
         }
         return lightmainColor
     }
    
    static func tabBarColorSelected() -> LinearGradient {
//        return LinearGradient(gradient: Gradient(colors: [Color.gray, Color(.systemIndigo)]), startPoint: .top, endPoint: .bottom)
        
     return  LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.7140371203, blue: 0.9437562823, alpha: 1)), Color.blue]), startPoint: .top, endPoint: .bottom)
     }
    
    static func tabBarColorUnSelected() -> Color {
//        return LinearGradient(gradient: Gradient(colors: [Color(.darkGray).opacity(1.5), Color.gray.opacity(0.8)]), startPoint: .bottom, endPoint: .top)
        
        return Color(.gray)
  
     }
    
    
    
    static func ScanBubbleTextColor(withScheme: ColorScheme) -> Color {
         if withScheme == .dark {
            return Color.white
         }
         return Color(.white).opacity(1)
     }
    
    private static var lightModeLoginGradient: LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [Color( "BEA279"), Color("D8D7D7")]), startPoint: UnitPoint(x: 0.2, y: 0.2), endPoint: .bottomTrailing)
    }
    private static var darkModeLoginGradient: LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [Color("353535"), Color( "968161")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

