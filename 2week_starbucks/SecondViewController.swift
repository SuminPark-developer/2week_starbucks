//
//  SecondViewController.swift
//  2week_starbucks
//
//  Created by sumin on 2021/09/13.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var coffeName: UILabel!
    
    @IBOutlet weak var btnTall: UIImageView!
    @IBOutlet weak var btnGrande: UIImageView!
    @IBOutlet weak var btnVenti: UIImageView!
    
    @IBOutlet weak var cupChooseView: UIView! // 컵 선택 뷰
    @IBOutlet weak var btnHall: UIButton! // 매장컵 버튼
    @IBOutlet weak var btnPerson: UIButton! // 개인컵 버튼
    @IBOutlet weak var btnOne: UIButton! // 일회용컵 버튼
    
    var result: String = "" // 커피 이름
    var price: Int = 0
    var priceResult: Int = 0
    
    @IBOutlet weak var stepper: UIStepper! // stepper
    @IBOutlet weak var valueLabel: UILabel! // 몇 잔
    @IBOutlet weak var priceLabel: UILabel! // 가격
    
    @IBOutlet weak var closeButton: UIButton! // 취소하기 버튼
    @IBOutlet weak var shoppingButton: UIButton! // 장바구니에 담기 버튼
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coffeName.text = result // 커피 이름 설정
        
        // 버튼 테두리 - https://gonslab.tistory.com/34
        btnTall.layer.cornerRadius = 10 // 꼭짓점 굴곡률
        btnGrande.layer.cornerRadius = 10 // 꼭짓점 굴곡률
        btnVenti.layer.cornerRadius = 10 // 꼭짓점 굴곡률
        btnTall.layer.borderWidth = 1 // 테두리 굵기
        btnGrande.layer.borderWidth = 1 // 테두리 굵기
        btnVenti.layer.borderWidth = 1 // 테두리 굵기
        btnTall.layer.borderColor = UIColor.systemGray.cgColor // 테두리 색상
        btnGrande.layer.borderColor = UIColor.systemGray.cgColor // 테두리 색상
        btnVenti.layer.borderColor = UIColor.systemGray.cgColor // 테두리 색상
        
        cupChooseView.layer.cornerRadius = 15 // 컵 선택 뷰의 꼭짓점 굴곡률
        cupChooseView.layer.borderWidth = 1 // 컵 선택 뷰의 테두리 굵기
        cupChooseView.layer.borderColor = UIColor.systemGray.cgColor // 컵 선택 뷰의 테두리 색상
        
        btnPerson.layer.borderWidth = 1 // 개인컵 부분 테두리
        btnPerson.layer.borderColor = UIColor.systemGray.cgColor // 개인컵 부분 테두리 색상

        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 20
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description // 커피 잔 개수
        
        priceResult = (Int(sender.value) * price) // 가격 계산
        priceLabel.text = priceResult.description
    }
    
    @IBAction func tapCloseButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func tapShoppingButton(_ sender: UIButton) {
        UserDefaults.standard.set(result, forKey: "커피 이름:"+coffeName.text!)
        UserDefaults.standard.set(priceResult, forKey: coffeName.text!)
        
        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        thirdViewController.modalPresentationStyle = .fullScreen
        self.present(thirdViewController, animated: true, completion: nil)
    }
    
}
