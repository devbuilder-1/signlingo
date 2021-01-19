
import SwiftUI

struct One: View {
    var body: some View {
        
        VStack{
            
        HStack
        {
            Text("Learn".uppercased())
                .foregroundColor(Color.white)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.leading)
            Spacer()
        }
        .padding(.top)
            
            HStack
            {
                Text("Learn through the three main sections and their respective difficulty levels. Learning again and again enforces better memory retention.")
                    .foregroundColor(Color.white)
                    .font(.body)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading)
                Spacer()
            }
            
            HStack(spacing:10){
                Image("Learn1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                Image("Learn2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
            }
            .padding()
            
            
         
            
            
            
        }
        
    }
}

struct Credits: View {
    var body: some View {
        
        VStack
        {
         
         

            Text("Project Details".uppercased())
                .bold()
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundColor(Color.white)
            Text("This project was made for the course \nCS-545-WS (Human Computer Interaction) \nby : \n\nDinesh Nadar - 10446205\nAishwarya Sathyakumar -10453892\nAbhijeet Singh Dhillon - 10446449\nPrithiv Dev Devendran - 10453922")
                .font(.body)
                .bold()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }
        .padding(.top)
        .padding(.horizontal)
        .padding(.bottom)
        .background(Color(.systemGray).opacity(0.2))
        .cornerRadius(20)
        .padding(.bottom)
        
    }
    
}
struct Second: View {
    var body: some View {
        
        VStack{
            
        HStack
        {
            Text("Practice".uppercased())
                .foregroundColor(Color.white)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.leading)
            Spacer()
        }
        .padding(.top)
            
            HStack
            {
                Text("Once you've learnt a certain section or a difficulty level, try taking a quiz. You can unlock new quizes if you pass them.")
                    .foregroundColor(Color.white)
                    .font(.body)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading)
                Spacer()
            }
            
            HStack(spacing:10){
                Image("Practice1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                Image("Practice2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
            }
            .padding()
            
            
         
            
            
            
        }
        
    }
}

struct Info: View {
    
    func getIconImage() -> UIImage {
        return UIImage(named: "AppIcon60x60")!
    }
    
    @EnvironmentObject var vc: ViewController
    
    var body: some View {
       
        ZStack{
            
            Color(.systemBlue)
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack {
                    
                    Image(uiImage: self.getIconImage())
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.2), radius: 25, x: 0, y: 0)
                    
                    Text("Signlingo")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    Text("Learn the basics of sign language.".uppercased())
                        .foregroundColor(Color.white)
                        .font(.body)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading)
                        .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 0, y: 0)
                    Spacer()
                }
                
                
                ScrollView(showsIndicators:true)
                {
                    
                One()
                Second()
                Credits()
                
                }
                //.background(Color(.systemGray2).opacity(0.2))
                
                HStack{
                    Spacer()
                    
                    Button(action:
                            {
                                self.vc.appstate = .learn
                                
                            }, label: {
                                Text("Done".uppercased())
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .padding(.vertical, 5)
                                    .frame(maxWidth:.infinity)
                                    .background(Color(.systemBlue))
                                    .cornerRadius(20)
                                    .shadow(color: Color(#colorLiteral(red: 0.1647058824, green: 0.1882352941, blue: 0.3882352941, alpha: 1)).opacity(0.1), radius: 25, x: 10, y: 0)
                                    .padding(.horizontal, 40)
                            })
                        .frame(maxWidth:250)
                      
                    
                    Spacer()
                }
                .padding(.bottom)
                
            }
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info().environmentObject(ViewController())
    }
}
