
import SwiftUI


struct _MainComponents_Previews: PreviewProvider {
    static var previews: some View {
        //        LearnButton(){}
        //            .environmentObject(ViewController())
        Text("sfvf")
        
    }
}


//MARK: Mini Back Button
struct MiniBackButton: View {
    
    
    var action : () -> Void
    
    var body: some View {
        HStack {
            Button(action: action) {
                Image(systemName: "chevron.left")
                    
                    .padding(15)
                    .foregroundColor(.secondary)
                    .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .clipShape(Circle())
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 0)
            }
            
            
            
            Spacer()
        }
    }
}



//MARK: Blur View
struct BlurView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    let style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context:
                        UIViewRepresentableContext<BlurView>) {
        
    }
}

//MARK: Button Stuff
struct ScanButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        
        
        
        configuration.label
            
            .scaleEffect(configuration.isPressed ? 0.9: 1.0)
            .shadow(color:  configuration.isPressed ? Color(.systemBlue).opacity(0) : Color(.systemBlue).opacity(0.1) , radius: 10, x: 0, y: 10)
        
    }
}

struct PracticeButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        
        
        
        configuration.label
            
            .scaleEffect(configuration.isPressed ? 0.9: 1.0)
            .shadow(color:  configuration.isPressed ? Color(.systemBlue).opacity(0) : Color(.systemBlue).opacity(0.1) , radius: 10, x: 0, y: 10)
        
    }
}

struct LearnButton : View {
    
    var title  = String()
    var linear =   LinearGradient(gradient: Gradient(colors: [Color(.systemRed).opacity(1), Color(.systemRed).opacity(0.5)]), startPoint: .bottom, endPoint: .top)
    var action : () -> Void
    
    var body: some View {
        Button(action:action) {
            VStack {
                
                HStack {
                    
                    ZStack {
                        
                        
                        linear.opacity(0.6)
                        
                        HStack(spacing:15) {
                            
                            Text("\(title)".uppercased())
                                .font(.system(size: 16.0, weight: .semibold))
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }
                    }
                }
                .frame(width: 90)
                .frame(height:50)
                .cornerRadius(25)
                .shadow(color: Color(.black).opacity(0.3), radius: 20, x: 0, y: 10)
            }
        }.buttonStyle(ScanButtonStyle())
    }
}



struct PracticeModeButton : View {
    
    var title  = String()
    var action : () -> Void
    
    var body: some View {
        Button(action:action) {
            VStack {
                
                HStack {
                    
                    ZStack {
                        
                        
                        Color(.systemBlue)
                        
                        
                        HStack {
                     
                            
                            
                            Text("\(title)".uppercased())
                                .font(.system(size: 16.0, weight: .semibold))
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }
                    }
                }
                .frame(maxWidth: 150)
                .frame(minWidth: 120)
                .frame(height:70)
                .cornerRadius(25)
                //.shadow(color: Color(.black).opacity(0.3), radius: 20, x: 0, y: 10)
            }
        }//.buttonStyle(ScanButtonStyle())
    }
}



struct PracticeButton : View {
    
    var title  = String()
    var linear =   LinearGradient(gradient: Gradient(colors: [Color(.systemRed).opacity(1), Color(.systemRed).opacity(0.5)]), startPoint: .bottom, endPoint: .top)
    var lock = Bool()
    var action : () -> Void
    
    var body: some View {
        Button(action:action) {
            VStack {
                
                HStack {
                    
                    ZStack {
                        
                        
                        linear.opacity(0.6)
                        
                        HStack(spacing:7) {
                            
                            if !lock {
                            Image(systemName: "lock.open.fill")
                                .foregroundColor(.white)
                                .font(.headline)
                            }
                            
                            if lock {
                            Image(systemName: "lock.fill")
                                .foregroundColor(.white)
                                .font(.headline)
                            }
                            
                            
                            Text("\(title)".uppercased())
                                .font(.system(size: 16.0, weight: .semibold))
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }
                    }
                }
                .frame(maxWidth: 110)
                .frame(minWidth: 90)
                .frame(height:50)
                .cornerRadius(25)
                .shadow(color: Color(.black).opacity(0.3), radius: 20, x: 0, y: 10)
            }
        }.buttonStyle(ScanButtonStyle())
    }
}




//error sheet for the app!
struct OkayNoSheet : ViewModifier
{
    @Binding var isShowing: Bool
    @Binding var correct : Bool
    
    
    public func body(content: Content) -> some View
    {
        ZStack
        {
            content
            
            if isShowing {
                
                VStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        VStack {
                            
                            if correct {
                                
                                Image("OK")
                                    
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:250, height: 250)
                                    .cornerRadius(30)
                                
                                
                                Text("Correct".uppercased())
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                
                            }
                            
                            if !correct {
                                
                                Image("NO")
                                    
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:250, height: 250)
                                    .cornerRadius(30)
                                
                                
                                Text("Wrong".uppercased())
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                
                            }
                            
                        }.padding()
                        .padding(.all)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 40, x: 20, y: 0)
                        
                        
                    }
                    .frame(maxWidth:.infinity)
                    .frame(maxHeight:.infinity)
                    //.background(Color(.black).opacity(0.4))
                    
                    
                    Spacer()
                }
                .animation(!isShowing ? .timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8) : .easeInOut)
                .background(BlurView(style: .light))
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}
