//
//  ContentView.swift
//  Caso practico SwiftUI
//
//  Created by Luis Humberto Martinez Echegaray on 16/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                NavigationLink(destination: ListaProductosView(),label: {Text("Generar lista") .padding(.all,15) .frame(width: 150)})
                    .background(Color("Rojo"))
                    .cornerRadius(17)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
                Spacer()
            }
            .background(
                Image("fondo") 
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
