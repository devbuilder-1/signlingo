

import SwiftUI

struct PracticeMode: View {
    @EnvironmentObject var vc: ViewController
    @State var correct = false
    @State var bo = false
    
    struct cardDeatils {
        var imageName = ""
        var signName = ""
    }
    
    @State var quizArray = [cardDeatils]()
    @State var count = 0
    @State var totalcount = 0
    
    @State var randomVar = 0
    
    @State var isWrongAnswer = false
    
    @State var showStuff = false
    
    @State var correctAnswers = 1000
    
    
    func unlockNewSection() -> Void {
        
//        UserDefaults.standard.set(false, forKey: "core_easy_lock")
//        UserDefaults.standard.set(true, forKey: "core_medium_lock")
//        UserDefaults.standard.set(true, forKey: "core_hard_lock")
//
//        UserDefaults.standard.set(false, forKey: "alpha_easy_lock")
//        UserDefaults.standard.set(true, forKey: "alpha_medium_lock")
//        UserDefaults.standard.set(true, forKey: "alpha_hard_lock")
        
        
        
        if self.vc.maintype == .core(difficulty: .easy)
        {UserDefaults.standard.set(false, forKey: "core_medium_lock")}
        
        if self.vc.maintype == .core(difficulty: .medium)
        {UserDefaults.standard.set(false, forKey: "core_hard_lock")}
        
        if self.vc.maintype == .alphabet(difficulty: .easy)
        {UserDefaults.standard.set(false, forKey: "alpha_medium_lock")}
        
        if self.vc.maintype == .alphabet(difficulty: .medium)
        {UserDefaults.standard.set(false, forKey: "alpha_hard_lock")}
        
    
    }
    
