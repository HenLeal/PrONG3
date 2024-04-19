//
//  SwiftUIView.swift
//  ProOng
//
//  Created by HENRIQUE LEAL PEREIRA DOS SANTOS on 19/04/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color("principal").ignoresSafeArea()
            VStack{
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                VStack{
                    
                    Text("Bem vindo ao PrONG!")
                        .font(.title).bold()
                        .frame(height: 60)
                    Text("Experimente uma forma inovadora de contribuir ou ser parte de mudanças poderosas").font(Font.custom("Poppins-ExtraBold" ,size: 12))
                        . font(. system(size: 15))
                        .multilineTextAlignment(.center)
                        .lineLimit(60)
                        .frame(width: 319, height: 57)
                }.padding(.bottom, 30).padding(.top, 30.0)
                Button("Entrar") {
                    
                }.foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.azulClaro).cornerRadius(10)
                    
                Button("Cadastrar") {
                    
                }.foregroundColor(.white).foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.azulEscuro).cornerRadius(10)
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
