//
//  GridCollectionViewCell.swift
//  OpenMarket
//
//  Created by Kay on 2022/07/20.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {
    private let rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "mini")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        return imageView
    }()
    
    private let labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    private let secondaryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 0
        return stackView
    }()
    
    private let originPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        return label
    }()
    
    private let bargainPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        return label
    }()
    
    private let stockLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        contentView.addSubview(rootStackView)
        rootStackView.addArrangedSubview(imageView)
        rootStackView.addArrangedSubview(labelStackView)
        rootStackView.addArrangedSubview(secondaryStackView)
        
        labelStackView.addArrangedSubview(titleLabel)
        labelStackView.addArrangedSubview(secondaryStackView)
        
        secondaryStackView.addArrangedSubview(originPriceLabel)
        secondaryStackView.addArrangedSubview(bargainPriceLabel)
        rootStackView.addArrangedSubview(stockLabel)
        
        NSLayoutConstraint.activate([
            rootStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            rootStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            rootStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            rootStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func configure(_ data: ProductEntity) {
        imageView.image = data.thumbnailImage
        titleLabel.text = data.name
        originPriceLabel.text = data.originalPrice.description
        bargainPriceLabel.text = data.discountedPrice.description
        stockLabel.text = data.stock.description == "0" ? "품절" : data.stock.description
        if data.originalPrice == data.discountedPrice {
            bargainPriceLabel.isHidden = true
            originPriceLabel.attributedText = originPriceLabel.text?.strikeThrough(value: 0)
            originPriceLabel.textColor = .systemGray
        } else {
            bargainPriceLabel.isHidden = false
            originPriceLabel.attributedText = originPriceLabel.text?.strikeThrough(value: NSUnderlineStyle.single.rawValue)
            originPriceLabel.textColor = .systemRed
        }
    }
}

extension String {
    func strikeThrough(value: Int) -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: value, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}
