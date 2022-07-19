//
//  OpenMarket - ViewController.swift
//  Created by 케이, 수꿍. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@available(iOS 14.0, *)

class ViewController: UIViewController {
    // MARK: Segmented Control 부분
    let segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["LIST", "GRID"])
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    var shouldHideListView: Bool? {
        didSet {
            guard let shouldHideListView = self.shouldHideListView else {
                return
            }
            
            self.listCollectionView?.isHidden = shouldHideListView
            self.gridCollectionView?.isHidden = !self.listCollectionView.isHidden
        }
    }
    
    
    var products: [Product] = []
    var productsModel: [ProductEntity] = []
    
    func getData() {
        guard let url = URL(string: "https://market-training.yagom-academy.kr/api/products?page_no=1&items_per_page=10") else {
            return
        }
        
        let openMarket = NetworkProvider(session: URLSession.shared)
        openMarket.requestAndDecode(url: url, dataType: ProductList.self) { result in
            switch result {
            case .success(let productList):
                self.products = productList.pages
                productList.pages.forEach { product in
                    let item = ProductEntity(thumbnailImage: product.thumbnailImage!, name: product.name, currency: product.currency, originalPrice: product.price, discountedPrice: product.bargainPrice, stock: product.stock)
                    self.productsModel.append(item)
                }
                
                DispatchQueue.main.async {
                    self.createGridCollectionView()
                    self.configDataSource()
                    self.gridCollectionView.isHidden = true
                    
                    self.createListCollectionView()
                    self.configureListDataSource()
                }
                
            default:
                print("error")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        makeSegmentedControl()
        
        getData()
        
        self.segmentedControl.addTarget(self, action: #selector(didChangeValue(segment:)), for: .valueChanged)

        self.segmentedControl.selectedSegmentIndex = 0
    }
    

    
    @objc private func didChangeValue(segment: UISegmentedControl) {
        self.shouldHideListView = segment.selectedSegmentIndex != 0
        
    }
    
    private func makeSegmentedControl() {
        self.navigationItem.titleView = self.segmentedControl
    }
    
    // MARK: Grid Collection View
    enum Section {
        case main
    }

    var gridCollectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource<Section, ProductEntity>!

    func createGridLayout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(self.view.frame.height * 0.3))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        let spacing = CGFloat(10)
        group.interItemSpacing = .fixed(10)

        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = spacing
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)

        let layout = UICollectionViewCompositionalLayout(section: section)

        return layout
    }

    func createGridCollectionView() {
        gridCollectionView = UICollectionView(frame: .zero, collectionViewLayout: createGridLayout())
        
        view.addSubview(gridCollectionView)
        gridCollectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            gridCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            gridCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gridCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gridCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }


    @available(iOS 14.0, *)
    func configDataSource() {
        // 5-1. `CellRegistration` 구현

        let cellRegistration = UICollectionView.CellRegistration<CustomGridCell, ProductEntity> { cell, indexPath, item in

//            cell.productNameLabel.text = "\(item)"
//            cell.contentView.backgroundColor = .systemBackground
            cell.layer.borderColor = UIColor.systemGray.cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            
//            cell.productNameLabel.textAlignment = .center
//            cell.productNameLabel.font = UIFont.preferredFont(forTextStyle: .title1)
            

            cell.config(item)
            
            
        }

        // 5-2. `UICollectionViewDiffableDataSource` 인스턴스 생성 및 cellProvider의 `dequeueConfiguredReusableCell` 구현
        dataSource = UICollectionViewDiffableDataSource<Section, ProductEntity>(collectionView: gridCollectionView, cellProvider: { (collectionView, indexPath, itemIdentifier) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
        })

        // 5-3. `NSDiffableDataSourceSnapShot` 생성
        var snapShot = NSDiffableDataSourceSnapshot<Section, ProductEntity>()
        snapShot.appendSections([.main])
        snapShot.appendItems(productsModel)
        dataSource.apply(snapShot, animatingDifferences: true)
    }
    
    // MARK: List Collection View
    enum Section2 {
        case main
    }

    var listCollectionView: UICollectionView!
    var listDataSource: UICollectionViewDiffableDataSource<Section2, ProductEntity>!
    
    
    
//    private func createListLayout() -> UICollectionViewLayout {
//        let config = UICollectionLayoutListConfiguration(appearance: .plain)
//        return UICollectionViewCompositionalLayout.list(using: config)
//    }
    
    func createListLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    private func createListCollectionView() {
        listCollectionView = UICollectionView(frame: .zero, collectionViewLayout: createListLayout())
        view.addSubview(listCollectionView)
        listCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            listCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            listCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            listCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            listCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func configureListDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<CustomListCell, ProductEntity> { (cell, indexPath, item) in
//            var content = cell.defaultContentConfiguration()
//            content.image = UIImage(systemName: "pencil")
//            content.text = "\(item)"
//            content.secondaryText = "가격 정보입니다"
//            content.image = item.thumbnailImage
//            content.text = item.name
//            content.secondaryText = String(item.originalPrice)
//            content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
            
//            cell.contentConfiguration = content
            
//            cell.separatorLayoutGuide.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true


            
            cell.configList(item)
            
//            cell.accessories = [.label(text: "품절"), .disclosureIndicator()]
            cell.accessories = [.disclosureIndicator()]
            
        }
        
        listDataSource = UICollectionViewDiffableDataSource<Section2, ProductEntity>(collectionView: listCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, identifier: ProductEntity) -> UICollectionViewCell? in
            
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: identifier)
        }

        // initial data
        var snapshot = NSDiffableDataSourceSnapshot<Section2, ProductEntity>()
        snapshot.appendSections([.main])
        snapshot.appendItems(productsModel)
        listDataSource.apply(snapshot, animatingDifferences: true)
    }
}

struct ProductEntity: Hashable {
    let id = UUID()
    let thumbnailImage: UIImage
    let name: String
    let currency: String
    let originalPrice: Int
    let discountedPrice: Int
    let stock: Int
}