    func loadArrays() -> Void {
        
        //numbers
        if  self.vc.maintype == .numbers {
            self.quizArray =
            [   cardDeatils(imageName: "1", signName: "1"),
                cardDeatils(imageName: "2", signName: "2"),
                cardDeatils(imageName: "3", signName: "3"),
                cardDeatils(imageName: "4", signName: "4"),
                cardDeatils(imageName: "5", signName: "5"),
                cardDeatils(imageName: "6", signName: "6"),
                cardDeatils(imageName: "7", signName: "7"),
                cardDeatils(imageName: "8", signName: "8"),
                cardDeatils(imageName: "9", signName: "9"),
                cardDeatils(imageName: "10", signName: "10")]
        }
        
        
        
        
        
        
        //core
        if self.vc.maintype == .core(difficulty: .easy)
        {
            self.quizArray =
            [   cardDeatils(imageName: "BREAK", signName: "Break"),
                cardDeatils(imageName: "DRINK2", signName: "Drink"),
                cardDeatils(imageName: "EAT2", signName: "Eat"),
                cardDeatils(imageName: "LOVE", signName: "Love"),
                cardDeatils(imageName: "ME", signName: "Me"),
                cardDeatils(imageName: "NO", signName: "No"),
                cardDeatils(imageName: "OK", signName: "Okay"),
                cardDeatils(imageName: "YES", signName: "Yes"),
                cardDeatils(imageName: "YOU", signName: "You")]
                
        }
        
        if self.vc.maintype == .core(difficulty: .medium)
        {
            
            self.quizArray =
            [   cardDeatils(imageName: "BAD", signName: "Bad"),
                cardDeatils(imageName: "GOOD", signName: "Good"),
                cardDeatils(imageName: "HELP1", signName: "Help"),
                cardDeatils(imageName: "SIT", signName: "Sit"),
                cardDeatils(imageName: "STOP", signName: "Stop"),
                cardDeatils(imageName: "THANK_YOU", signName: "Thank You"),
                cardDeatils(imageName: "WANT", signName: "Want"),
                cardDeatils(imageName: "WE", signName: "We"),
                cardDeatils(imageName: "WHAT", signName: "What"),
                cardDeatils(imageName: "WHICH", signName: "Which"),
                cardDeatils(imageName: "WHY", signName: "Why")
            ]
            
        }
        
        if self.vc.maintype == .core(difficulty: .hard)
        {
         
            self.quizArray =
            [   cardDeatils(imageName: "ALL_DONE", signName: "All Done"),
                cardDeatils(imageName: "CLOSED", signName: "Closed"),
                cardDeatils(imageName: "DO", signName: "Do"),
                cardDeatils(imageName: "FINISHED", signName: "Finshed"),
                cardDeatils(imageName: "HOW", signName: "How"),
                cardDeatils(imageName: "KNOW", signName: "Know"),
                cardDeatils(imageName: "MORE", signName: "More"),
                cardDeatils(imageName: "ON", signName: "On"),
                cardDeatils(imageName: "OPEN", signName: "Open"),
                cardDeatils(imageName: "OUT", signName: "Out"),
                cardDeatils(imageName: "PLAY", signName: "Play"),
                cardDeatils(imageName: "UNDER", signName: "Under"),
                cardDeatils(imageName: "WHEN", signName: "When"),
                cardDeatils(imageName: "WORK", signName: "Work")
            ]
            
        }
        
        
        //alphabet
        if self.vc.maintype == .alphabet(difficulty: .easy)
        {
            self.quizArray =
            [   cardDeatils(imageName: "A", signName: "A"),
                cardDeatils(imageName: "B", signName: "B"),
                cardDeatils(imageName: "C", signName: "C"),
                cardDeatils(imageName: "D", signName: "D"),
                cardDeatils(imageName: "E", signName: "E"),
                cardDeatils(imageName: "F", signName: "F"),
                cardDeatils(imageName: "G", signName: "G"),
                cardDeatils(imageName: "H", signName: "H")]
        }
        
        if self.vc.maintype == .alphabet(difficulty: .medium)
        {
            self.quizArray =
            [   cardDeatils(imageName: "I", signName: "I"),
                cardDeatils(imageName: "J", signName: "J"),
                cardDeatils(imageName: "K", signName: "K"),
                cardDeatils(imageName: "L", signName: "L"),
                cardDeatils(imageName: "M", signName: "M"),
                cardDeatils(imageName: "N", signName: "N"),
                cardDeatils(imageName: "O", signName: "O"),
                cardDeatils(imageName: "P", signName: "P")]
        }
        
        if self.vc.maintype == .alphabet(difficulty: .hard)
        {
            self.quizArray =
            [   cardDeatils(imageName: "Q", signName: "Q"),
                cardDeatils(imageName: "R", signName: "R"),
                cardDeatils(imageName: "S", signName: "S"),
                cardDeatils(imageName: "T", signName: "T"),
                cardDeatils(imageName: "U", signName: "U"),
                cardDeatils(imageName: "V", signName: "V"),
                cardDeatils(imageName: "W", signName: "W"),
                cardDeatils(imageName: "X", signName: "X"),
                cardDeatils(imageName: "Y", signName: "Y"),
                cardDeatils(imageName: "Z", signName: "Z")]
        }
        
        
        self.totalcount = self.quizArray.count
        self.showStuff = true
        self.correctAnswers = 0
        
    }
    
    func turnOff() -> Void {
        
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { (timer) in
            self.bo = false
        }
        
    }
    
    
    
    
    @State var randomNumberStrings : [String] = ["1","2","3","4","5","6","7","8","9","10","12","15","16","17"]
    @State var randomCoreStrings : [String] = ["You","Bad","Good","Hello","Pay","Try","Pull","Free","Speak","Listen","Half","Bang","Throw","Open","Fly"]
    
    @State var randomAlphabetStrings : [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
    
    
    
    func getRandomString() -> String {
        
        //self.randomVar = Int.random(in: 1..<5)
        
        if self.vc.maintype == .numbers {
            return randomNumberStrings[Int.random(in: 0..<self.randomNumberStrings.count)]
        }
        
        if self.vc.maintype == .core(difficulty: .easy) || self.vc.maintype == .core(difficulty: .medium) || self.vc.maintype == .core(difficulty: .hard) {
            return randomCoreStrings[Int.random(in: 0..<self.randomCoreStrings.count)]
        }
        
        if self.vc.maintype == .alphabet(difficulty: .easy) || self.vc.maintype == .alphabet(difficulty: .medium) || self.vc.maintype == .alphabet(difficulty: .hard) {
            return randomAlphabetStrings[Int.random(in: 0..<self.randomAlphabetStrings.count)]
        }
        
        
        
        
        return ""
    }
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(.systemRed), Color(.systemBlue)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3)
            
