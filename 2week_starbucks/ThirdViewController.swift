//
//  ThirdViewController.swift
//  2week_starbucks
//
//  Created by sumin on 2021/09/14.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var navigationBack: UIBarButtonItem!
    
    @IBOutlet weak var coffeeNameIcedCaffeAmericano: UILabel!
    @IBOutlet weak var coffeePriceIcedCaffeAmericano: UILabel!
    @IBOutlet weak var EraseButtonIcedCaffeAmericano: UIButton!
    
    @IBOutlet weak var coffeeNameIcedBlackGlazedLatte: UILabel!
    @IBOutlet weak var coffeePriceIcedBlackGlazedLatte: UILabel!
    @IBOutlet weak var EraseButtonIcedBlackGlazedLatte: UIButton!
    
    
    @IBOutlet weak var coffeeNameIcedGrapefruitHoneyBlackTea: UILabel!
    @IBOutlet weak var coffeePriceIcedGrapefruitHoneyBlackTea: UILabel!
    @IBOutlet weak var EraseButtonIcedGrapefruitHoneyBlackTea: UIButton!
    
    @IBOutlet weak var coffeeNameColdBrew: UILabel!
    @IBOutlet weak var coffeePriceColdBrew: UILabel!
    @IBOutlet weak var EraseButtonColdBrew: UIButton!
    
    @IBOutlet weak var coffeeNameCaffeAmericano: UILabel!
    @IBOutlet weak var coffeePriceCaffeAmericano: UILabel!
    @IBOutlet weak var EraseButtonCaffeAmericano: UIButton!
    
    @IBOutlet weak var coffeeNameIcedCaffeLatte: UILabel!
    @IBOutlet weak var coffeePriceIcedCaffeLatte: UILabel!
    @IBOutlet weak var EraseButtonIcedCaffeLatte: UIButton!
    
    @IBOutlet weak var coffeNameIcedAutumnRoadAppleBlackTea: UILabel!
    @IBOutlet weak var coffeePriceIcedAutumnRoadAppleBlackTea: UILabel!
    @IBOutlet weak var EraseButtonIcedAutumnRoadAppleBlackTea: UIButton!
    
    @IBOutlet weak var coffeeNameGreenGlazedCreamFrappuccino: UILabel!
    @IBOutlet weak var coffeePriceGreenGlazedCreamFrappuccino: UILabel!
    @IBOutlet weak var EraseButtonGreenGlazedCreamFrappuccino: UIButton!
    
    @IBOutlet weak var coffeeNameIcedStarbucksDolceLatte: UILabel!
    @IBOutlet weak var coffeePriceIcedStarbucksDolceLatte: UILabel!
    @IBOutlet weak var EraseButtonIcedStarbucksDolceLatte: UIButton!
    
    @IBOutlet weak var coffeeNameDolceColdBrew: UILabel!
    @IBOutlet weak var coffeePriceDolceColdBrew: UILabel!
    @IBOutlet weak var EraseButtonDolceColdBrew: UIButton!
    
    @IBOutlet weak var payment: UIButton! // 하단 결제
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 아이스 카페 아메리카노
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 카페 아메리카노") != nil {
            coffeeNameIcedCaffeAmericano.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 카페 아메리카노")
            coffeePriceIcedCaffeAmericano.text = String(UserDefaults.standard.integer(forKey: "아이스 카페 아메리카노"))
            EraseButtonIcedCaffeAmericano.addTarget(self, action: #selector(deleteIcedCaffeAmericano), for: .touchUpInside)
        }
        else {
            coffeeNameIcedCaffeAmericano.text = ""
            coffeePriceIcedCaffeAmericano.text = ""
            EraseButtonIcedCaffeAmericano.setTitle("", for: UIControl.State.normal)
        }
        
        // 아이스 블랙 글레이즈드 라떼
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 블랙 글레이즈드 라떼") != nil {
            coffeeNameIcedBlackGlazedLatte.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 블랙 글레이즈드 라떼")
            coffeePriceIcedBlackGlazedLatte.text = String(UserDefaults.standard.integer(forKey: "아이스 블랙 글레이즈드 라떼"))
            EraseButtonIcedBlackGlazedLatte.addTarget(self, action: #selector(deleteIcedBlackGlazedLatte), for: .touchUpInside)
        }
        else {
            coffeeNameIcedBlackGlazedLatte.text = ""
            coffeePriceIcedBlackGlazedLatte.text = ""
            EraseButtonIcedBlackGlazedLatte.setTitle("", for: UIControl.State.normal)
        }
        
        // 아이스 자몽 허니 블랙 티
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 자몽 허니 블랙 티") != nil {
            coffeeNameIcedGrapefruitHoneyBlackTea.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 자몽 허니 블랙 티")
            coffeePriceIcedGrapefruitHoneyBlackTea.text = String(UserDefaults.standard.integer(forKey: "아이스 자몽 허니 블랙 티"))
            EraseButtonIcedGrapefruitHoneyBlackTea.addTarget(self, action: #selector(deleteIcedGrapefruitHoneyBlackTea), for: .touchUpInside)
        }
        else {
            coffeeNameIcedGrapefruitHoneyBlackTea.text = ""
            coffeePriceIcedGrapefruitHoneyBlackTea.text = ""
            EraseButtonIcedGrapefruitHoneyBlackTea.setTitle("", for: UIControl.State.normal)
        }
        
        // 콜드 브루
        if UserDefaults.standard.string(forKey: "커피 이름:"+"콜드 브루") != nil {
            coffeeNameColdBrew.text = UserDefaults.standard.string(forKey: "커피 이름:"+"콜드 브루")
            coffeePriceColdBrew.text = String(UserDefaults.standard.integer(forKey: "콜드 브루"))
            EraseButtonColdBrew.addTarget(self, action: #selector(deleteColdBrew), for: .touchUpInside)
        }
        else {
            coffeeNameColdBrew.text = ""
            coffeePriceColdBrew.text = ""
            EraseButtonColdBrew.setTitle("", for: UIControl.State.normal)
        }
        
        // 카페 아메리카노
        if UserDefaults.standard.string(forKey: "커피 이름:"+"카페 아메리카노") != nil {
            coffeeNameCaffeAmericano.text = UserDefaults.standard.string(forKey: "커피 이름:"+"카페 아메리카노")
            coffeePriceCaffeAmericano.text = String(UserDefaults.standard.integer(forKey: "카페 아메리카노"))
            EraseButtonCaffeAmericano.addTarget(self, action: #selector(deleteCaffeAmericano), for: .touchUpInside)
        }
        else {
            coffeeNameCaffeAmericano.text = ""
            coffeePriceCaffeAmericano.text = ""
            EraseButtonCaffeAmericano.setTitle("", for: UIControl.State.normal)
        }
        
        // 아이스 카페 라떼
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 카페 라떼") != nil {
            coffeeNameIcedCaffeLatte.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 카페 라떼")
            coffeePriceIcedCaffeLatte.text = String(UserDefaults.standard.integer(forKey: "아이스 카페 라떼"))
            EraseButtonIcedCaffeLatte.addTarget(self, action: #selector(deleteIcedCaffeLatte), for: .touchUpInside)
        }
        else {
            coffeeNameIcedCaffeLatte.text = ""
            coffeePriceIcedCaffeLatte.text = ""
            EraseButtonIcedCaffeLatte.setTitle("", for: UIControl.State.normal)
        }
        
        // 아이스 오텀 로드 애플 블랙 티
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 오텀 로드 애플 블랙 티") != nil {
            coffeNameIcedAutumnRoadAppleBlackTea.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 오텀 로드 애플 블랙 티")
            coffeePriceIcedAutumnRoadAppleBlackTea.text = String(UserDefaults.standard.integer(forKey: "아이스 오텀 로드 애플 블랙 티"))
            EraseButtonIcedAutumnRoadAppleBlackTea.addTarget(self, action: #selector(deleteIcedAutumnRoadAppleBlackTea), for: .touchUpInside)
        }
        else {
            coffeNameIcedAutumnRoadAppleBlackTea.text = ""
            coffeePriceIcedAutumnRoadAppleBlackTea.text = ""
            EraseButtonIcedAutumnRoadAppleBlackTea.setTitle("", for: UIControl.State.normal)
        }
        
        // 그린 글레이즈드 크림 프라푸치노
        if UserDefaults.standard.string(forKey: "커피 이름:"+"그린 글레이즈드 크림 프라푸치노") != nil {
            coffeeNameGreenGlazedCreamFrappuccino.text = UserDefaults.standard.string(forKey: "커피 이름:"+"그린 글레이즈드 크림 프라푸치노")
            coffeePriceGreenGlazedCreamFrappuccino.text = String(UserDefaults.standard.integer(forKey: "그린 글레이즈드 크림 프라푸치노"))
            EraseButtonGreenGlazedCreamFrappuccino.addTarget(self, action: #selector(deleteGreenGlazedCreamFrappuccino), for: .touchUpInside)
        }
        else {
            coffeeNameGreenGlazedCreamFrappuccino.text = ""
            coffeePriceGreenGlazedCreamFrappuccino.text = ""
            EraseButtonGreenGlazedCreamFrappuccino.setTitle("", for: UIControl.State.normal)
        }
        
        // 아이스 스타벅스 돌체 라떼
        if UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 스타벅스 돌체 라떼") != nil {
            coffeeNameIcedStarbucksDolceLatte.text = UserDefaults.standard.string(forKey: "커피 이름:"+"아이스 스타벅스 돌체 라떼")
            coffeePriceIcedStarbucksDolceLatte.text = String(UserDefaults.standard.integer(forKey: "아이스 스타벅스 돌체 라떼"))
            EraseButtonIcedStarbucksDolceLatte.addTarget(self, action: #selector(deleteIcedStarbucksDolceLatte), for: .touchUpInside)
        }
        else {
            coffeeNameIcedStarbucksDolceLatte.text = ""
            coffeePriceIcedStarbucksDolceLatte.text = ""
            EraseButtonIcedStarbucksDolceLatte.setTitle("", for: UIControl.State.normal)
        }
        
        // 돌체 콜드 브루
        if UserDefaults.standard.string(forKey: "커피 이름:"+"돌체 콜드 브루") != nil {
            coffeeNameDolceColdBrew.text = UserDefaults.standard.string(forKey: "커피 이름:"+"돌체 콜드 브루")
            coffeePriceDolceColdBrew.text = String(UserDefaults.standard.integer(forKey: "돌체 콜드 브루"))
            EraseButtonDolceColdBrew.addTarget(self, action: #selector(deleteDolceColdBrew), for: .touchUpInside)
        }
        else {
            coffeeNameDolceColdBrew.text = ""
            coffeePriceDolceColdBrew.text = ""
            EraseButtonDolceColdBrew.setTitle("", for: UIControl.State.normal)
        }
        
    }
    
    // 아이스 카페 아메리카노 삭제 버튼 클릭 시,
    @objc func deleteIcedCaffeAmericano(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 카페 아메리카노")
        UserDefaults.standard.removeObject(forKey: "아이스 카페 아메리카노")
        dismiss(animated: false, completion: nil)
    }
    
    // 아이스 블랙 글레이즈드 라떼 삭제 버튼 클릭 시,
    @objc func deleteIcedBlackGlazedLatte(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 블랙 글레이즈드 라떼")
        UserDefaults.standard.removeObject(forKey: "아이스 블랙 글레이즈드 라떼")
        dismiss(animated: false, completion: nil)
    }
    
    // 아이스 자몽 허니 블랙 티 삭제 버튼 클릭 시,
    @objc func deleteIcedGrapefruitHoneyBlackTea(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 자몽 허니 블랙 티")
        UserDefaults.standard.removeObject(forKey: "아이스 자몽 허니 블랙 티")
        dismiss(animated: false, completion: nil)
    }
    
    // 콜드 브루 삭제 버튼 클릭 시,
    @objc func deleteColdBrew(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"콜드 브루")
        UserDefaults.standard.removeObject(forKey: "콜드 브루")
        dismiss(animated: false, completion: nil)
    }
    
    // 카페 아메리카노 삭제 버튼 클릭 시,
    @objc func deleteCaffeAmericano(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"카페 아메리카노")
        UserDefaults.standard.removeObject(forKey: "카페 아메리카노")
        dismiss(animated: false, completion: nil)
    }
    
    // 아이스 카페 라떼 삭제 버튼 클릭 시,
    @objc func deleteIcedCaffeLatte(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 카페 라떼")
        UserDefaults.standard.removeObject(forKey: "아이스 카페 라떼")
        dismiss(animated: false, completion: nil)
    }
    
    // 아이스 오텀 로드 애플 블랙 티 삭제 버튼 클릭 시,
    @objc func deleteIcedAutumnRoadAppleBlackTea(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 오텀 로드 애플 블랙 티")
        UserDefaults.standard.removeObject(forKey: "아이스 오텀 로드 애플 블랙 티")
        dismiss(animated: false, completion: nil)
    }
    
    // 그린 글레이즈드 크림 프라푸치노 삭제 버튼 클릭 시,
    @objc func deleteGreenGlazedCreamFrappuccino(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"그린 글레이즈드 크림 프라푸치노")
        UserDefaults.standard.removeObject(forKey: "그린 글레이즈드 크림 프라푸치노")
        dismiss(animated: false, completion: nil)
    }
    
    // 아이스 스타벅스 돌체 라떼 삭제 버튼 클릭 시,
    @objc func deleteIcedStarbucksDolceLatte(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"아이스 스타벅스 돌체 라떼")
        UserDefaults.standard.removeObject(forKey: "아이스 스타벅스 돌체 라떼")
        dismiss(animated: false, completion: nil)
    }
    
    // 돌체 콜드 브루 삭제 버튼 클릭 시,
    @objc func deleteDolceColdBrew(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "커피 이름:"+"돌체 콜드 브루")
        UserDefaults.standard.removeObject(forKey: "돌체 콜드 브루")
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func didTapNavigationBack(_ sender: UIBarButtonItem) {
        dismiss(animated: false, completion: nil)
    }
    

    @IBAction func didTapPayment(_ sender: UIButton) {
        
        let totalPrice: String = String(UserDefaults.standard.integer(forKey: "아이스 카페 아메리카노") + UserDefaults.standard.integer(forKey: "아이스 블랙 글레이즈드 라떼") + UserDefaults.standard.integer(forKey: "아이스 자몽 허니 블랙 티") + UserDefaults.standard.integer(forKey: "콜드 브루") + UserDefaults.standard.integer(forKey: "카페 아메리카노") + UserDefaults.standard.integer(forKey: "아이스 카페 라떼") + UserDefaults.standard.integer(forKey: "아이스 오텀 로드 애플 블랙 티") + UserDefaults.standard.integer(forKey: "그린 글레이즈드 크림 프라푸치노") + UserDefaults.standard.integer(forKey: "아이스 스타벅스 돌체 라떼") + UserDefaults.standard.integer(forKey: "돌체 콜드 브루"))
        
        let alert = UIAlertController(title: "결제", message: "총 "+totalPrice+"원", preferredStyle: UIAlertController.Style.alert)
            
            // 메시지 창 컨트롤러에 들어갈 버튼 액션 객체 생성
        let defaultAction =  UIAlertAction(title: "결제하기", style: UIAlertAction.Style.default){(_) in exit(0)}
        let cancelAction = UIAlertAction(title: "결제 취소", style: UIAlertAction.Style.cancel, handler: nil)
            
        //메시지 창 컨트롤러에 버튼 액션을 추가
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
    }
    
}
