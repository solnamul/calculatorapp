# 계산기 앱 만들기 🎄

Swift와 SnapKit을 사용하여 제작한 계산기 앱. 

버튼과 결과 표시 화면을 포함한 모든 UI 요소를 **프로그래밍 방식**으로 구현했으며, `UIStackView`를 활용하여 깔끔하고 효율적인 UI 레이아웃을 설계.

---

## 주요 기능

- **결과 화면**: 직관적인 숫자 표시.
- **다양한 버튼**:
    - 숫자 버튼(0-9)
    - 연산 버튼(`+`, ``, ``, `/`)
    - 기능 버튼(`AC`, `=`)
- **SnapKit으로 레이아웃 관리**:
    - 코드로만 작성한 레이아웃을 `SnapKit` 라이브러리를 통해 효율적으로 제어.
- **버튼 디자인**:
    - 숫자 버튼은 다크 그레이 색상, 연산 버튼은 오렌지 색상으로 구분.
    - 둥근 모서리 버튼으로 모던한 디자인 구현.

---
 ## **코드 설명**

### **레이블 설정**

결과를 표시하는 레이블의 초기 설정:
```swift
label.text = "12345"
label.textColor = .white
label.font = .boldSystemFont(ofSize: 60)
label.textAlignment = .right
```
### **버튼 생성 함수**

각 버튼을 동적으로 생성하며, 연산 버튼과 숫자 버튼을 색상으로 구분!
`else` 를 사용해 명확한 색상 사용 표현.
```swift
let operators = ["+", "-", "*", "AC", "=", "/"]
if operators.contains(title) {
    button.backgroundColor = UIColor.orange
} else {
    button.backgroundColor = UIColor.darkGray
}
button.layer.cornerRadius = 40
```

### **스택뷰를 활용한 UI 정렬**

`UIStackView`를 사용해 버튼을 가로 및 세로로 정렬
```swift
let verticalStackView = UIStackView(arrangedSubviews: [stackView1, stackView2, stackView3, stackView4])
verticalStackView.axis = .vertical
verticalStackView.spacing = 10
verticalStackView.distribution = .fillEqually
```
---
## **개발에 사용된 기술**

- **언어**: Swift
- **UI 구성**: UIKit
- **레이아웃 관리**: SnapKit