            VStack{
                
                
                HStack{
                    
                    MiniBackButton()
                    {self.vc.appstate = .practice}
                    .padding(.leading)
                    Spacer()
                }
                Spacer()
            }
            .onAppear(){
            self.loadArrays()
            self.randomVar = Int.random(in: 1..<5)
            }
            
            VStack{
                
                if quizArray.count != 0 {
                Text("\(self.count)/\(self.totalcount)")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal, 30)
                    .padding(.vertical, 5)
                    .background(Color(.systemBlue))
                    .cornerRadius(25)
                    .padding(.top)
                }
                
                ZStack{
                    
                    
                    
                ForEach(Array(self.quizArray.enumerated()), id: \.offset) { index, image in
                    
                    VStack {
                        
                     
                        
                    Image(image.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(maxWidth: 500)
                        .frame(maxHeight: 500)
                        .padding(.top)
                        
                        
                        Group {
                            
                        if self.randomVar == 1 {
                            
                        VStack(spacing:20) {
                            
                            
                            HStack(spacing:20) {
                                PracticeModeButton(title: image.signName, action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = true
                                    self.turnOff()
                                    self.count += 1
                                    self.correctAnswers += 1
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                            }
                            
                            HStack(spacing:20) {
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })

                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })

                            }
                            
                        }
                        .padding(.top,40)
                        .padding(.bottom, 40)
                        
                        }
                        
                        if self.randomVar == 2 {
                            
                        VStack(spacing:20) {
                            
                            
                            HStack(spacing:20) {
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                                PracticeModeButton(title: image.signName, action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = true
                                    self.turnOff()
                                    self.count += 1
                                    self.correctAnswers += 1
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                            }
                            
                            HStack(spacing:20) {
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })

                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })

                            }
                            
                        }
                        .padding(.top,40)
                        .padding(.bottom, 40)
                        
                        }
                        
                        if self.randomVar == 3 {
                            
                        VStack(spacing:20) {
                            
                            
                            HStack(spacing:20) {
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })
                                
                            }
                            
                            HStack(spacing:20) {
                                HStack(spacing:20) {
                                    PracticeModeButton(title: image.signName, action:
                                    {
                                        
                                        self.quizArray.remove(at: index)
                                        
                                        
                                        //trigger
                                        self.bo = true
                                        self.correct = true
                                        self.turnOff()
                                        self.count += 1
                                        self.correctAnswers += 1
                                        self.randomVar = Int.random(in: 1..<5)
                                    })

                                PracticeModeButton(title: self.getRandomString(), action:
                                {
                                    
                                    self.quizArray.remove(at: index)
                                    
                                    
                                    //trigger
                                    self.bo = true
                                    self.correct = false
                                    self.turnOff()
                                    self.count += 1
                                    self.isWrongAnswer = true
                                    self.randomVar = Int.random(in: 1..<5)
                                })

                            }
                            
                        }
                     
                        }
                        .padding(.top,40)
                        .padding(.bottom, 40)
                     
                        }
                            
                            if self.randomVar == 4 {
                                
                            VStack(spacing:20) {
                                
                                
                                HStack(spacing:20) {
                                    PracticeModeButton(title: self.getRandomString(), action:
                                    {
                                        
                                        self.quizArray.remove(at: index)
                                        
                                        
                                        //trigger
                                        self.bo = true
                                        self.correct = false
                                        self.turnOff()
                                        self.count += 1
                                        self.isWrongAnswer = true
                                        self.randomVar = Int.random(in: 1..<5)
                                    })
                                    
                                    PracticeModeButton(title: self.getRandomString(), action:
                                    {
                                        
                                        self.quizArray.remove(at: index)
                                        
                                        
                                        //trigger
                                        self.bo = true
                                        self.correct = false
                                        self.turnOff()
                                        self.count += 1
                                        self.isWrongAnswer = true
                                        self.randomVar = Int.random(in: 1..<5)
                                    })
                                    
                                }
                                
                                HStack(spacing:20) {
                                    PracticeModeButton(title: self.getRandomString(), action:
                                    {
                                        
                                        self.quizArray.remove(at: index)
                                        
                                        
                                        //trigger
                                        self.bo = true
                                        self.correct = false
                                        self.turnOff()
                                        self.count += 1
                                        self.isWrongAnswer = true
                                        self.randomVar = Int.random(in: 1..<5)
                                    })

                                    PracticeModeButton(title: image.signName, action:
                                    {
                                        
                                        self.quizArray.remove(at: index)
                                        
                                        
                                        //trigger
                                        self.bo = true
                                        self.correct = true
                                        self.turnOff()
                                        self.count += 1
                                        self.correctAnswers += 1
                                        self.randomVar = Int.random(in: 1..<5)
                                    })

                                }
                                
                            }
                            .padding(.top,40)
                            .padding(.bottom, 40)
                            
                            }
                        }
                     
                        
                        
                    }
                    .frame(height:.infinity)
                    .frame(maxWidth: 400)
                    .background(BlurView(style: .systemChromeMaterialLight).opacity(0.2))
                    .cornerRadius(20)
                    
                    
                    
                    
                }
                    
                   // Text("Congrats, you've mastered this section.")
                    
                    Group {
                        
                        if self.totalcount != 0 {
                    
                        if self.quizArray.count == 0 && (self.correctAnswers/self.totalcount)*100<80
                    {
                        VStack{
                        Text("You've missed some answers, try learning and practice again.")
                            .foregroundColor(.white)
                            .bold()
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding(.top,40)
                            
                            HStack(spacing:10){
                                Text("Back".uppercased())
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(Color(.systemBlue).opacity(0.8))
                                    .cornerRadius(20)
                                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                                    .onTapGesture {
                                        self.vc.appstate = .practice
                                    }
                            
                                Text("Learn".uppercased())
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .background(Color(.systemBlue).opacity(0.8))
                                .cornerRadius(20)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                                    .onTapGesture {
                                        self.vc.appstate = .learn
                                    }
                            }
                            .padding(.top,40)
                            .padding(.bottom,40)
                        }
                        .padding()
                        .background(BlurView(style:.systemThinMaterialLight))
                        .cornerRadius(20)
                        .padding()
                    }
                    
                    if self.quizArray.count == 0 && (self.correctAnswers/self.totalcount)*100>80
                    {
                        VStack{
                            Text("Congrats, you've scored above 80%. You've mastered this section.")
                            .foregroundColor(.white)
                            .bold()
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding(.top,40)
                            
                            HStack(spacing:10){
                                Text("Back".uppercased())
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(Color(.systemBlue).opacity(0.8))
                                    .cornerRadius(20)
                                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                                    .onTapGesture {
                                        self.vc.appstate = .practice
                                    }
                            
                                Text("Learn".uppercased())
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .background(Color(.systemBlue).opacity(0.8))
                                .cornerRadius(20)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                                    .onTapGesture {
                                        self.vc.appstate = .learn
                                    }
                            }
                            .padding(.top,40)
                            .padding(.bottom,40)
                        }
                        .padding()
                        .background(BlurView(style:.systemThinMaterialLight))
                        .cornerRadius(20)
                        .padding()
                        .onAppear(){
                            
                            
                            self.unlockNewSection()
                            
                            
                        }
                        
                    }
                    
                        }
                        
                    }
                    
                    
                }
            
            }
            
        }
        .modifier(OkayNoSheet(isShowing: self.$bo, correct: self.$correct))
        .onAppear(){
            self.loadArrays()
            self.randomVar = Int.random(in: 1..<5)
        }
    }
}

struct PracticeMode_Previews: PreviewProvider {
    static var previews: some View {
        PracticeMode()
            .environmentObject(ViewController())
    }
}
