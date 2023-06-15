//
//  SplashScreen.swift
//  OnBoarding&_SplashScreenSwiftUI
//
//  Created by Muhammad Farid Ullah on 15/06/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack{
            //Color.black.edgesIgnoringSafeArea(.all)
            //MARK: Use normal way to show splash Screen
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .scaleEffect(isAnimating ? 1.2 : 0.5)
                //MARK: Add Text as Title
            }
            
            //MARK: Use Lottie animation
            //LottieView(filename: "gym1")
            .onAppear {
                isAnimating = false
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isAnimating = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
