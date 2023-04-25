//
//  ViewController.swift
//  Navigation
//
//  Created by ANTQN on 25.04.2023.
//

import UIKit

class MyViewController: UIViewController {
    
    // создали кнопку
    private let contactButton: UIButton = {
       let button = UIButton()
        button.setTitle("Go to Post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        setupViews()
        setConstrains()
        contactButton.addTarget(self, action: #selector(contactButtonTapped), for: .touchUpInside)
    }
    
    // создаем действие на нажатие
    @objc private func contactButtonTapped() {
        let contactViewController = ContactViewController()
        navigationController?.pushViewController(contactViewController, animated: true)
    }
    
    // установили тайтл и кнопку
    private func setupViews() {
        title = "Feed"
        view.addSubview(contactButton)
    }
    
    // расположение кнопки
    private func setConstrains() {
        NSLayoutConstraint.activate([
            contactButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactButton.heightAnchor.constraint(equalToConstant: 50),
            contactButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }


}

