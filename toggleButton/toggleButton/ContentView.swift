//
//  ContentView.swift
//  toggleButton
//
//  Created by Zeynep Demirtaş on 5.01.2023.
//

import SwiftUI

//Her arayüz View objesinin, View objesinin bir body değeri olmak zorunda.
struct ContentView: View {
    //Değişkeni tanımlıyoruz.
    //@State eklenmeden önce sahip bir değişken olduğu için değiştirilemez bir haldedir.
    //Değiştirebilmek için bir flag'e ihtiyacımız var, bunu işaretlecek bir kelimeye ihtiyacımız var.
    //SwiftUI'da arayüzlerini tekrardan çizebilmesi için State objesinin değişmesi gerekiyor ve state objesine ait bir değişken olduğunu anlatabilmek adınabaşına @State ifadesi koyduk.
    @State var isTurkish: Bool = false
    var body: some View {
        //En üst seviyede her zaman 1 tane view olması gerektiğinden 1'den fazla view elemanının bulundurulması ile bunun çözümü için "Stack" yapısı ortaya çıkıyor. (Alt alta koyacak, kapsayıcı)
        // 1 - VStack 2 - HStack 3 - ZStack
        VStack {
            if isTurkish{
                Text("Merhaba dünya!")
            } else{
                Text("Hello world!")
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button(action: {self.isTurkish.toggle()}
                   ,label: {Text("Çevir beni")}
            )
        }
        .padding()
        .font(.title) //font belirlendi.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
