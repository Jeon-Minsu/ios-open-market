//
//  CustomListCell.swift
//  OpenMarket
//
//  Created by 전민수 on 2022/07/19.
//

import UIKit

@available(iOS 14.0, *)
class CustomListCell: UICollectionViewListCell {
    private let rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        stackView.alignment = .fill
        
        
        return stackView
    }()
    
    private let labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private let secondaryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        
        return imageView
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title3)
//        label.adjustsFontForContentSizeCategory = true
        
        return label
    }()
    
    let originalPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.textColor = .systemGray
        
        return label
    }()
    
    private let bargainPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.textColor = .systemGray
        return label
    }()
    
    let stockLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.textColor = .systemGray
        label.textAlignment = .right
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureList()
    }
    required init?(coder: NSCoder) {
        fatalError("not implemnted")
    }
    
}

@available(iOS 14.0, *)
extension CustomListCell {
    func configureList() {

        contentView.addSubview(rootStackView)
        rootStackView.addArrangedSubview(imageView)
        rootStackView.addArrangedSubview(labelStackView)
        rootStackView.addArrangedSubview(stockLabel)
        
        labelStackView.addArrangedSubview(productNameLabel)
        labelStackView.addArrangedSubview(secondaryStackView)
        
        secondaryStackView.addArrangedSubview(originalPriceLabel)
        secondaryStackView.addArrangedSubview(bargainPriceLabel)
//        secondaryStackView.subviews[0].setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        

        let inset = CGFloat(10)
    
        
        NSLayoutConstraint.activate([
            rootStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            rootStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
            rootStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            rootStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
        ])
        
    }
    
    func configList(_ data: ProductEntity) {
        imageView.image = data.thumbnailImage
        productNameLabel.text = data.name
        originalPriceLabel.text = data.currency + " " + data.originalPrice.numberFormatter()
        bargainPriceLabel.text = data.currency + " " + data.discountedPrice.numberFormatter()
        stockLabel.text = "잔여수량 : " + String(data.stock)
        
        if data.originalPrice == data.discountedPrice {
            bargainPriceLabel.isHidden = true
            originalPriceLabel.attributedText = originalPriceLabel.text?.strikeThrough(value: 0)
            originalPriceLabel.textColor = .systemGray
        } else {
            bargainPriceLabel.isHidden = false
            originalPriceLabel.attributedText = originalPriceLabel.text?.strikeThrough(value: NSUnderlineStyle.single.rawValue)
            originalPriceLabel.textColor = .systemRed
        }
        
        if data.stock == 0 {
            stockLabel.text = "품절"
            stockLabel.textColor = .systemYellow
        }
    }
}
