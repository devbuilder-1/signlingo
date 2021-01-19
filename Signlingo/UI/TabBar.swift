

import SwiftUI

struct TabBar: ViewModifier
{
    
    @EnvironmentObject var vc: ViewController
    @Environment(\.colorScheme) var colorScheme
    
    
    var isDarkMode : Bool {
        colorScheme == .dark
    }
    private var font : Font {
        .system(size: 10)
    }
    
    public func body(content: Content) -> some View
    {
        ZStack
        {
            
            content
            VStack {
                
//                HStack{
//                    Spacer()
//
//                    Button(action:
//                            {}, label: {
//                        Image(systemName: "info")
//                            .foregroundColor(.white)
//                            .padding(.all, 10)
//                            .background(Color(.systemBlue))
//                            .cornerRadius(20)
//                            .padding(.trailing)
//                            .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
//                            })
//                        .buttonStyle(ScanButtonStyle())
//
//                }
        
                Spacer()
                
                if self.vc.appstate == .learn || self.vc.appstate == .practice {
                HStack(spacing: 85)
                {
                    
                    VStack {
                        VStack {
                            if self.vc.appstate == .learn
                            {ColorConstants.tabBarColorSelected()}
                            else{ColorConstants.tabBarColorUnSelected()}
                        }
                            .frame(width: 30, height: 30)
                            .mask(Image(systemName: "chart.bar.doc.horizontal.fill")
                                    .font(.system(size: 23.0, weight: .bold))
                                    .padding()
                                    .aspectRatio(contentMode: .fit))
                        
                        Text("LEARN")
                            .font(.system(size: 12.0, weight: .semibold))
                            .tracking(0.2)
                            .opacity(0.6)
                            .padding(.top,-5)
                    }
                    .onTapGesture {self.vc.appstate = .learn}

                    
                    // search icon
                    VStack {
                        VStack {
                            if self.vc.appstate == .practice
                            {ColorConstants.tabBarColorSelected()}
                            else{ColorConstants.tabBarColorUnSelected()}}
                            
                            .frame(width: 30, height: 30)
                            .mask(Image(systemName: "die.face.5.fill")
                                    .font(.system(size: 23.0, weight: .bold))
                                    .padding()
                                    .aspectRatio(contentMode: .fit))
                        Text("PRACTICE")
                            .font(.system(size: 12.0, weight: .semibold))
                            .tracking(0.2)
                            .opacity(0.6)
                            .padding(.top,-5)
                    }
                    .onTapGesture {self.vc.appstate = .practice}

                    
                    
 
                }
                .padding(.all, 15)
                .frame(maxWidth: .infinity)
                .background(BlurView(style: .systemThickMaterial))
                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 10, y: 0)
            }
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .modifier(TabBar())
            .environmentObject(ViewController())
        
    }
}
