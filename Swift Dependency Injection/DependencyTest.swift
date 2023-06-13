//
//  DependencyTest.swift
//  Swift Dependency Injection
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import Foundation
//basic dependency injection example 
struct Instrument{
    var name : String
    var brand : String
}
struct Band{
    var name: String
}
struct Musician{
    var instrument: Instrument
    var brand: Band
    var name: String
    var age: Int
}
//example
/*
let james : Musician(instrument: <#T##Instrument#>, brand: <#T##Band#>, name: <#T##String#>, age: <#T##Int#>)
*/
