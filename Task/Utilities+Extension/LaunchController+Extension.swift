//
//  LaunchController+Extension.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import UIKit

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
        let DetailViewController = LaunchDetailController()
        DetailViewController.launches = viewModel.launches[indexPath.row]
        navigationController?.pushViewController(DetailViewController, animated: true)
        
    }
    
}
extension LaunchController : UISearchBarDelegate {
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        showFilters()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.viewModel.searchTextAndQuery = SearchAndQuery(query: viewModel.query, searchText: "")
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.viewModel.searchTextAndQuery = SearchAndQuery(query: viewModel.query, searchText: searchText)
        
    }
    
}
