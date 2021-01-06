//
//  ViewController.swift
//  OtpViewExample
//
//  Created by 김종권 on 2021/01/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var otpView: OTPFieldView!

    override func viewDidLoad() {
        super.viewDidLoad()

        otpView.baseStyle()
        otpView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: OTPFieldViewDelegate {
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }

    func enteredOTP(otp: String) {
    }

    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return true
    }

    func deletedOTP() {
    }


}
