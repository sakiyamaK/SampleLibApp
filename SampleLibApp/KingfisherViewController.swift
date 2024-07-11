//
//  KingfisherViewController.swift
//  SampleLibApp
//
//  Created by sakiyamaK on 2024/07/11.
//

import UIKit
import SnapKit
import Kingfisher

class KingfisherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        self.view.addSubview(stackView)
                
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        stackView.addArrangedSubview(imageView)

        let button = UIButton()
        var buttonConfig = UIButton.Configuration.filled()
        buttonConfig.title = "ロード！"
//        buttonConfig.baseForegroundColor = .black
        buttonConfig.titlePadding = 10
        button.configuration = buttonConfig
        button.addAction(.init(handler: { _ in
            imageView.kf.indicatorType = .activity
            imageView.kf.setImage(with:URL(string: "https://img.game8.jp/4462434/65ea08dfa0e71d61ed3a20d04a12e8f5.jpeg/show"))
        }), for: .touchUpInside)
        
        stackView.addArrangedSubview(button)
    }


}


#Preview {
    KingfisherViewController()
}
