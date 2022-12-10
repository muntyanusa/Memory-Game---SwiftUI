//
//  ContentView.swift
//  MemoryGame
//
//  Created by Станислав Мунтяну on 05.12.2022.
//

import SwiftUI


struct ContentView: View {

    @State var settingFlag = false
    @State var rulesFlag = false
    @State var openGameFlag = false
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                VStack{
                    Text("Игра на память").font(Font.system(size: 48)).bold();
                    Image("main").resizable().frame(width: 400, height: 450)
                // Кнопка новой игры
                NavigationLink(destination: OpenGame(game: EmojiMemoryGame())) {
                        // Кнопка новой игры
                        Button(action: {
                            self.openGameFlag = true
                        }, label: {
                            Text("Новая игра").font(Font.system(size: 36))
                        })                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12.0)
                        .padding(10)
                        
                        NavigationLink(destination: OpenGame(game: EmojiMemoryGame()),
                                       isActive: self.$openGameFlag,
                                       label: {
                                        EmptyView()
                                       })
                }
                // Кнопка настройки
                NavigationLink(destination: SettingsInGame()) {
                        // Кнопка новой игры
                        Button(action: {
                            self.settingFlag = true
                        }, label: {
                            Text("Настройки игры").font(Font.system(size: 36))
                        })                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12.0)
                        
                        NavigationLink(destination: SettingsInGame(),
                                       isActive: self.$settingFlag,
                                       label: {
                                        EmptyView()
                                       })
                }
                    // Кнопка Правил
                    NavigationLink(destination: ShowRules()) {
                            // Кнопка новой игры
                            Button(action: {
                                self.rulesFlag = true
                            }, label: {
                                Text("Правила игры").font(Font.system(size: 36))
                            })                        .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(12.0)
                            .padding(10)
                            
                            NavigationLink(destination: ShowRules(),
                                           isActive: self.$rulesFlag,
                                           label: {
                                            EmptyView()
                                           })
                    }
                }
                .padding(.top, -100.0)
            } // конец NavigationView
            .padding(.bottom, -20.0)
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
