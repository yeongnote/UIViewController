//
//  ViewController.swift
//  UIViewControllerTest
//
//  Created by YeongHo Ha on 12/13/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let datas = ["Option 1", "Option 2", "Option 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //UILabel
        //setUILabel()
        
        //UIImageView
        //setUIImageView()
        
        //UITextField
        //setUITextField()
        
        //UIButton
        //setUIButton()
        
        //UISwitch
        //setUISwitch()
        
        //UISlider
        //setUISlider()
        
        //UISegmentControl
        //setUISegmentControl()
        
        //UIScrollView
        //setUIScrollView()
        
        
        //UIPickerView
        setUIPickerView()
        
        //UITableView
        //setUITableView()
        
        //UICollectionView
        //setUICollectionView()
    }
    
    
    
    //MARK: - UILabel
    func setUILabel() {
        let label = UILabel()
        label.text = "UILabel 속성 예제입니다."
        label.font = UIFont.systemFont(ofSize: 20) // 폰트 크기 설정.
        label.textColor = UIColor.black //텍스트 색상 설정
        label.textAlignment = .center // 가운데 정렬
        label.numberOfLines = 3 // 최대 2줄까지 표시(0으로 설정하면 자동 줄바꿈)
        label.lineBreakMode = .byTruncatingTail // 텍스트가 너무 길때, ... 표시하고 줄 바꿈
        
        //스토리보드에서 연결한 것이 아니기 때문에, 코드로 위치 지정하고 크기 설정함.
        label.frame = CGRect(x: 150, y: 200, width: 100, height: 100)
        self.view.addSubview(label)
    }
    
    
    
    //MARK: - UIImageView
    func setUIImageView() {
        // UIImageView 생성 및 이미지 설정
        let imageView = UIImageView()
        let image = UIImage(named: "aLogo") //이미지 파일명으로 UIImage 객체 생성
        imageView.image = image
        // contentMode 설정 (이미지가 뷰에 맞춰지는 방법)
        imageView.contentMode = .redraw
        
        //이미지 뷰의 프레임 설정(위치와 크기)
        imageView.frame = CGRect(x: 150, y: 200, width: 100, height: 100)
        self.view.addSubview(imageView)
    }
    
    //MARK: - UITextField
    func setUITextField() {
        let textField = UITextField()
        textField.placeholder = "텍스트를 입력하세요."
        textField.borderStyle = .roundedRect //텍스트필드 둥근사각형 모양의 테두리(none, line, bezel 등 있음)
        textField.keyboardType = .default // 키보드 입력 타입(기본설정)
        textField.isSecureTextEntry = false // 보안입력(비밀번호 등) 여부
        textField.returnKeyType = .done // 리턴(엔터) 키의 종류
        textField.layer.borderWidth = 2.0 // 테두리 선 굵기 설정
        
        //텍스트필드 프레임 설정(위치와 크기
        textField.frame = CGRect(x: 50, y: 200, width: 300, height: 200)
        self.view.addSubview(textField)
    }
    
    //MARK: - UIButton
    func setUIButton() {
        let button = UIButton(type: .system) // 시스템 스타일의 버튼 생성
        button.setTitle("버튼 터치", for: .normal) // 버튼에 표시될 텍스트
        button.backgroundColor = UIColor.systemCyan // 버튼 배경색 설정
        button.setTitleColor(UIColor.black, for: .normal)// 버튼 텍스트 색상 설정
        // 버튼에 대한 액션 설정(버튼이 탭되었을 때 실행될 함수)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        // 버튼의 프레임 설정(위치와 크기)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        self.view.addSubview(button)
        
        //텍스트의 폰트 설정
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    }
    // 버튼을 터치했을 때 실행 코드
    @objc func buttonTapped() {
        print("버튼 터치 완료")
    }
    
    //MARK: - UISwitch
    func setUISwitch() {
        let switchOnOff = UISwitch()
        switchOnOff.isOn = true // 스위치 초기 상태 설정
        switchOnOff.onTintColor = UIColor.systemBlue //켜져있을 때의 배경 색상 설정
        switchOnOff.thumbTintColor = UIColor.black // 썸네일 색상 설정
        switchOnOff.frame = CGRect(x: 150, y: 200, width: 100, height: 100)
        self.view.addSubview(switchOnOff)
        // 스위치 상태 변경 이벤트 처리
        switchOnOff.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
        
    }
    
    @objc func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            print("스위치 ON")
        } else {
            print("스위치 OFF")
        }
    }
    
    //MARK: - UISlider
    func setUISlider() {
        let slider = UISlider()
        slider.value = 50 //슬라이더 초기 값 설정
        slider.minimumValue = 0 // 슬라이더의 최소값 설정
        slider.maximumValue = 100 // 슬라이더의 최대값 설정
        slider.minimumTrackTintColor = UIColor.systemCyan // 왼쪽 트랙 색상 설정
        slider.maximumTrackTintColor = UIColor.black // 오른쪽 트랙 색상 설정
        slider.thumbTintColor = UIColor.white // 썸네일 색상 설정
        slider.frame = CGRect(x: 100, y: 500, width: 200, height: 100)
        self.view.addSubview(slider)
        //슬라이더 값 변경 이벤트 처리
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
    }
    @objc func sliderValueChanged(_ sender: UISlider) {
            print("Slider 값: \(sender.value)")
    }
    
    //MARK: - UISegmentControl
    func setUISegmentControl() {
        let segmentedControl = UISegmentedControl(items: self.datas)
        segmentedControl.selectedSegmentIndex = 0 // 초기 선택된 세그먼트 인덱스 설정
        segmentedControl.tintColor = UIColor.blue // 세그먼트 컨트롤 색상 설정
        segmentedControl.isMomentary = false // 선택 표시를 유지할지 여부 설정
        // 세그먼트 값 변경 이벤트 처리
        segmentedControl.addTarget(self, action: #selector(segmentValueChanged(_:)), for: .valueChanged)
        segmentedControl.frame = CGRect(x: 50, y: 200, width: 300, height: 100)
        self.view.addSubview(segmentedControl)
    }
    @objc func segmentValueChanged(_ sender: UISegmentedControl) {
        print("Selected segment index: \(sender.selectedSegmentIndex)")
    }
    
    //MARK: - UIScrollView
    func setUIScrollView() {
        let scroll = UIScrollView(frame: view.bounds)
        //contentSize: 스크롤영역의 크기, 이 값이 UIScrollView의 프레임보다 크면 스크롤이 가능
        scroll.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2 )
        scroll.isScrollEnabled = true // 스크롤 기능 활성화/비활성화
        scroll.isPagingEnabled = false //페이지 기능 활성화/비활성화
        scroll.bounces = true //바운스 효과
        
        // 스크롤 뷰에 추가할 UILabel
        let label = UILabel(frame: CGRect(x: 0, y: view.frame.height - 50, width: view.frame.width,
                                          height: 100))
        label.text = "Hi, UIScrollView!"
        label.textAlignment = .center
        scroll.addSubview(label)
        
        self.view.addSubview(scroll)
    }
    //MARK: - UIPickerView
    func setUIPickerView() {
        let picker =  UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        picker.center = self.view.center
        
        self.view.addSubview(picker)
    }
    // UIPickerViewDataSource 1
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 //PickerView의 열
    }
    // UIPickerViewDataSource 2
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datas.count //PickerView의 행
    }
    //선택사항
    //UIPickerViewDelegate 1
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datas[row]
    }
    //UIPickerViewDelegate 2
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected: \(datas[row])")
    }
    
    //MARK: - UITableView
    
    //MARK: - UICollectionView
}

