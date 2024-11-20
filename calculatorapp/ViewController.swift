//
//  ViewController.swift
//  calculatorapp
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    // 배경, 글씨 색상과 폰트 설정!
    private func configureUI() {
        view.backgroundColor = .black
        label.text = "12345"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
                
        // 화면에 표시 설정!
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(100)
            $0.top.equalTo(view.snp.top).offset(200)
        }

    }

}

