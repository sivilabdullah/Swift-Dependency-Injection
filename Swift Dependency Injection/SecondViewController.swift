//
//  SecondViewController.swift
//  Swift Dependency Injection
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import UIKit

class SecondViewController: UIViewController {

    private let providerProtocol : BackgroundProvider?
    
    init(providerProtocol: BackgroundProvider?) {
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = providerProtocol?.backgroundColor ?? .white
    }

}
