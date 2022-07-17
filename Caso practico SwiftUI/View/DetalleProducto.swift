//
//  DetalleProducto.swift
//  Caso practico SwiftUI
//
//  Created by Luis Humberto Martinez Echegaray on 16/07/22.
//

import SwiftUI

struct DetalleProducto: View {
    var producto: Producto?
    var body: some View {
        VStack(alignment: .center){
            TabView {
                ForEach((producto?.urlImagenes)!, id: \.self) { urlimg in
                     
                    AsyncImage(url: URL(string: urlimg)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 300, height: 300, alignment: .center)
                }
            }.tabViewStyle(PageTabViewStyle())
    
            HStack{
                Spacer()
                Text("Categoría")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .heavy, design: .default))
                Divider()
                    .frame(width: 2)
                    .background(Color("Gris"))
                VStack(alignment: .leading, spacing:10){
                    Text((producto?.nombre)!)
                    Text("Precio: $" + String((producto?.precioRegular)!))
                    Text("Descuento: %" + String((producto?.porcentajeDescuento)!))
                    Text("Precio final: $" + String((producto?.precioFinal)!))
                }
                Spacer()
            }
            Spacer()
        }
        .font(.system(size: 18, weight: .medium, design: .default))
        .background(
            Image("fondo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct DetalleProducto_Previews: PreviewProvider {
    static var previews: some View {
        DetalleProducto()
    }
}
