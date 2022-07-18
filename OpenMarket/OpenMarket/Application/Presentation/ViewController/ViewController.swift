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
    
//    let listView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .yellow
//        return view
//    }()
//
//    let gridView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .green
//        return view
//    }()
    
    var shouldHideListView: Bool? {
        didSet {
            guard let shouldHideListView = self.shouldHideListView else {
                return
            }
            
            self.listCollectionView?.isHidden = shouldHideListView
            self.gridCollectionView?.isHidden = !self.listCollectionView.isHidden
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        makeSegmentedControl()
        
        self.segmentedControl.addTarget(self, action: #selector(didChangeValue(segment:)), for: .valueChanged)

        self.segmentedControl.selectedSegmentIndex = 0
        self.didChangeValue(segment: self.segmentedControl)
        
        createGridCollectionView()
        configDataSource()
        gridCollectionView.isHidden = true
        
        createListCollectionView()
        configureListDataSource()
        
    }
    

    
    @objc private func didChangeValue(segment: UISegmentedControl) {
        self.shouldHideListView = segment.selectedSegmentIndex != 0
        
    }
    
    private func makeSegmentedControl() {
        self.navigationItem.titleView = self.segmentedControl
        
//        self.view.addSubview(self.listView)
//        self.view.addSubview(self.gridView)
//
//        NSLayoutConstraint.activate([
//            self.listView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            self.listView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
//            self.listView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            self.listView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//        ])
//
//        NSLayoutConstraint.activate([
//            self.gridView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            self.gridView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
//            self.gridView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            self.gridView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//        ])
    }
    
    // MARK: Grid Collection View
    enum Section {
        case main
    }

    var gridCollectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource<Section, Int>!

    func createGridLayout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(self.view.frame.height * 0.25))
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

//        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createGridLayout())
//        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        collectionView.backgroundColor = .systemBackground
//        view.addSubview(collectionView)
    }


    @available(iOS 14.0, *)
    func configDataSource() {
        // 5-1. `CellRegistration` 구현

        let cellRegistration = UICollectionView.CellRegistration<CustomCell, Int> { cell, indexPath, item in

            cell.productNameLabel.text = "\(item)"
            cell.contentView.backgroundColor = .systemBackground
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 1
            cell.productNameLabel.textAlignment = .center
            cell.productNameLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        }

        // 5-2. `UICollectionViewDiffableDataSource` 인스턴스 생성 및 cellProvider의 `dequeueConfiguredReusableCell` 구현
        dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: gridCollectionView, cellProvider: { (collectionView, indexPath, itemIdentifier) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
        })

        // 5-3. `NSDiffableDataSourceSnapShot` 생성
        var snapShot = NSDiffableDataSourceSnapshot<Section, Int>()
        snapShot.appendSections([.main])
        snapShot.appendItems(Array(0..<94))
        dataSource.apply(snapShot, animatingDifferences: false)
    }
    
    // MARK: List Collection View
    enum Section2 {
        case main
    }

    var listCollectionView: UICollectionView!
    var listDataSource: UICollectionViewDiffableDataSource<Section2, Int>!
    
    
    
    private func createListLayout() -> UICollectionViewLayout {
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        return UICollectionViewCompositionalLayout.list(using: config)
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
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Int> { (cell, indexPath, item) in
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "pencil")
            content.text = "\(item)"
            content.secondaryText = "가격 정보입니다"
            cell.contentConfiguration = content
            
            cell.accessories = [.label(text: "잔여 수량 정보입니다"), .disclosureIndicator()]
            
        }
        
        listDataSource = UICollectionViewDiffableDataSource<Section2, Int>(collectionView: listCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, identifier: Int) -> UICollectionViewCell? in
            
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: identifier)
        }

        // initial data
        var snapshot = NSDiffableDataSourceSnapshot<Section2, Int>()
        snapshot.appendSections([.main])
        snapshot.appendItems(Array(0..<94))
        listDataSource.apply(snapshot, animatingDifferences: false)
    }
}

