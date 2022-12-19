//
//  ViewController.swift
//  PickerView
//
//  Created by 현구김 on 2022/12/19.
//

import UIKit

//UIPickerView 상속
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg" ]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //피커 뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 델리게이트 메서드
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    //numberOfRowsInComponent 인수를 가지는 델리게이트 메서드 피커뷰에게 컴포넌트의 열의 개수를 정수 값으로 넘겨준다.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    //titleForRow 인수를 가지는 델리게이트 메서드, 피커 뷰에게 컴포넌트의 각 열의 타이틀을 문자열(imageFileName에 저장되어 있는 파일명) 값으로 넘겨준다.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    //사용자가 피커 뷰의 룰렛에서 선택한 row값을 사용하여 imageFileName 배열의 row값에 해당하는 문자열을 가져온다.
    //가져온 값은 lblImageFileName 에 저장한다.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
    }
}

