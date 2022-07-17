//
//  ListaProductosView.swift
//  Caso practico SwiftUI
//
//  Created by Luis Humberto Martinez Echegaray on 16/07/22.
//

import SwiftUI

struct ListaProductosView: View {
    @StateObject var viewmodel: ProductosViewModel = ProductosViewModel()
    var body: some View {
        List(viewmodel.productosData, id: \.nombre) { prod in
            NavigationLink(destination: DetalleProducto(producto: prod)) {
                CeldaProductoLista(url: prod.urlImagenes[0], nombre: prod.nombre, precio: String(prod.precioRegular), categoria: prod.codigoCategoria.rawValue)
            }
        }
        .navigationTitle("Productos")
        .onAppear {
            viewmodel.getProductos()
        }
    }
}

struct ListaProductosView_Previews: PreviewProvider {
    static var previews: some View {
        ListaProductosView()
    }
}
