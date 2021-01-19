
import SwiftUI

struct LearnMode: View {
    
    @State var correct = false
    @State var bo = false
    @EnvironmentObject var vc: ViewController
    
    @State private var translation: CGSize = .zero
    
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat
    {
        if gesture.translation.width / geometry.size.width >= 0.3 {
            self.bannerText = "Mastered"
            self.bannerTextOpacity = 1.0
        }
        
        if gesture.translation.width / geometry.size.width <= 0.3 {
            self.bannerText = "Try again"
            self.bannerTextOpacity = 1.0
        }
        
        return gesture.translation.width / geometry.size.width
    }
    
    private var thresholdPercentage: CGFloat = 0.5
    // when the user has draged 50% the width of the screen in either direction
    
    private enum correctORnot: Int {
        case correct, wrong, none
    }
    
    struct cardDeatils {
        var imageName = ""
        var signName = ""
    }
    
    @State var swipeArray = [cardDeatils]()
    @State var count = 0
    @State var totalcount = 0
    
    @State var bannerText = ""
    @State var bannerTextOpacity = Double()
    
    @State var showTut = true
    
    func turnOff() -> Void {
        
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { (timer) in
            self.bo = false
        }
        
    }
    
    func loadArrays() -> Void {
        
        //numbers
        if  self.vc.maintype == .numbers {
            self.swipeArray =
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
            self.swipeArray =
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
            
            self.swipeArray =
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
         
            self.swipeArray =
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
            self.swipeArray =
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
            self.swipeArray =
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
            self.swipeArray =
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
        
        self.totalcount = self.swipeArray.count
        
        
    }
    
    var body: some View {
        
       
        
        ZStack {
        GeometryReader {
            geometry in
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(.systemRed), Color(.systemBlue)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.3)
                
                VStack{
                    
                    
                    HStack{
                        
                        MiniBackButton()
                        {self.vc.appstate = .learn}
                        .padding(.leading)
                        Spacer()
                    }
                    Spacer()
                }
                
                if self.swipeArray.count != 0
                {
                VStack{
                    if swipeArray.count != 0 {
                    Text("\(self.count)/\(self.totalcount)")
                        
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.horizontal, 30)
                        .padding(.vertical, 5)
                        .background(Color(.systemBlue))
                        .cornerRadius(25)
                        .padding(.top)
                    }
                    
                    if self.bannerTextOpacity != 0 {
                        
                        VStack{
                            Text("\(self.bannerText)".uppercased())
                                .foregroundColor(.white)
                                .font(.title2)
                                .bold()
                                .padding()
                        }.background(Color(.systemBlue))
                        .cornerRadius(30)
                        .opacity(self.bannerTextOpacity)
                        
                    }
                    
                    
                    
                ZStack{
               
                    if self.swipeArray.count != 0 {
                    ForEach(Array(self.swipeArray.enumerated()), id: \.offset) { index, image in
                    
                VStack{
                    
                    VStack {
                    
                        Image(image.imageName)
                        .resizable()
                        .frame(maxWidth: 400)
                        .frame(maxHeight: 500)
                        .scaledToFill()
                        .cornerRadius(20)
                 
                    
                        
                        Text(image.signName)
                            .fontWeight(.bold)
                            .tracking(1)
                            .font(.largeTitle)
                            .padding(.bottom)
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding()
                    .offset(x: self.translation.width, y: self.translation.height)
                    .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
                    //.frame(maxWidth: .infinity)
                    //.padding()
                }
               // .frame(maxWidth: .infinity)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.translation = value.translation
                          
                            
                            if (self.getGesturePercentage(geometry, from: value)) >= self.thresholdPercentage
                            {
                                //   self.swipeStatus = .correct
                                self.swipeArray.remove(at: index)
                                self.translation = .zero
                                
                                self.bannerText = ""
                                self.bannerTextOpacity = 0
                                
                                //trigger
                                self.bo = true
                                self.correct = true
                                self.turnOff()
                                self.count += 1
                            }
                            
                            else if self.getGesturePercentage(geometry, from: value) <= -self.thresholdPercentage
                            {
                             
                                self.translation = .zero
                                
                                self.bannerText = ""
                                self.bannerTextOpacity = 0
                                
                                self.bo = true
                                self.correct = false
                                self.turnOff()
                                
                            }
                            
                            else
                            {
//                                self.bannerText = ""
//                                self.bannerTextOpacity = 0
                                // self.swipeStatus = .none
                                
                            }
                            
                            
                        }.onEnded { value in
                            // determine snap distance > 0.7 aka half the width of the screen
                            if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                                // self.onRemove(self.user)
                            } else {
                                self.bannerText = ""
                                self.bannerTextOpacity = 0
                                self.translation = .zero
                            }
                        })
                
                    }
                   
                    }
                }
                }
                }
                
                if self.swipeArray.count == 0
                {
                    VStack{
                    Text("You're done learning, try a practice quiz.")
                        .foregroundColor(.white)
                        .bold()
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(.top,40)
                        
                        HStack(spacing:10){
                            Text("Practice".uppercased())
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
                
                if self.showTut {
                    
                    VStack {
                        
                        Spacer()
                        
                        VStack {
                            
                            VStack {
                                
                                
                                    
                                    Image(systemName: "arrow.right.doc.on.clipboard")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100, height: 100)
                                        .foregroundColor(Color(.systemBlue).opacity(0.4))
                                    
                                    
                                    Text("Swipe right when you've learnt a sign, swipe left to try again.".uppercased())
                                        .foregroundColor(.gray)
                                        .font(.body)
                                        .fontWeight(.bold)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                        .padding(.top)
                                        .multilineTextAlignment(.center)
                                
                                
                                Text("Okay".uppercased())
                                .bold()
                                .foregroundColor(.white)
                                .padding(.all, 10)
                                .background(Color(.systemBlue).opacity(0.8))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 10, y: 0)
                                    .onTapGesture {
                                        self.showTut = false
                                    }
                                    .padding(.top)
                                
                                
                  
                                
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
                    .background(BlurView(style: .light))
                    .edgesIgnoringSafeArea(.all)
                    
                }
                
                
            }
            .onAppear(){
                self.loadArrays()
            }
        }
        }
      // .modifier(OkayNoSheet(isShowing: self.$bo, correct: self.$correct))
        
        .onAppear(){
            print("sdfsrfsrf")
            self.loadArrays()
        }
    }
    
}

struct LearnMode_Previews: PreviewProvider {
    static var previews: some View {
        LearnMode().environmentObject(ViewController())
    }
}
