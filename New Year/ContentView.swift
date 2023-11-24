//
//  ContentView.swift
//  New Year
//
//  Created by Дима Кожемякин on 24.11.2023.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("ukrashennaya-ulica-s-fonaryami-k-novomu-godu")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                ScrollView {
                    VStack {
                        Text("hsdgbihvksbdn")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .frame(maxHeight: .infinity) // Allow VStack to take full height
                    }
                    .padding(.horizontal, 0) // Align VStack to the edges
                }
                .background(Color.black.opacity(0.5))
            }
        }
    }
}



struct SecondView: View {
    var body: some View {
        ZStack {
            Image("ba384f6cb0fe2cc3cb46dfe55f054e90")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                List {
                    Text("fbihegdi")
                }
                // Добавьте свое содержимое
            }
        }
    }
}

struct ContentView: View {
    private var isActive = false
    var body: some View {
        TabView {
            // Ваш код для первой вкладки
            FirstView()
                .tabItem {
                    
                    Image("film.stack.fill 1")
                    
                    
                }
                .tag(0)
            
            // Вторая вкладка с вашим изображением
            SecondView()
                .tabItem {
                    //                    Image(".bounce.up.byLayer")
                    Image("music.note.list 1")
                        .symbolVariant(.fill.slash)
                    
                    
                }
                .tag(1)
            
            // Добавьте дополнительные вкладки, как необходимо
        }
    }
}

#Preview {
    ContentView()
}
