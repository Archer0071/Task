//
//  ViewController.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import UIKit
import Alamofire
import Combine



class LaunchController: UIViewController {
    let viewModel = LaunchViewModel()
    private var subscription: Set<AnyCancellable> = []
    
    
    private let searchController : UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.showsBookmarkButton = true
        searchController.searchBar.setImage(UIImage(systemName: "slider.horizontal.3"), for: .bookmark, state: .normal)
        return searchController
    }()
    
    private let collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/3)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout:layout)
        collectionView.register(LaunchCollectionCell.self, forCellWithReuseIdentifier: LaunchCollectionCell.reuseIdentifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .black
        return collectionView
        
    }()
    
    
    
    override func viewDidLayoutSubviews() {
        collectionView.frame = view.bounds
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LAUCNHES"
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        observeViewModel()
        
        
    }
    
    
    
    private func observeViewModel() {
        viewModel.$launches
            .receive(on:DispatchQueue.main)
            .sink {[weak self] launch in
                self?.collectionView.reloadData()
            }
            .store(in: &subscription)
    }
    
    
    
    
    
}



extension LaunchController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return viewModel.launches.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchCollectionCell.reuseIdentifier, for: indexPath) as! LaunchCollectionCell
        
        cell.configureCell(launches: viewModel.launches[indexPath.row])
        
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("CELL Selected")
        
    }
    
}
extension LaunchController : UISearchBarDelegate {
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Search Canceled")
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        
    }
    
}

