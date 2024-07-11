//
//  ViewController.swift
//  SampleLibApp
//
//  Created by sakiyamaK on 2024/07/11.
//

import UIKit
import Lottie
import SnapKit
import Kingfisher

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let button = UIButton()
        var buttonConfig = UIButton.Configuration.filled()
        buttonConfig.title = "遷移"
        button.configuration = buttonConfig
        button.addAction(.init(handler: { _ in
            let nextVC = IQKeyboardManagerViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
                
        
        // Do any additional setup after loading the view.
    }


}

