//
//  CeldaProductoLista.swift
//  Caso practico SwiftUI
//
//  Created by Luis Humberto Martinez Echegaray on 16/07/22.
//

import SwiftUI

struct CeldaProductoLista: View {
    var url: String?
    var nombre: String?
    var precio: String?
    var categoria: String?
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categoria " + categoria!)
                .font(.system(size: 18, weight: .medium, design: .default))
            HStack(spacing: 30){
                AsyncImage(url: URL(string: url!)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .cornerRadius(17)
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
                .frame(height: 130)
                
                VStack(alignment: .leading){
                    Text(nombre!)
                        .font(.system(size: 20, weight: .heavy, design: .default))
                    Text("Precio: $" + precio!)
                        .font(.system(size: 18, weight: .medium, design: .default))
                }
                .foregroundColor(Color("Gris"))
            }
            .padding(.all, 20)
            .background(Color("Amarillo"))
            .cornerRadius(17)
        }
    }
}

struct CeldaProductoLista_Previews: PreviewProvider {
    static var previews: some View {
        CeldaProductoLista()
    }
}
