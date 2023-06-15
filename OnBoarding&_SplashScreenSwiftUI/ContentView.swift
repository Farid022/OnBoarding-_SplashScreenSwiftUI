//
//  ContentView.swift
//  OnBoarding&_SplashScreenSwiftUI
//
//  Created by Muhammad Farid Ullah on 15/06/2023.
//
import SwiftUI
//import Lottie

var totalOnboards = 4

struct ContentView: View {
    
    @State var splashScreen  = true
    @AppStorage("selectedPage") var selectedPage = 0
    
    
    var body: some View {
        ZStack{
            Group {
                if splashScreen {
                    SplashScreen()
                } else {
                    if selectedPage > totalOnboards {
                        HomeScreen()
                    } else {
                        MainView()
                    }
                }
            }
            .onAppear {
                DispatchQueue
                    .main
                    .asyncAfter(deadline:
                    .now() + 2) {
                            self.splashScreen = false
                        }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



struct MainView: View {
    
    init() {
       UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.8)
           }
    
    @AppStorage("selectedPage") var selectedPage = 0
    @State var isAnimate = false
    var body: some View {
       
        NavigationView {
            ZStack {
    //            Color.black
    //                .edgesIgnoringSafeArea(.all)
                
                
                VStack{
              
                    
                    ZStack{
                    TabView(selection: $selectedPage)
                    {
                        ForEach(0..<5) { index in
                                CardView(card : testData[index])
                                    .tag(index)
                                
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }.offset(x: 0, y: 20)
                    
                 
                    HStack {
                        ForEach(0..<5) { item in
                            if item == selectedPage {
                                Rectangle()
                                    .frame(width: 35, height: 6)
                                    .cornerRadius(3)
                                    .foregroundColor(.purple)
                            } else {
                                Rectangle()
                                    .frame(width: 35, height: 6)
                                    .foregroundColor(.gray)
                                    .cornerRadius(3)
                                    .animation(.easeIn, value: item)
                            }
                        }
                    }.padding(.bottom, 24)
                    
                    
                    
                    ZStack{
                        Button {
                            withAnimation(.easeInOut) {
                                if self.selectedPage <= totalOnboards {
                                    self.selectedPage += 1
                                }
                            }
                        } label: {
                            Text(selectedPage == 4 ? "Get Started" : "Next")
                                .font(.title2.bold())
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.purple)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }

                            
                    }
                    Spacer()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                withAnimation(.easeInOut) {
                                    selectedPage -= 1
                                }
                            } label: {
                                Image(systemName: "chevron.left")
                            }
                    }
                    
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                withAnimation(.easeInOut) {
                                    selectedPage = 6
                                }
                            } label: {
                                Text("Skip")
                            }
                    }
                }
            }
        }
        
       
    }
}


//MARK: Top Navigation Bar for Pages 1 , 2 , 3. Reusable component. Not used in the project.
struct TopNav: View {
    var body: some View {
        ZStack{
            HStack{
                Image("netflixlogo")
                    .resizable()
                    .frame(width: 110, height: 62)
                
                Spacer()
                
                Text("Help")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                Spacer().frame(width : 10)
                   
                
                Text("Privacy")
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                 
            }
            .offset(x: 0, y: -395)
            .padding()
        }
    }
}














