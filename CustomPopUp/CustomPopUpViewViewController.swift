//
//  CustomPopUpViewViewController.swift
//  CustomPopUp
//
//  Created by hwijinjeong on 2023/06/27.
//

import UIKit

class CustomPopUpViewViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var subscribeBtn: UIButton!
    
    @IBOutlet weak var bgBtn: UIButton!
    
    var subscribeBtnCompletionClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.cornerRadius = 30
        subscribeBtn.layer.cornerRadius = 10

    }

    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("clicked")
        // 창 닫기
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSubscribeBtnClicked(_ sender: UIButton) {
        print("clicked")
        
        self.dismiss(animated: true, completion: nil)
        
        // 팝업 컨트롤러에서 버튼이 클릭 되었을 때 이루어지는 이벤트를 메인(뷰컨트롤러)에서 알아야 한다. 이런 이벤트를 어떻게 알릴지가 매우 중요함.
        // 컴플레션 블럭 호출
        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
            // 메인에 알린다
            subscribeBtnCompletionClosure()
        }
    }
    
}
