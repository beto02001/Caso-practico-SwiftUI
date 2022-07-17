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
        NavigationView {
            List(viewmodel.productosData, id: \.nombre) { prod in
                NavigationLink(destination: DetalleProducto(producto: prod)) {
                    CeldaProductoLista(url: prod.urlImagenes![0], nombre: prod.nombre!, precio: String(prod.precioRegular!), categoria: prod.codigoCategoria?.rawValue)
                }
                //.listRowBackground(Color("Amarillo"))
            }
        }
        .navigationBarTitle("Productos", displayMode: .inline)
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
