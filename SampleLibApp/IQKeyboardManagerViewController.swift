//
//  KingfisherViewController.swift
//  SampleLibApp
//
//  Created by sakiyamaK on 2024/07/11.
//

import UIKit
import SnapKit
import Kingfisher

class IQKeyboardManagerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        self.view.addSubview(stackView)
                
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }

        let spaceView = UIView()
        stackView.addArrangedSubview(spaceView)

        let textField = UITextField()
        textField.keyboardType = .twitter
        textField.borderStyle = .roundedRect
        stackView.addArrangedSubview(textField)

        let textField2 = UITextField()
        textField2.keyboardType = .twitter
        textField2.borderStyle = .roundedRect
        stackView.addArrangedSubview(textField2)

        let spaceView2 = UIView()
        NSLayoutConstraint.activate([
            spaceView2.heightAnchor.constraint(equalToConstant: 30)
        ])
        stackView.addArrangedSubview(spaceView2)

    }
}


#Preview {
    IQKeyboardManagerViewController()
}
