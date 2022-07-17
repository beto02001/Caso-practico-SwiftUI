//
//  ProductosModel.swift
//  Caso practico SwiftUI
//
//  Created by Luis Humberto Martinez Echegaray on 16/07/22.
//

import Foundation

// MARK: - Welcome
struct ProductosModel: Decodable {
    var resultado: Resultado
}

// MARK: - Resultado
struct Resultado: Decodable {
    var productos: [Producto]
}

// MARK: - Producto
struct Producto: Decodable {
    var id: String?
    var idLinea: Int?
    var codigoCategoria: CodigoCategoria?
    var idModalidad, relevancia: Int?
    var lineaCredito: String?
    var pagoSemanalPrincipal, plazoPrincipal: Int?
    var disponibleCredito: Bool?
    var abonosSemanales: [AbonosSemanale]?
    var sku, nombre: String?
    var urlImagenes: [String]?
    var precioRegular: Int?
    var precioFinal, porcentajeDescuento: Double?
    var descuento: Bool?
    var precioCredito, montoDescuento: Double?
}

// MARK: - AbonosSemanale
struct AbonosSemanale: Decodable {
    var plazo, montoAbono, montoDescuentoAbono, montoUltimoAbono: Int?
    var montoFinalCredito, idPromocion, montoDescuentoElektra, montoDescuentoBanco: Int?
    var precio, montoAbonoDigital: Int?
}

enum CodigoCategoria: String, Decodable {
    case c = "C"
    case ma = "MA"
    case tl = "TL"
}

