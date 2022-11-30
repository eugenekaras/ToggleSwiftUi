//
//  ContentView.swift
//  ToggleSwiftUi
//
//  Created by Евгений Карась on 30.11.22.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false
    
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    VStack{
                        Text("Кашелек")
                        Text("Профиль")
                        Spacer()
                    }
                    Spacer()
                }
                Spacer()
                RoundedRectangle(cornerRadius: 10).fill(.yellow).offset(x: isOnToggle ? 100 : 0)
                Text("Что то на экране").offset(x: isOnToggle ? 100 : 0)
            }
            
            
            Toggle(isOn: $isOnToggle) {
                Text("Показать настройку")
            }.padding()
        }.animation(.spring(response: 0.3,dampingFraction: 0.3,blendDuration: 0.3))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
