//
//  LaunchDetailController.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import Alamofire
import Combine

class LaunchDetailController: UIViewController {
    var launches = Launch()
    var cancellables: Set<AnyCancellable> = []
    
    
    private let Name : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let Image : UIImageView = {
        let Image = UIImageView(frame: .zero)
        Image.contentMode  = .scaleAspectFill
        Image.translatesAutoresizingMaskIntoConstraints = false
        Image.image = UIImage(named: "Logo")
        Image.clipsToBounds = true
       
        return Image
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
 
        configure()
       
    }
    override func viewDidLayoutSubviews() {
        configureUI()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
        
    private func configureUI(){
        view.addSubview(Image)
        view.addSubview(Name)
        view.backgroundColor = .white
        NSLayoutConstraint.activate([
            Image.topAnchor.constraint(equalTo: view.topAnchor),
            Image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            Image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            Image.heightAnchor.constraint(equalToConstant: 300),
            
            Name.heightAnchor.constraint(equalToConstant: 40),
            Name.topAnchor.constraint(equalTo: Image.bottomAnchor,constant: 5),
            Name.leadingAnchor.constraint(equalTo: Image.leadingAnchor,constant: 10),
            Name.trailingAnchor.constraint(equalTo: Image.trailingAnchor,constant: -10)
            ])
    }
    private func configure() {
        self.title = launches.missionName
        self.Name.text = "Flight Number :  " + String(launches.flightNumber!)

    }
}

