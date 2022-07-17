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
        ZStack{
            Image("fondo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                TabView {
                    ForEach((producto?.urlImagenes)!, id: \.self) { urlimg in
                         
                        AsyncImage(url: URL(string: urlimg)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .cornerRadius(17)
                        .shadow(color: .gray, radius: 15, x: 0, y: 8)
                        .frame(width: 300, height: 300, alignment: .center)
                    }
                }.tabViewStyle(PageTabViewStyle())
        
                HStack{
                    Spacer()
                    Text("Categoría")
                        .font(.system(size: 20, weight: .heavy, design: .default))
                    Divider()
                        .frame(width: 2, height: 100)
                        .background(Color("Gris"))
                    VStack(alignment: .leading, spacing:10){
                        Text((producto?.nombre)!)
                        Text("Precio: $" + String((producto?.precioRegular)!))
                        Text("Descuento: %" + String(Int(producto!.porcentajeDescuento)))
                        Text("Precio final: $" + String((producto?.precioFinal)!))
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .medium, design: .default))
        }
    }
}

struct DetalleProducto_Previews: PreviewProvider {
    static var previews: some View {
        DetalleProducto()
    }
}
