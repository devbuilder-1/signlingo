

import SwiftUI

struct Learn: View {
    @EnvironmentObject var vc: ViewController
    
    var body: some View {
        ZStack {
            
            ScrollView(showsIndicators:false) {
                
                HStack{
                    Spacer()
                    
                    Button(action:
                            {
                                self.vc.appstate = .info
                            }, label: {
                                Image(systemName: "info")
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(Color(.systemBlue))
                                    .cornerRadius(20)
                                    .padding(.trailing,25)
                                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                            })
                        .buttonStyle(ScanButtonStyle())
                    
                }
                
                
                HStack {
                    Text("Learn")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading)
                        //.padding(.bottom, 5)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                    Spacer()
                }
                
                HStack {
                    Text("Select the difficulty level for each section and freely learn.")
                        .foregroundColor(Color.white)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading)
                        .padding(.bottom, -10)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                    Spacer()
                }
                
                VStack {
                    NumberStack()
                    CoreStack()
                    AlphabetStack()
                }
                .padding(.bottom, 100)
                
            }.padding(.top,0.3)
            
        }//.environmentObject(ViewController())
    }
}

struct NumberStack: View {
    
    @State var learnLinearStack = LinearGradient(gradient: Gradient(colors: [Color(.systemBlue).opacity(0.5), Color(.magenta).opacity(0.5)]), startPoint: .bottom, endPoint: .top)
    
    @EnvironmentObject var vc: ViewController
    
    
    var body: some View {
        ZStack{
            //Learn Stack
            VStack{
                ZStack{
                    
                    VStack{
                        
                    }
                    .frame(maxWidth: 400)
                    .frame(height: 250)
                    .background(Color(.systemGray).opacity(0.5))
                    .cornerRadius(30)
                    
                    VStack{
                        HStack {
                            Text("Numbers".uppercased())
                                .foregroundColor(Color.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .padding(.bottom, -15)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Swipe through cards to learn about basic sign langauage numbers")
                                .foregroundColor(Color.white)
                                .font(.body)
                                .fontWeight(.regular)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                    .frame(maxWidth: 400)
                    .frame(height: 150)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.blue).opacity(0.5), Color(.magenta).opacity(0.5)]), startPoint: .bottom, endPoint: .top))
                    .cornerRadius(30)
                    .offset(y:-50)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.3), radius: 25, x: 0, y: 0)
                    
                    HStack(spacing:15) {
                        
                        
                        LearnButton(title: "Easy", linear: learnLinearStack, action:
                                        {
                                            self.vc.appstate = .learnMode
                                            self.vc.maintype = .numbers
                                            print("Learn - Numbers")
                                        })
                        
                        
                        
                    }
                    .padding(.all, 12)
                    .background(Color(.systemGray).opacity(0.3))
                    .cornerRadius(30)
                    .padding(.top, 150)
                    
                    
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 0, y: 0)
        }//.environmentObject(ViewController())
        
    }
    
}



//Core Stack
struct CoreStack: View {
    @EnvironmentObject var vc: ViewController
    
    @State var coreLinearStack = LinearGradient(gradient: Gradient(colors: [Color(.systemOrange).opacity(1), Color(.yellow).opacity(0.4)]), startPoint: .bottom, endPoint: .top)
    
    var body: some View {
        ZStack{
            //Learn Stack
            VStack{
                ZStack{
                    
                    VStack{
                        
                    }
                    .frame(maxWidth: 400)
                    .frame(height: 250)
                    .background(Color(.systemGray).opacity(0.5))
                    .cornerRadius(30)
                    
                    VStack{
                        HStack {
                            Text("Core".uppercased())
                                .foregroundColor(Color.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .padding(.bottom, -15)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Swipe through cards to learn about the core basics of sign langauage")
                                .foregroundColor(Color.white)
                                .font(.body)
                                .fontWeight(.regular)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                    .frame(maxWidth: 400)
                    .frame(height: 150)
                    .background(coreLinearStack)
                    .cornerRadius(30)
                    .offset(y:-50)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.3), radius: 25, x: 0, y: 0)
                    
                    HStack(spacing:15){
                        LearnButton(title: "Easy", linear: coreLinearStack, action: {
                            self.vc.appstate = .learnMode
                            self.vc.maintype = .core(difficulty: .easy)
                            
                        })
                        LearnButton(title: "Medium", linear: coreLinearStack, action: {
                            self.vc.appstate = .learnMode
                            self.vc.maintype = .core(difficulty: .medium)
                            
                        })
                        LearnButton(title: "Hard", linear: coreLinearStack, action: {
                            self.vc.appstate = .learnMode
                            self.vc.maintype = .core(difficulty: .hard)
                        })
                    }
                    .padding(.all, 12)
                    .background(Color(.systemGray).opacity(0.3))
                    .cornerRadius(30)
                    .padding(.top, 150)
                    
                    
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 0, y: 0)
        }
    }
    
}

//Core Stack
struct AlphabetStack: View {
    
    @EnvironmentObject var vc: ViewController
    @State var alphabetLinearStack = LinearGradient(gradient: Gradient(colors: [Color(.systemRed).opacity(0.8), Color(.brown).opacity(0.4)]), startPoint: .bottom, endPoint: .top)
    
    var body: some View {
        ZStack{
            //Learn Stack
            VStack{
                ZStack{
                    
                    VStack{
                        
                    }
                    .frame(maxWidth: 400)
                    .frame(height: 250)
                    .background(Color(.systemGray).opacity(0.5))
                    .cornerRadius(30)
                    
                    VStack{
                        HStack {
                            Text("Alphabet".uppercased())
                                .foregroundColor(Color.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .padding(.bottom, -15)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Swipe through cards to learn about basic sign langauage alphabets")
                                .foregroundColor(Color.white)
                                .font(.body)
                                .fontWeight(.regular)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                            Spacer()
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                    .frame(maxWidth: 400)
                    .frame(height: 150)
                    .background(alphabetLinearStack)
                    .cornerRadius(30)
                    .offset(y:-50)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.3), radius: 25, x: 0, y: 0)
                    
                    HStack(spacing:15){
                        LearnButton(title: "Easy", linear: alphabetLinearStack, action: {self.vc.appstate = .learnMode})
                        LearnButton(title: "Medium", linear: alphabetLinearStack, action: {self.vc.appstate = .learnMode})
                        LearnButton(title: "Hard", linear: alphabetLinearStack, action: {self.vc.appstate = .learnMode})
                    }
                    .padding(.all, 12)
                    .background(Color(.systemGray).opacity(0.3))
                    .cornerRadius(30)
                    .padding(.top, 150)
                    
                    
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 0, y: 0)
        }
    }
    
}

struct Learn_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            // .modifier(TabBar())
            .environmentObject(ViewController())
        
    }
}
