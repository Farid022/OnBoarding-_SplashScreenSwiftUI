//
//  CardView.swift
//  OnBoarding&_SplashScreenSwiftUI
//
//  Created by Muhammad Farid Ullah on 15/06/2023.
//

import SwiftUI

struct CardView: View {
    var card : Card
    
    var body: some View {
        @State var isAnimating: Bool = false
        VStack {
            Image(card.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                //.background(.green)
        
        Spacer()
            VStack(spacing: 0) {
                Text(card.title)
                    //.font(.system(size: 35))
                    .font(.title)
                    .fontWeight(.bold)
                    //.foregroundColor(.purple)
                    //.background(.green)


                Text(card.description)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    //.font(.system(size: 22))
                    .font(.title3)
                    //.foregroundColor(.purple)
                    .frame(width: 360, height: 80)
                    //.background(.green)
                    //.padding(5)
            }
            Spacer()
        }
        .padding()
        
        
        //.offset(x: 0, y: 0)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
