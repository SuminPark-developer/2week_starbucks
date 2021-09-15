//
//  ViewController.swift
//  2week_starbucks
//
//  Created by sumin on 2021/09/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shoppingBasket: UIBarButtonItem!
    
    @IBOutlet weak var IcedCaffeAmericano: UIImageView!
    @IBOutlet weak var IcedBlackGlazedLatte: UIImageView!
    @IBOutlet weak var IcedGrapefruitHoneyBlackTea: UIImageView!
    @IBOutlet weak var ColdBrew: UIImageView!
    @IBOutlet weak var CaffeAmericano: UIImageView!
    @IBOutlet weak var IcedCaffeLatte: UIImageView!
    @IBOutlet weak var IcedAutumnRoadAppleBlackTea: UIImageView!
    @IBOutlet weak var GreenGlazedCreamFrappuccino: UIImageView!
    @IBOutlet weak var IcedStarbucksDolceLatte: UIImageView!
    @IBOutlet weak var DolceColdBrew: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default) // 상단 navigation bar 색상 변경.
        // https://yagom.net/forums/topic/swiftui-navigationbar-%EC%83%89%EA%B9%94%EC%9D%B4-%EC%9D%B4%EC%83%81%ED%95%A9%EB%8B%88%EB%8B%A4/
        
        // 이미지(아이스 카페 아메리카노)가 터치될 수 있게 만들어 줌.
        let availableImgIcedCaffeAmericano = UITapGestureRecognizer(target: self, action: #selector(touchIcedCaffeAmericano))
        IcedCaffeAmericano.isUserInteractionEnabled = true
        IcedCaffeAmericano.addGestureRecognizer(availableImgIcedCaffeAmericano)
        
        // 이미지(아이스 블랙 글레이즈드 라떼)가 터치될 수 있게 만들어 줌.
        let availableImgIcedBlackGlazedLatte = UITapGestureRecognizer(target: self, action: #selector(touchIcedBlackGlazedLatte))
        IcedBlackGlazedLatte.isUserInteractionEnabled = true
        IcedBlackGlazedLatte.addGestureRecognizer(availableImgIcedBlackGlazedLatte)
        
        // 이미지(아이스 자몽 허니 블랙 티)가 터치될 수 있게 만들어 줌.
        let availableImgIcedGrapefruitHoneyBlackTea = UITapGestureRecognizer(target: self, action: #selector(touchIcedGrapefruitHoneyBlackTea))
        IcedGrapefruitHoneyBlackTea.isUserInteractionEnabled = true
        IcedGrapefruitHoneyBlackTea.addGestureRecognizer(availableImgIcedGrapefruitHoneyBlackTea)
        
        // 이미지(콜드 브루)가 터치될 수 있게 만들어 줌.
        let availableImgColdBrew = UITapGestureRecognizer(target: self, action: #selector(touchColdBrew))
        ColdBrew.isUserInteractionEnabled = true
        ColdBrew.addGestureRecognizer(availableImgColdBrew)
        
        // 이미지(카페 아메리카노)가 터치될 수 있게 만들어 줌.
        let availableImgCaffeAmericano = UITapGestureRecognizer(target: self, action: #selector(touchCaffeAmericano))
        CaffeAmericano.isUserInteractionEnabled = true
        CaffeAmericano.addGestureRecognizer(availableImgCaffeAmericano)
        
        // 이미지(아이스 카페 라떼)가 터치될 수 있게 만들어 줌.
        let availableImgIcedCaffeLatte = UITapGestureRecognizer(target: self, action: #selector(touchIcedCaffeLatte))
        IcedCaffeLatte.isUserInteractionEnabled = true
        IcedCaffeLatte.addGestureRecognizer(availableImgIcedCaffeLatte)
        
        // 이미지(아이스 오텀 로드 애플 블랙 티)가 터치될 수 있게 만들어 줌.
        let availableImgIcedAutumnRoadAppleBlackTea = UITapGestureRecognizer(target: self, action: #selector(touchIcedAutumnRoadAppleBlackTea))
        IcedAutumnRoadAppleBlackTea.isUserInteractionEnabled = true
        IcedAutumnRoadAppleBlackTea.addGestureRecognizer(availableImgIcedAutumnRoadAppleBlackTea)
        
        // 이미지(그린 글레이즈드 크림 프라푸치노)가 터치될 수 있게 만들어 줌.
        let availableImgGreenGlazedCreamFrappuccino = UITapGestureRecognizer(target: self, action: #selector(touchGreenGlazedCreamFrappuccino))
        GreenGlazedCreamFrappuccino.isUserInteractionEnabled = true
        GreenGlazedCreamFrappuccino.addGestureRecognizer(availableImgGreenGlazedCreamFrappuccino)
        
        // 이미지(아이스 스타벅스 돌체 라떼)가 터치될 수 있게 만들어 줌.
        let availableImgIcedStarbucksDolceLatte = UITapGestureRecognizer(target: self, action: #selector(touchIcedStarbucksDolceLatte))
        IcedStarbucksDolceLatte.isUserInteractionEnabled = true
        IcedStarbucksDolceLatte.addGestureRecognizer(availableImgIcedStarbucksDolceLatte)
        
        // 이미지(돌체 콜드 브루)가 터치될 수 있게 만들어 줌.
        let availableImgDolceColdBrew = UITapGestureRecognizer(target: self, action: #selector(touchDolceColdBrew))
        DolceColdBrew.isUserInteractionEnabled = true
        DolceColdBrew.addGestureRecognizer(availableImgDolceColdBrew)
        
    }
    
    // 우측 상단 장바구니 클릭 시,
    @IBAction func didTapShoppingBasket(_ sender: UIBarButtonItem) {
        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        thirdViewController.modalPresentationStyle = .fullScreen
        self.present(thirdViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedCaffeAmericano() { // 아이스 카페 아메리카노 클릭 시,
        print("haha")
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 카페 아메리카노"
        secondViewController.price = 4100
//        secondViewController.modalPresentationStyle = .fullScreen
        // 모들은 뒤로가기 제스쳐가 안됨. -> NavigationController를 알아보고 적용해보자!
        // https://stackoverflow.com/questions/56435510/presenting-modal-in-ios-13-fullscreen
        self.present(secondViewController, animated: true, completion: nil)
//        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @objc func touchIcedBlackGlazedLatte() { // 아이스 블랙 글레이즈드 라떼 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 블랙 글레이즈드 라떼"
        secondViewController.price = 6100
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedGrapefruitHoneyBlackTea() { // 아이스 자몽 허니 블랙 티 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 자몽 허니 블랙 티"
        secondViewController.price = 5300
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchColdBrew() { // 콜드 브루 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "콜드 브루"
        secondViewController.price = 4500
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchCaffeAmericano() { // 카페 아메리카노 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "카페 아메리카노"
        secondViewController.price = 4100
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedCaffeLatte() { // 아이스 카페 라떼 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 카페 라떼"
        secondViewController.price = 4600
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedAutumnRoadAppleBlackTea() { // 아이스 오텀 로드 애플 블랙 티 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 오텀 로드 애플 블랙 티"
        secondViewController.price = 5800
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchGreenGlazedCreamFrappuccino() { // 그린 글레이즈드 크림 프라푸치노 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "그린 글레이즈드 크림 프라푸치노"
        secondViewController.price = 6300
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedStarbucksDolceLatte() { // 아이스 스타벅스 돌체 라떼 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "아이스 스타벅스 돌체 라떼"
        secondViewController.price = 5600
        self.present(secondViewController, animated: true, completion: nil)
    }

    
    @objc func touchDolceColdBrew() { // 돌체 콜드 브루 클릭 시,
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondViewController.result = "돌체 콜드 브루"
        secondViewController.price = 5800
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}

