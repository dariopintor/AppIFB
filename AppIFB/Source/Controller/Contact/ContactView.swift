//
//  ContactView.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit
import Foundation
import UIKit

class ContactView: ViewDefault {
    //MARK: - Closures
    var onSaveContact:((_ name: String, _ phone: String) -> Void )?
    
    //MARK: - Properts
    lazy var nameLabel = LabelDefault(text: "Nome")
    lazy var phoneLabel = LabelDefault(text: "Celular")
    
    lazy var nameTextField = TextFieldDefault(placeholder: "Informe o nome do contato")
    lazy var phoneTextField = TextFieldDefault(placeholder: "Informe o celular de contato")
    
    lazy var saveButton: ButtonDefault = {
        let button = ButtonDefault(title: "Salvar")
        
        button.addTarget(self, action: #selector(saveContact), for: .touchUpInside)
        
        return button
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    
    
    //MARK: - Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setupVisualElements() {
        super.setupVisualElements()

        _ = ContactViewModel("Moacir", "(47) 9 9601-7776")
        _ = ContactViewModel("Pedro", "(55) 9 9999-7755")
        _ = ContactViewModel("João", "(33) 9 99988-7722")
        _ = ContactViewModel("José", "(22) 9 98899-7700")
        
        
        self.addSubview(nameLabel)
        self.addSubview(nameTextField)
        self.addSubview(phoneLabel)
        self.addSubview(phoneTextField)
        self.addSubview(saveButton)
        
        self.addSubview(tableView)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6),
            nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            nameTextField.heightAnchor.constraint(equalToConstant: 30),
            
            phoneLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            phoneLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            phoneLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            phoneTextField.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 6),
            phoneTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            phoneTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            phoneTextField.heightAnchor.constraint(equalToConstant: 30),
            
            saveButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            saveButton.heightAnchor.constraint(equalToConstant: 40),

            
            tableView.topAnchor.constraint(equalTo: saveButton.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -90)
        ])
        
        self.tableView.reloadData()
    }
    
    //MARK: - Actions
    @objc
    func saveContact() {
        if let name = nameTextField.text,
           let phone = phoneTextField.text {
            self.onSaveContact?(name, phone)
            self.tableView.reloadData()
        }
    }
}

extension ContactView: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ContactViewModel.listContact.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = ContactViewModel.listContact[indexPath.row].name
        cell.detailTextLabel?.text = ContactViewModel.listContact[indexPath.row].phone
        
        return cell
    }
    
    
}

extension ContactView: UITableViewDelegate {
    
}
