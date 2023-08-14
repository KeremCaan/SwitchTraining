//
//  ViewController.swift
//  NeonAcademySwitch
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let switchButton: UISwitch = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
        view.backgroundColor = .green
        
        view.addSubview(switchButton)
        switchButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        switchButton.onTintColor = .purple
        switchButton.thumbTintColor = .black
        switchButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
        }
    }
    @objc func buttonTapped() {
        if switchButton.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }


}

