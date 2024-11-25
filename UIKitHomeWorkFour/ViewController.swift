//
//  ViewController.swift
//  UIKitHomeWorkFour
//
//  Created by Масуд Гаджиев on 24.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var avatarImage = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "avatar")
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var fullName = textLabel(text: "Имя Фамилия", color: .black, font: .boldSystemFont(ofSize: 16))
    
    lazy var uiView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        $0.layer.cornerRadius = 30
        $0.layer.masksToBounds = true
        $0.addSubview(bunnerImageInView)
        $0.addSubview(textTitle)
        $0.addSubview(discriptionText)
        $0.addSubview(nextButton)
        return $0
    }(UIView())
    
    lazy var bunnerImageInView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "bunner")
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        $0.addSubview(textNamePhoto)
        return $0
    }(UIImageView())
    
    lazy var textNamePhoto = textLabel(text: "Название фото", color: .white, font: .boldSystemFont(ofSize: 20))
    
    lazy var textTitle = textLabel(text: "Заголовок", color: .black, font: .boldSystemFont(ofSize: 20))
    
    lazy var discriptionText = textLabel(text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore ", color: .black, font: .systemFont(ofSize: 16, weight: .light))
    
    lazy var nextButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGreen
        $0.setTitleColor(.white, for: .normal)
        $0.setTitle("next", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIButton(primaryAction: UIAction(handler: { [weak self] _ in
        guard let self else {return}
        let vc = SecondViewController()
        navigationController?.pushViewController(SecondViewController(), animated: true)
    })))

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addSubview()
        setConstraint()
    }
    
    private func addSubview() {
        view.addSubview(avatarImage)
        view.addSubview(fullName)
        view.addSubview(uiView)
        
    }
    
    private func textLabel(text: String, color: UIColor, font: UIFont) -> UILabel {
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = text
        textLabel.font = font
        textLabel.textColor = color
        textLabel.numberOfLines = 0
        return textLabel
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            avatarImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            avatarImage.heightAnchor.constraint(equalToConstant: 63),
            avatarImage.widthAnchor.constraint(equalToConstant: 63),
            //avatarImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -298)
            
            fullName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 22),
            fullName.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 12),
            fullName.heightAnchor.constraint(equalToConstant: 19),
            fullName.widthAnchor.constraint(equalToConstant: 112),
            
            uiView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            uiView.topAnchor.constraint(equalTo: fullName.bottomAnchor, constant: 54),
            //uiView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            uiView.heightAnchor.constraint(equalToConstant: 489),
            uiView.widthAnchor.constraint(equalToConstant: 370),
            
            bunnerImageInView.topAnchor.constraint(equalTo: uiView.topAnchor, constant: 20),
            bunnerImageInView.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 20),
            //bunnerImageInView.trailingAnchor.constraint(equalTo: uiView.trailingAnchor, constant: -20),
            bunnerImageInView.heightAnchor.constraint(equalToConstant: 239),
            bunnerImageInView.widthAnchor.constraint(equalToConstant: 330),
            
            textNamePhoto.topAnchor.constraint(equalTo: bunnerImageInView.bottomAnchor, constant: -60),
            textNamePhoto.leadingAnchor.constraint(equalTo: bunnerImageInView.leadingAnchor, constant: 20),
            //textNamePhoto.trailingAnchor.constraint(equalTo: bunnerImageInView.trailingAnchor, constant: -156),
            textNamePhoto.heightAnchor.constraint(equalToConstant: 24),
            textNamePhoto.widthAnchor.constraint(equalToConstant: 154),
            
            textTitle.topAnchor.constraint(equalTo: bunnerImageInView.bottomAnchor, constant: 21),
            textTitle.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 36),
            textTitle.heightAnchor.constraint(equalToConstant: 24),
            textTitle.widthAnchor.constraint(equalToConstant: 108),
            
            discriptionText.topAnchor.constraint(equalTo: textTitle.bottomAnchor, constant: 12),
            discriptionText.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 20),
            discriptionText.heightAnchor.constraint(equalToConstant: 67),
            discriptionText.widthAnchor.constraint(equalToConstant: 330),
            
            nextButton.topAnchor.constraint(equalTo: discriptionText.bottomAnchor, constant: 26),
            nextButton.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 20),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.widthAnchor.constraint(equalToConstant: 330)
        ])
        
    }

}

