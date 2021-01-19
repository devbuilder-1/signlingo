
import SwiftUI

struct Practice: View {
    
    @EnvironmentObject var vc: ViewController
    
    var body: some View {
        ZStack{
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
                    
                    Text("Practice")
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
                    Text("Select the difficulty level for each section and practice.")
                        .foregroundColor(Color.white)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading)
                        .padding(.bottom, -10)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                    Spacer()
                }
                
                VStack{
                    NumberPracticeStack()
                    CorePracticeStack()
                    AlphabetPracticeStack()
                }
                .padding(.bottom, 100)
                
                
            }.padding(.top,0.3)
            
        }
    }
}



struct NumberPracticeStack: View {
    
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
                            Text("Take a quix to master basic sign langauage numbers")
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
                    
                    HStack(spacing:15)
                    {
       
                        PracticeButton(title: "Easy", linear: learnLinearStack, lock: false, action:
                                        {
                                            self.vc.appstate = .quizMode
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
struct CorePracticeStack: View {
    @EnvironmentObject var vc: ViewController
    
    @State var core_easy_lock = true
    @State var core_medium_lock = true
    @State var core_hard_lock = true
    
    
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
                        
                        PracticeButton(title: "Easy", linear: coreLinearStack, lock: self.core_easy_lock, action:
                                        {
                                            
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .core(difficulty: .easy)
                                        })
                        
                        PracticeButton(title: "Medium", linear: coreLinearStack, lock: self.core_medium_lock, action:
                                        {
                                            if !core_medium_lock {
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .core(difficulty: .medium)
                                            }
                                        })

                        
                        PracticeButton(title: "Hard", linear: coreLinearStack, lock: self.core_hard_lock, action:
                                        {
                                            if !core_hard_lock {
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .core(difficulty: .hard)
                                            }
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
        .onAppear(){
            self.core_easy_lock =  UserDefaults.standard.bool(forKey: "core_easy_lock")
            self.core_medium_lock =  UserDefaults.standard.bool(forKey: "core_medium_lock")
            self.core_hard_lock =  UserDefaults.standard.bool(forKey: "core_hard_lock")
        }
    }
    
}



//Core Stack
struct AlphabetPracticeStack: View {
    
    @EnvironmentObject var vc: ViewController
    @State var alphabetLinearStack = LinearGradient(gradient: Gradient(colors: [Color(.systemRed).opacity(0.8), Color(.brown).opacity(0.4)]), startPoint: .bottom, endPoint: .top)
    
    
    @State var alpha_easy_lock = true
    @State var alpha_medium_lock = true
    @State var alpha_hard_lock = true
    
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
                        
                        PracticeButton(title: "Easy", linear: alphabetLinearStack, lock: self.alpha_easy_lock, action:
                                        {
                                            
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .alphabet(difficulty: .easy)
                                        })
                        
                        PracticeButton(title: "Medium", linear: alphabetLinearStack, lock: self.alpha_medium_lock, action:
                                        {
                                            if !alpha_medium_lock {
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .alphabet(difficulty: .medium)
                                            }
                                        })

                        
                        PracticeButton(title: "Hard", linear: alphabetLinearStack, lock: self.alpha_hard_lock, action:
                                        {
                                            if !alpha_hard_lock {
                                            self.vc.appstate = .quizMode
                                            self.vc.maintype = .alphabet(difficulty: .hard)
                                            }
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
        .onAppear(){
            self.alpha_easy_lock =  UserDefaults.standard.bool(forKey: "alpha_easy_lock")
            self.alpha_medium_lock =  UserDefaults.standard.bool(forKey: "alpha_medium_lock")
            self.alpha_hard_lock =  UserDefaults.standard.bool(forKey: "alpha_hard_lock")
        }
    }
    
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .modifier(TabBar())
            .environmentObject(ViewController())
    }
}
