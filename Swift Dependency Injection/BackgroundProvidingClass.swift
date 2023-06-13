//
//  BackgroundProvidingClass.swift
//  Swift Dependency Injection
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import Foundation
import UIKit

class BackgroundProviding : BackgroundProvider{
    var backgroundColor: UIColor {
        let backgroundColor : [UIColor] = [.black,.blue,.brown,.gray,.green]
        return backgroundColor.randomElement()!
    }
    
    
}
