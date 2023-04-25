//
//  ContactViewController.swift
//  Navigation
//
//  Created by ANTQN on 25.04.2023.
//

import UIKit

let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        setupViews()
    }
    
    private func setupViews() {
        title = "Post View"
        createCustomNavigationBar()
        
        let alertButton = createCustomButton(imageName: "folder", selector: #selector(alertButtonTapped))
        navigationItem.rightBarButtonItem = alertButton // помещаем кнопку на вью
    }
    
    @objc private func alertButtonTapped() {
        self.present(alertController, animated: true, completion: nil)
        let action = UIAlertAction(title: "OK", style: .default) {_ in
            print("Ok - Done")
        }
        let secondAction = UIAlertAction(title: "cancel", style: .default) {_ in
            print("cancel - Done")
        }
        alertController.addAction(action)
        alertController.addAction(secondAction)
    }
    
}
