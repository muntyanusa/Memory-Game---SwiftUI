//
//  SettingsInGame.swift
//  MemoryGame
//
//  Created by Станислав Мунтяну on 05.12.2022.
//

import SwiftUI

struct SettingsInGame: View {
    @State var difficulty = 0
    @State var themeGame = 0
    @State var settingFlag = false
    var difficultyGame = ["Легкий", "Средний", "Сложный"]
    var themeOfGame = ["Новый Год", "Хэллоун", "Летний отдых"]
    var body: some View {
        VStack {
            NavigationView{
                Form{
                    VStack{
                        Picker(selection: $difficulty, label: Text("Уровень сложности")){
                            ForEach(0..<difficultyGame.count){
                                Text(verbatim: self.difficultyGame[$0])
                            }
                        }
                        
                }
                    Picker(selection: $themeGame, label: Text("Тематика игры")){
                        ForEach(0..<themeOfGame.count){
                            Text(verbatim: self.themeOfGame[$0])
                        }
                    }
            }.navigationTitle("Настройки")
            }
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Сохранить")
            }
        }
}

}
struct SettingsInGame_Previews: PreviewProvider {
    static var previews: some View {
        SettingsInGame()
    }
}
