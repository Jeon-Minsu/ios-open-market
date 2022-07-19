//
//  CustomGridCell.swift
//  OpenMarket
//
//  Created by 전민수 on 2022/07/17.
//

import UIKit

class CustomGridCell: UICollectionViewCell {
    private let rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.alignment = .center
        
        
        return stackView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.alignment = .center
        
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
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("not implemnted")
    }
    
}

extension CustomGridCell {
    func configure() {

        contentView.addSubview(rootStackView)
        rootStackView.addArrangedSubview(imageView)
        rootStackView.addArrangedSubview(stackView)
        
        stackView.addArrangedSubview(productNameLabel)
        stackView.addArrangedSubview(originalPriceLabel)
        stackView.addArrangedSubview(bargainPriceLabel)
        stackView.addArrangedSubview(stockLabel)
        

        let inset = CGFloat(10)
    
        
        NSLayoutConstraint.activate([
            rootStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            rootStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
            rootStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            rootStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
        ])
        
    }
    
    func config(_ data: ProductEntity) {
        imageView.image = data.thumbnailImage
        productNameLabel.text = data.name
        originalPriceLabel.text = data.currency + " " + data.originalPrice.numberFormatter()
        originalPriceLabel.numberOfLines = 0
        bargainPriceLabel.text = data.currency + " " + data.discountedPrice.numberFormatter()
        bargainPriceLabel.numberOfLines = 0
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
//        productNameLabel.textAlignment = .center
//        productNameLabel.font = UIFont.preferredFont(forTextStyle: .title1)
    }
}

extension String {
    func strikeThrough(value: Int) -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: value, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}

extension Int {
    func numberFormatter() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(from: NSNumber(value: self))!
    }
}
