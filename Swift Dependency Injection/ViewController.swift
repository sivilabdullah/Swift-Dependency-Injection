//
//  ViewController.swift
//  Swift Dependency Injection
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import UIKit
import Swinject
class ViewController: UIViewController {

    //swinject
    let container : Container = {
      let container  = Container()
        container.register(BackgroundProviding.self) { resolver in
                return BackgroundProviding()
        }
        
        container.register(SecondViewController.self) { resolver in
            let vc = SecondViewController(providerProtocol: resolver.resolve(BackgroundProviding.self))
            return vc
        }
        
        return container
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        //1)
        view.backgroundColor = .systemRed
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        button.setTitle("open another vc", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func buttonClicked(){
        if let viewController = container.resolve(SecondViewController.self){
            present(viewController, animated: true)
        }
    }

}

