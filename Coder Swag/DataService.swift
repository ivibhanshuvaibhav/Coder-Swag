//
//  DataService.swift
//  Coder Swag
//
//  Created by Vibhanshu Vaibhav on 01/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category.init(title: "SHIRTS", imageName: "shirts.png"),
        Category.init(title: "HOODIES", imageName: "hoodies.png"),
        Category.init(title: "HATS", imageName: "hats.png"),
        Category.init(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product.init(title: "Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product.init(title: "Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product.init(title: "Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product.init(title: "Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product.init(title: "Logo Hoodie Grey", price: "$18", imageName: "hoodie01.png"),
        Product.init(title: "Logo Hoodie Red", price: "$22", imageName: "hoodie02.png"),
        Product.init(title: "Hoodie Grey", price: "$22", imageName: "hoodie03.png"),
        Product.init(title: "Hoodie Black", price: "$20", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product.init(title: "Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product.init(title: "Badge Shirt Light Grey", price: "$29", imageName: "shirt02.png"),
        Product.init(title: "Logo Shirt Red", price: "$22", imageName: "shirt03.png"),
        Product.init(title: "Hustle Delegate Grey", price: "$20", imageName: "shirt04.png"),
        Product.init(title: "Kickflip Studios Black", price: "$20", imageName: "shirt05.png")
    ]

    private let digitalGoods = [Product]()
    
    func GetCategory() -> [Category] {
        return categories
    }
    
    func getProducts(forCategory title: String) -> [Product] {
        switch title {
            case "SHIRTS":
                return GetShirts()
            case "HATS":
                return GetHats()
            case "HOODIES":
                return GetHoodies()
            case "DIGITAL":
                return GetDigitalGoods()
            default:
                return GetDigitalGoods()
        }
    }
    
    func GetHats() -> [Product] {
        return hats
    }
    
    func GetHoodies() -> [Product] {
        return hoodies
    }
    
    func GetShirts() -> [Product] {
        return shirts
    }
    
    func GetDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    
    
}
