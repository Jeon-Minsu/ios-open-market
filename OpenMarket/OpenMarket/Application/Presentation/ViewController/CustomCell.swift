//
//  CustomCell.swift
//  OpenMarket
//
//  Created by 전민수 on 2022/07/17.
//

import UIKit

class CustomCell: UICollectionViewCell {
    private let rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 5
        stackView.alignment = .center
        
        
        return stackView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        stackView.alignment = .center
        
        return stackView
    }()
    
    let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "pencil")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
//        label.adjustsFontForContentSizeCategory = true
        label.text = "상품이름입니다"
        
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
//        label.adjustsFontForContentSizeCategory = true
        label.text = "제품가격입니다"
        label.textColor = .gray
        
        return label
    }()
    
    let stockLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption2)
//        label.adjustsFontForContentSizeCategory = true
        label.text = "재고수량입니다"
        label.textColor = .gray
        
        return label
    }()
    
    static let reuseIdentifier = "text-cell-reuse-identifier"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("not implemnted")
    }
    
}

extension CustomCell {
    func configure() {

        contentView.addSubview(rootStackView)
        rootStackView.addArrangedSubview(productImageView)
        rootStackView.addArrangedSubview(stackView)
        
        stackView.addArrangedSubview(productNameLabel)
        stackView.addArrangedSubview(priceLabel)
        stackView.addArrangedSubview(stockLabel)
        

        let inset = CGFloat(10)
    
        
        NSLayoutConstraint.activate([
            rootStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            rootStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
            rootStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            rootStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
        ])
        
//        contentView.addSubview(productImageView)
//        contentView.addSubview(productNameLabel)
//        contentView.addSubview(priceLabel)
//        contentView.addSubview(stockLabel)
//
//
//        let inset = CGFloat(10)
        
        
        
//        NSLayoutConstraint.activate([
//            productNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
//            productNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
//            productNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
//            productNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
//        ])
//
//        NSLayoutConstraint.activate([
//            priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
//            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
//            priceLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
//            priceLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
//        ])
//
//        NSLayoutConstraint.activate([
//            stockLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
//            stockLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
//            stockLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
//            stockLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
//        ])
    }
    
    func config(_ data: Model) {
        productImageView.image = data.thumbnailImage
        productNameLabel.text = data.name
        priceLabel.text = String(data.price)
        stockLabel.text = String(data.stock)
        
//        productNameLabel.textAlignment = .center
//        productNameLabel.font = UIFont.preferredFont(forTextStyle: .title1)
    }
}
