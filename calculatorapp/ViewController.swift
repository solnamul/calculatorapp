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
    
    // UI 설정
    private func configureUI() {
        view.backgroundColor = .black
        
        // 결과 표시!
        label.text = "12345"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(100)
            $0.top.equalTo(view.snp.top).offset(200)
        }
        
        // 버튼 추가
        let row1 = ["7", "8", "9", "+"]
        let row2 = ["4", "5", "6", "-"]
        let row3 = ["1", "2", "3", "*"]
        let row4 = ["AC", "0", "=", "/"]
        
        let stackView1 = makeHorizontalStackView(row1.map { createButton(title: $0) })
        let stackView2 = makeHorizontalStackView(row2.map { createButton(title: $0) })
        let stackView3 = makeHorizontalStackView(row3.map { createButton(title: $0) })
        let stackView4 = makeHorizontalStackView(row4.map { createButton(title: $0) })
        
        // 수직 스택뷰로 정렬!
        let verticalStackView = UIStackView(arrangedSubviews: [stackView1, stackView2, stackView3, stackView4])
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        
        view.addSubview(verticalStackView)
                verticalStackView.snp.makeConstraints {
                    $0.width.equalTo(350) // 너비 고정
                    $0.top.equalTo(label.snp.bottom).offset(60) // 레이블 아래쪽 60pt
                    $0.centerX.equalToSuperview() // 화면 중심에 정렬
        }
    }
    
    // 버튼 생성!
    private func createButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.white, for: .normal)
        
        // 연산 버튼을 오렌지 색상으로 변경하고, 일반 숫자는 다크 그레이 지정.
        // else를 사용해 사용한 색상 명확히 표시!
        let operators = ["+", "-", "*", "AC", "=", "/"]
        if operators.contains(title) {
            button.backgroundColor = UIColor.orange
        } else {
            button.backgroundColor = UIColor.darkGray
        }
        
        button.layer.cornerRadius = 40
        button.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        return button
    }
    
    // 스택뷰 생성!
    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
}
