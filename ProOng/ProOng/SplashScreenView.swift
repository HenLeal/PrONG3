//
//  SplashScreenView.swift
//  ProOng
//
//  Created by HENRIQUE LEAL PEREIRA DOS SANTOS on 18/04/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            SwiftUIView()

        }else{
            ZStack{
                Color(red: 27/255, green: 152/255, blue: 224/255).ignoresSafeArea()
                VStack{
                    
                    VStack{
                        Image("LogoPrONG")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 227, height: 223).padding(0.1)
                       
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 2)){
                            self.size=0.8
                            self.opacity=1.5
                            
                        }
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    self.isActive=true
                }
            }
        }
        
    }
}

#Preview {
    SplashScreenView()
}
