# 오픈마켓

## 프로젝트 소개
오픈마켓을 창설하여 상품을 관리해본다.

> 프로젝트 기간: 2022-07-11 ~ 2022-08-05</br>
> 팀원: [수꿍](https://github.com/Jeon-Minsu), [데릭](https://github.com/derrickkim0109) </br>
리뷰어: [제이슨](https://github.com/ehgud0670)</br>


## 📑 목차

- [🧑🏻‍💻🧑🏻‍💻 개발자 소개](#-개발자-소개)
- [⏱ TimeLine](#-TimeLine)
- [💡 키워드](#-키워드)
- [🤔 핵심경험](#-핵심경험)
- [📱 실행 화면](#-실행-화면)
- [🗂 폴더 구조](#-폴더-구조)
- [📝 기능설명](#-기능설명)
- [🚀 TroubleShooting](#-TroubleShooting)
- [📚 참고문서](#-참고문서)


## 🧑🏻‍💻🧑🏻‍💻 개발자 소개

|수꿍|데릭|
|:---:|:---:|
|<image src = "https://i.imgur.com/6HkYdmp.png" width="250" height="250">|<image src = "https://avatars.githubusercontent.com/u/59466342?v=4" width="250" height="250">
|[수꿍](https://github.com/Jeon-Minsu)|[데릭](https://github.com/derrickkim0109)|

## ⏱ TimeLine

### Week 1
> 2022.7.11 ~ 2022.7.15
    
- 2022.07.11 - STEP1 
    - 서버 매핑 모델 구현
    - 네트워크와 무관한 Unit Test을 위한 MockTests 추가
- 2022.07.12 - STEP1 
    - URLSession 기능 구현
- 2022.07.13 - STEP1 PR
    - URLSession 리팩토링
    - STEP1 PR 제출
- 2022.07.14 - STEP1 피드백 반영
    - 코드 리팩토링(네이밍, 폴더 구조 변경)
- 2022.07.15 - STEP1 피드백 반영
    - 문서 수정


### Week 2
    
> 2022.7.18 ~ 2022.7.22
    
- 2022.07.18 - STEP2 
    - 초기 화면에 필요한 CollectionView 기능 탐색
- 2022.07.19 - STEP2 
    - 서버 매핑 모델 활용을 위한 Entity 생성
    - segmented control 구현
    - CollectionView 구현
- 2022.07.20 - STEP2 PR
    - CollectionView 리팩토링
    - STEP2 PR 제출
- 2022.07.21 - STEP1 피드백 반영
    - STEP2 기능 향상을 위한 기능 테스트(URLCache, NSCache)
- 2022.07.22 - STEP1 피드백 반영
    - 문서 수정

### Week 3
    
> 2022.7.25 ~ 2022.7.29
    
- 2022.07.25 
    - MDN을 기반으로 HTTP POST 공부
- 2022.07.26 
    - HTTP Post 기능구현
    - Delete secret(POST) 기능구현
    - Builder 패턴 URLComponents 타입 구현
    - HTTPMethod enum
    - APIConfiguration(url, mimetype, path, parameters) 타입 구현

- 2022.07.27
    - ProductModificationAPIManager를 통행 patch 기능 구현
    - ProductSecretRetrievalAPIManager를 바탕으로 secret 조회 기능 추가
    - ProductDeleteAPIManager를 통한 delete 기능 구현
    
- 2022.07.28
    - TextField, ImagePicker 기능 구현
    - ProductEnrollmentViewController로의 화면 전환 방식 Navigation에서 Modal로 변경
    - Autolayout
    
- 2022.07.29
    - Keyboard 줄바꿈 시 TextView 라인 자동 생성 및 View 높이에 맞게 Keyboard 설정
    - UIScrollView 내에서의 UITextField Autolayout 설정

### Week 4
    
> 2022.8.01 ~ 2022.8.05
    
- 2022.08.01
    - STEP4 기능 실험
        - ScrollView를 통한 상품 상세 페이지 스크롤 기능 연습

- 2022.08.02 
    - View 삭제를 통한 ViewController로 기능 복원 
    - ViewWillAppear 내 데이터 가져와 데이터 등록 시 다시 표시
    - APIProtocol 기능분리 및 각각의 기능만을 구현
    - 상품 상세 페이지 UI 구현
    - delegate를 통한 product Image 전달
    - 셀 재사용시 초기화 처리
    - 상품 상세 페이지 UI 데이터 연결
    - 상품 수정 및 삭제 관련 action sheet 구현

- 2022.08.03
    - 상품 수정 네비게이션 유효성 검사 및 수정/삭제 기능 구현
    - PATCH 결과에 따른 UI 업데이트
    - Alert 내 textView 추가
    - 상품 삭제 기능 구현
    
- 2022.08.04
    - 전체 코드 리팩토링
        - Alert, 화면전환 시 중복적으로 사용된 DispatchQueue 수정
        - 매직 리터럴 삭제를 위한 타입 생성
        - 불필요한 개행 및 코드 들여쓰기 제거
    - STEP4 PR
    
- 2022.08.05
    - loading indicator 구현
    - 컬렉션뷰 새로고침 indicator 구현
        - 스크롤이 끝났을때마다 data 추가 fetch
    - ImagePicker View 삭제 기능 구현
    - NSCache를 통한 이미지 캐시 기능 구현
    - 화면 전환을 통한 UI 업데이트가 메인 쓰레드에서 작동하도록 비동기 처리
    
## 💡 키워드

- `POP`, `protocol`, `extension`
- `URL`, `URLSession`, `URLDataTask`
- `dataTask`, `completion` 
- `Data`
- `URLResponse`, `HTTPURLResponse`, `statusCode`
- `Error`
- `resume`
- `Result Type`, `escaping closure`
- `JSONDecoder`
- `Generics`
- `Codable`, `CodingKeys`
- `Server Mapping Model`, `Entity`, `ViewModel`, `Hashable`
- `String`, `NSAttributedString`, `strikethroughStyle`
- `Int`, `NumberFormatter`
- `UISegmentedControl`, `addTarget`, `selectedSegmentIndex`
- `UICollectionView`, `UICollectionViewDiffableDataSource`
- `UICollectionViewCompositionalLayout`, `NSCollectionLayoutSize`, `NSCollectionLayoutItem`, `NSCollectionLayoutGroup`, `NSCollectionLayoutSection`
- `CellRegistration`, `dequeueConfiguredReusableCell`
- `layer`, `borderColor`, `borderWidth`, `cornerRadius`
- `NSDiffableDataSourceSnapshot`, `appendSections`, `appendItems`, `apply`
- `AutoLayout`, `prepareForReuse`
- `UICollectionViewDelegate`
- `HTTP`, `Header`, `Body`
- `HTTPMethod`, `GET`, `POST`, `PATCH`, `DELETE`
- `UIImagePickerController`, `editedImage`, `originalImage`
- `UITextField`, `placeholder`, `keyboardType`
- `Keyboard`, `keyboardFrameEndUserInfoKey`
- `UIScrollView`, `contentInset`, `scrollIndicatorInsets`
- `UITextView`, `UITextViewDelegate`
- `URLComponents`
- `MIMEType`, `applicaetionJSON`, `multipart/form-data`
- `Content-Type`, `Content-Disposition`, `boundary`, `name`, `filename`, `carriage return`, `line feed`
- `Delegate Design Pattern`, `Notification Center`
- `CALayer`
- `Alert TextView`, `Alert ActionSheet`, `Alert`
- `UINavigation init()`, `present`
- `UIStackView Inset`, `UIEdgeInsets`
- `DispatchQueue`
- `UICollectionView Horizontal ScrollView` 

    
## 🤔 핵심경험

- [x] 파싱한 JSON 데이터와 매핑할 모델 설계
- [x] URL Session을 활용한 서버와의 통신
- [x] CodingKeys 프로토콜의 활용
- [x] 네트워크 상황과 무관한 네트워킹 데이터 타입의 단위 테스트(Unit Test)
- [x] Safe Area을 고려한 오토 레이아웃 구현
- [x] Collection View의 활용
- [x] Mordern Collection View 활용
- [x] multipart/form-data의 구조 파악
- [x] URLSession을 활용한 multipart/form-data 요청 전송
- [x] 사용자 친화적인 UI/UX 구현 (적절한 입력 컴포넌트 사용, 알맞은 키보드 타입 지정)
- [x] 상속 혹은 프로토콜 기본구현을 통해 (수정/등록 과정의) 공통기능 구현
- [x] UIAlertController 액션의 completion handler 활용
- [x] UIAlertController의 textFields 활용
- [x] UICollectionView 를 통한 좌우 스크롤 기능 구현


## 📱 실행 화면

|상품 등록 화면|글자수 부족 유효성 검사|상품명 미작성 유효성 검사|글자수 초과 유효성 검사|
|:--:|:--:|:--:|:--:|
|![상품 등록 화면](https://i.imgur.com/qO0Yk43.gif)|![상품명 글자 유효성 검사](https://i.imgur.com/RLLoKJY.gif)|![상품명 미작성 유효성 검사](https://i.imgur.com/Bi8BfHR.gif)|![글자수 초과 유효성 검사](https://i.imgur.com/qQyghFE.gif)|


|글자수 초과 유효성 검사(2)|이미지 초과 유효성 검사|상품 등록 요건 부족|상품 등록 요건 충족|
|:--:|:--:|:--:|:--:|
|![글자수 초과 유효성 검사(2)](https://i.imgur.com/b9SStmM.gif)|![이미지 초과 유효성 검사](https://i.imgur.com/p3W1Iww.gif)|![상품 등록 요건 부족](https://i.imgur.com/QVwSAqK.gif)|![상품 등록 요건 충족](https://i.imgur.com/d6Yd1dx.gif)|

|상품 상세 정보 화면|상품 이미지 횡스크롤|텍스트뷰 입력 시 Inset 적용|상품 수정 취소|
|:--:|:--:|:--:|:--:|
|![상품 상세 정보 화면](https://i.imgur.com/cBBOlfJ.gif)|![상품 이미지 횡스크롤](https://i.imgur.com/5tynnRn.gif)|![텍스트뷰 입력 시 Inset 적용](https://i.imgur.com/Cejop0P.gif)|![상품 수정 취소](https://i.imgur.com/v6oOIEZ.gif)|    

|상품 수정 성공|상품 삭제 성공|상품 삭제 실패|상품 삭제 취소|
|:--:|:--:|:--:|:--:|
|![상품 수정 성공](https://i.imgur.com/O58Z2Ac.gif)|![상품 삭제 성공](https://i.imgur.com/1xFoaPD.gif)|![상품 삭제 실패](https://i.imgur.com/auICRbV.gif)|![상품 삭제 취소](https://i.imgur.com/RUh1qsE.gif)| 


    
## 🗂 폴더 구조

```
.
└── OpenMaket
    ├── Application
    │   ├── AppDelegate
    │   ├── SceneDelegate
    │   ├── Presentation
    │   │   ├── ViewModel
    │   │   │   ├── Delegate
    │   │   │   │   ├── ProductDetailsDelegate
    │   │   │   │   ├── ProductListDelegate
    │   │   │   │   └── ProductModificationDelegate
    │   │   │   ├── ProductListViewModel
    │   │   │   └── ProductDetailsViewModel
    │   │   ├── View
    │   │   │   ├── Section
    │   │   │   ├── ProductList
    │   │   │   │   ├── ListCollectionCell
    │   │   │   │   └── GridCollectionCell
    │   │   │   └── ProductDetails
    │   │   │       └── ProductDetailsCollectionViewCell
    │   │   └── ViewController
    │   │       ├── ProductList
    │   │       │   └── ProductListViewController
    │   │       ├── ProductEnrollment
    │   │       │   └── ProductEnrollmentViewController
    │   │       ├── ProductDetails
    │   │       │   └── ProductDetailsViewController
    │   │       └── ProductModification
    │   │           └── ProductModificationViewController
    │   └── Domain
    │       └── Model
    │           ├── AlertSetting
    │           ├── ProductStatus
    │           ├── CurrentPage
    │           ├── AlertMessage
    │           ├── SegmentedControlItem
    │           ├── Manager
    │           │   ├── GET
    │           │   │   ├── ProductListAPIManager
    │           │   │   └── ProductDetailsAPIManager
    │           │   ├── POST
    │           │   │   ├── ProductEnrollmentAPIManager
    │           │   │   └── ProductSecretRetrievalAPIManager
    │           │   ├── PATCH
    │           │   │   └── ProductModificationAPIManager
    │           │   └── DELETE
    │           │       └── ProductDeleteAPIManager       
    │           └── Entities
    │               ├── ProductList
    │               │   ├── ProductList
    │               │   └── ProductListEntity
    │               ├── ProductDetails
    │               │   ├── ProductDetails
    │               │   └── ProductDetailsEntity
    │               ├── EnrollProductEntity
    │               └── ModifiedProductEntity
    ├── Networking
    │   ├── API
    │   │   ├── APIConfiguration
    │   │   ├── APIProtocol
    │   │   │   ├── APIProtocol
    │   │   │   ├── GETProtocol
    │   │   │   ├── POSTProtocol
    │   │   │   ├── PATCHProtocol
    │   │   │   └── DELETEProtocol
    │   │   ├── APIClient
    │   │   └── APIError
    │   └── ProductURLUtilities
    │       ├── HTTP
    │       │   ├── HTTPMethod
    │       │   ├── RequestName
    │       │   └── MIMEType
    │       ├── User
    │       ├── URLComponentsBuilder
    │       └── ProductURLQueryItem
    ├── Extensions
    │   ├── String+Extensions
    │   ├── Double+Extensions
    │   └── UIViewController+Extensions
    └── Resource
        ├── Info
        ├── Assets
        └── LaunchScreen
```

    
## 📝 기능설명
    
**서버 통신 기능 구현**
- APIProtocol
    - 각각의 HTTPMethod에 따른 서버와 통신하는 메서드 구현
- APIConfiguration
    - HTTPMethod에 따른 URL을 생성하는 Configuration 타입 구현
- URLComponetsBuilder
    - Builder Pattern을 활용하여 dynamic하게 URL 생성

**상품등록 UI 구현**

- UIImagePickerController
- ScrollView
- StackView
- TextField
- TextView

    
**네트워크 통신을 담당할 타입을 설계하고 구현**
- ProductList, Product
    - 서버 API 데이터 형식을 고려하여 모델 타입 구현
- NetworkProvider
    - 서버로부터 데이터를 받아오는 기능을 수행
    - 기능을 수행한 위한 protocol, extension 별도 생성
- NetworkError
    - 서버로부터 데이터를 받아오는 도중 발생하는 에러 표현
CollectionView Cell을 각 Layout 별로 분리하여 구현
- GridCollectionCell, ListCollectionCell
    - CollectionView의 Cell 타입 구현 
- ProductEntity
    - 서버 매핑 타입 중 Cell에 필요한 타입들 별도 구현
Utilities
- String+Extensions
    - String 자료형을 확장시켜 필요 메서드 관리
        * strikeThrough - 해당 문자열의 처음부터 입력 받은 수의 인덱스까지 strikethroughStyle 적용.
- Int+Extensions
    - Int 자료형을 확장시켜 필요 메서드 관리
        * numberFormatter - 10진수로 변환하고 String 타입으로 변환 후 반환

**상품수정 UI 구현**

- Alert TextView
- UICollectionView Horizontal

**상품 수정/삭제 Navigation Item**
- User의 vendorID와 상품 등록자의 vendorID가 같은지 유효성 체크를 한 후 같으면 Edition Navigation Item을 노출 시킵니다.
    
**화면 전환시 데이터 전달**
- Delegate Design Pattern을 활용
    - POST,PATCH, DELETE 호출 후 화면 전환 시 서버 데이터 리셋을 위해 사용
    
**상품상세 화면의 상품 이미지**
- UICollectionView를 활용하여 화면에 꽉차는 비율의 이미지를 좌우 스크롤할 수 있음

**상품삭제시 User Secret입력**
- Alert TextField를 활용하여 User Secret입력 받을 수 있도록 설정
- User Secret 유효성 체크 후 Secret Post를 활용하여 Product Secret Response 
- Product Secret을 받은 후 DELETE로 상품 삭제 
        
## 🚀 TroubleShooting

### STEP 1

#### T1. 주고 받는 모델 타입의 불일치로 인한 통신 실패 해결.
- URLSession와 GET Method를 테스트를 했을때 값을 제대로 받아오지 못하는 문제를 만났습니다. 예를들어 서버에서는 Product 모델 타입의 정보를 주는데 클라이언트에서 받는 모델 타입이 WebPage이면 제대로된 통신이 이뤄질 수 없다는것을 확인하였습니다. 이후 서버에서 주는 형식이 클라이언트에서 받는 형식과 동일 해야 정상적으로 받아올 수 있는것을 확인하였습니다. 

    
#### T2. 하나의 파라미터에 서로 다른 두개의 타입 사용 고민 해결.
- fetchData메서드와 dataTask(with:) 메서드의 매개변수로 URL 타입과 URLRequest 타입을 모두 사용하기 위해 메서드 오버로딩을 생각했었습니다. protocol 선언후 두 타입이 채택하는 방법이 많은 양의 코드를 반복하는 오버로딩 방식보다 가독성과 효율적인 측면에서 낫다고 판단해 들어갈수있는 모든 타입이 특정 프로토콜을 채택하는 방식으로 문제를 해결했습니다.

### STEP 2

#### T1. AutoLayout
    
- 하나의 Cell을 통하여 List에서 Grid로의 AutoLayout을 설정하기 위해 이전에 설정된 List Layout의 Constraints을 제거한 후, Grid의 Constraints를 설정하려 하였으나, 이미 Cell이 생성된 이후에 Constraint를 제거하기 위한 시도를 하기 때문에 오토레이아웃이 정상적으로 설정되지 않는 문제가 발생되었습니다. 이에 notification 등을 통해 알림을 바탕으로 해결할 수 있을까도 고민해보았으나, 해당 방법은 오히려 과하다고 판단하여, 위의 문제를 해결하기 위하여 list, grid 레이아웃을 위한 각각의 셀을 만든 다음, 서로 다른 오토레이아웃을 적용해 문제를 해결하였습니다.

#### T2. Server Mapping Model - Entity - ViewModel
    
- 서버로부터 데이터를 요청하여, 이에 대한 응답을 받은 다음, 이를 JSON 데이터 형식으로 변환하여, 해당 데이터를 저장하고, 관리되어야 하는 데이터의 집합을 만들 필요성을 느꼈습니다. 이에, 서버로부터 데이터를 요청하는 부분은 NetworkProvider 인스턴스를 생성하여 URL을 입력받아 requestAndDecode 메서드를 실행하였습니다. 다음으로, 응답을 받은 다음, 이를 JSON 데이터 형식으로 변환하는 부분은 서버로부터의 응답을 바탕으로 성공, 실패 케이스를 분기하여, 서버로부터 성공적으로 응답을 받을시, STEP1에서 구현한 서버 매핑 모델인 ProductList 구조체에 담은 다음, 실제 필요한 데이터를 추출하여 저장 및 관리하기 위해 ProductEntity 구조체를 생성하여 이를 처리하였습니다. 위의 방법들을 통하여 '서버 매핑 모델 - Entity - ViewModel'의 구조를 구현하고자 하였습니다.

    
### STEP 3

#### T1. URLRequest 통합 관리 방법
    
- URLRequest 방법에는 HTTPMethod부터 GET, POST, PATCH, PUT, DELETE 등 다양하게 존재합니다. 또한, 이에 따라 URL 구성에도 차이를 보인고, 심지어는 POST 경우에는 body를 통하여 서버에 전달하고자 하는 데이터를 입력하여야 합니다. 이를 각각 하나하나 설정하기 보다는, 전체적으로 이를 관리할 수 있는 객체를 만들 필요성을 느꼈습니다. 
    
- 아래의 APIConfiguration 하나의 객체를 통하여, 사용자는 각각의 HTTPMethod에 따라 원하는 방법을 선택하면, 그에 맞는 url과 parameters를 넣을 수 있게 만들었습니다.


- 코드
    
    ```swift
    typealias Parameters = [String: String]
    
    struct APIConfiguration {
        let method: HTTPMethod
        let url: URL
        let parameters: Parameters?
        
        init(method: HTTPMethod,
             url: URL,
             parameters: Parameters? = nil) {
            
            self.method = method
            self.url = url
            self.parameters = parameters
        }
    }
    ```

- 물론, APIConfiguration 만으로 url과 parameters가 자동으로 들어갈 수는 없습니다. 추가적인 작업이 필요합니다. 먼저, URL을 동적으로 생성할 수 있도록 빌더 패턴을 활용하여 URLComponetBuilder를 생성하였습니다. 각각의 HTTPMethod에 따라 필요로하는 URLComponent가 상이하므로, scheme, host(domain), path, queryItem으로 각각 분리하여 필요로하는 부분만을 추출하여 URLComponets를 구성하고, 마지막에 build를 URLComponents 타입을 반환한 이후, 해당 타입의 프로퍼티인 url을 사용하면 동적인 url을 생성할 수 있습니다.


- 코드
    
    ```swift
    import Foundation
    
    final class URLComponentsBuilder {
        private var urlComponents = URLComponents()
        
        init() { }
        
        func build() -> URLComponents {
            return urlComponents
        }
        
        func setScheme(_ scheme: String) -> URLComponentsBuilder {
            urlComponents.scheme = scheme
            
            return self
        }
        
        func setHost(_ host: String) -> URLComponentsBuilder {
            urlComponents.host = host
            
            return self
        }
        
        func setPath(_ path: String) -> URLComponentsBuilder {
            urlComponents.path = path
            
            return self
        }
        
        func addQuery(items: [String: String]) -> URLComponentsBuilder {
            urlComponents.addQuery(items)
            
            return self
        }
    }
    
    extension URLComponents {
        fileprivate mutating func addQuery(_ items: [String: String]) {
            var newQueryItems = [URLQueryItem]()
            
            for (key, value) in items.sorted(by: { $0.key < $1.key }) {
                newQueryItems.append(URLQueryItem(name: key,
                                                  value: value))
            }
            
            if self.queryItems == nil {
                self.queryItems = newQueryItems
            } else {
                self.queryItems?.append(contentsOf: newQueryItems)
            }
        }
    }
    ```

- 다음으로, HTTPMethod에 따라 생성된 URL을 바탕으로 원하는 파라미터를 활용한 메서드를 구현하였습니다. 이를 위하여 APIProtocol을 생성하여 APIConfiguration 인스턴스를 프로퍼티로 받게 하였고, 서버로부터 데이터를 post하는 enrollData란 메서드를 구현하였습니다.

- 코드
    
    ```swift
    protocol APIProtocol {
        var configuration: APIConfiguration { get }
    }
    
    extension APIProtocol {
        func enrollData(using client: APIClient = APIClient.shared,
                    postEntity: EnrollProductEntity,
                    completion: @escaping (Result<Data,APIError>) -> Void) {
    
        var request = URLRequest(url: configuration.url)
    
        let dataBody = createDataBody(withParameters: postEntity.parameter,
                                      media: postEntity.images,
                                      boundary: MIMEType.generateBoundary())
    
        request.httpMethod = configuration.method.rawValue
        request.httpBody = dataBody
        request.setValue(MIMEType.multipartFormData.value,
                         forHTTPHeaderField: MIMEType.contentType.value)
        request.addValue(User.identifier.rawValue,
                         forHTTPHeaderField: RequestName.identifier.key)
            ...
    }
    ```

- 마지막으로 위 메서드를 호출할 수 있도록 APIProtocol을 채택한 ProductEnrollmentAPIManager란 구조체를 생성하여 데이터를 보내고자 하는 서버의 URL 주소와 HTTPMethod를 선택할 수 있었습니다. 이를 응용하여 각각의 Request 방법에 따른 APIManager를 만들어보았습니다. 위의 방법을 이용한다면, 사용자의 의도에 맞는 Request 방법을 사용할 수 있습니다.

- 코드
    
    ```swift
    struct ProductEnrollmentAPIManager: APIProtocol {
        var configuration: APIConfiguration
        var urlComponent: URLComponents
        
        init?() {
            urlComponent = URLComponentsBuilder()
                .setScheme("https")
                .setHost("market-training.yagom-academy.kr")
                .setPath("/api/products")
                .build()
            
            guard let url = urlComponent.url else {
                return nil
            }
            
            configuration = APIConfiguration(method: .post, url: url)
        }
    }
    ```
    
#### T2-1. ScrollView 안의 TextView 설정

- 최상위에 존재하는 ScrollView의 스크롤 기능만 on하기 위해 ScrollView 내에 TextView를 넣으면 TextView의 스크롤 기능을 false로 처리합니다. 
    
```swift 
    textView.isScrollEnabled = false
```

- TextView의 길이 자동설정
```swift 
   
extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text)
        let size = CGSize(width: view.frame.width, height: .infinity)
        let estimatedSize = textView.sizeThatFits(size)
        textView.constraints.forEach { (constraint) in
            if constraint.firstAttribute == .height {
                constraint.constant = estimatedSize.height
            }
        }
    }
}
 
```
- ScrollView와 별개로 TextView의 동적 사이즈 설정이 필요할 것으로 예상하여 위의 코드를 작성하였으나 따로 설정할 필요가 없었습니다.

    
#### T2-2. 텍스트 입력 시 Keyboard 위로 View 올림 설정
-  NotificationCenter를 통해서 Keyboard가 나타나고 사라짐을 알리기 위해 사용하였습니다.

- NotificationCenter 선언
```swift 
func registerNotificationForKeyboard() {
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillShow),
        name: UIResponder.keyboardWillShowNotification,
        object: nil)
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillHide),
        name: UIResponder.keyboardWillHideNotification,
        object: nil)
}
```

- Keyboard Show/Hide에 맞춰 RootView인 ScollView의 content와 scrollIndicator의 길이를 맞춥니다. 
```swift 
@objc private func keyboardWillShow(_ notification: Notification) {
    guard let userInfo = notification.userInfo,
          let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
        return
    }

    let contentInset = UIEdgeInsets(
        top: 0.0,
        left: 0.0,
        bottom: keyboardFrame.size.height,
        right: 0.0)

    rootScrollView.contentInset = contentInset
    rootScrollView.scrollIndicatorInsets = contentInset
}

@objc private func keyboardWillHide() {
    let contentInset = UIEdgeInsets.zero
    rootScrollView.contentInset = contentInset
    rootScrollView.scrollIndicatorInsets = contentInset
}
```
- 이렇게 설정하고 나온 문제는 텍스트뷰 내 텍스트의 행의 수가 많지 않다면, 키보드가 화면에 등장함에 있어서 서로의 영역을 침범하지는 않지만, 만약 텍스트의 줄바꿈 횟수가 일정범위를 넘어간다면, 화면의 밖으로 텍스트 뷰의 길이가 길어져 텍스트를 확인할 수 없게 됩니다. 이러한 문제는 텍스트 뷰의 bottom anchor가 최상위 뷰의 bottom anchor가 constraint 관계를 설정해주지 않아 발생한 문제였습니다. 이를 해결하기 위하여, 아래의 코드와 같이 제약을 설정해줌으로써 텍스트 뷰의 길이가 길어져도 화면 내에 표시할 수 있게 되었습니다.

```swift 
productDescriptionTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
```

### STEP 4
    
#### T1. 상품 상세 페이지 스크롤 문제
    
- 상품 상세 페이지 UI 구현 중, Scroll View 안에 rootStackView를 통해 각각의 UI 요소를 추가해보았는데, textView에 작성된 text에 끝없이 스크롤이 되는 문제가 발생하였습니다. 이를 해결하기 위하여 코드를 꼼꼼하게 다시 살펴본 결과, stackView 안에 있던 textView에 bottomanchor를 설정한 사실을 발견하였습니다. 따라서, textView의 bottomanchor에 잡혀있던 제약을 해제하면, rootStackView의 제약을 온전히 따를 수 있기 때문에, 스크롤 기능이 적절하게 동작하였습니다.

    
#### T2. 상품 수정후 데이터 업데이트

- 상품 상세 페이지에서 상품 수정 페이지로 이동할 때 현재 상품 상세 페이지에 있는 `productInfo` 데이터를 `rootViewController`에 해당하는 `ProductModificationViewController`의 프로퍼티로 데이터를 전달하고자 하였습니다. 하지만, 저희의 화면 전환 방식은 일반적인 방식이 아닌, `NavigationController`를 모달 방식으로 화면을 전환하고자 하였습니다. NavigationController를 사용한 이유는 `Navigation Bar`를 사용하기 위해서였습니다. 하지만 프로퍼티로의 데이터 전달을 `rootViewController`로 설정하게 되면, `productModificationViewController`로 데이터 전달이 이루어지지 않게 됩니다. 이를 해결하기 위하여, `productModificationViewController`를 `Navigation Controller` 클래스를 상속시켜보기도 하였고, `delegate`를 이용하여 데이터를 전달해보고자 하였으나, 결국 `productModificationViewController`로의 접근을 수행하지 못하여 모두 실패로 돌아갔습니다. 이를 해결하기 위한 방법을 궁구한 결과, `productModificationController`를 먼저 생성하여, 해당 뷰 컨트롤러의 프로퍼티로 데이터 전달을 수행한 후, `NavigationController`의 `rootViewController`로 설정하여 화면 전환을 하면`Navigation Bar`의 기능과 원하는 데이터를 모두 얻을 수 있었습니다.
    
```swift
  let productModificationViewController = ProductModificationViewController()
    productModificationViewController.productInfo = self?.productInfo
    productModificationViewController.delegate = self
    
  let rootViewController = UINavigationController(rootViewController: viewController)
    rootViewController.modalPresentationStyle = .fullScreen

    self.present(rootViewController, animated: true)
```
    
#### T3. 비동기 상황에서 Alert 호출 문제
- `URLSession.dataTask(_:)`의 `@escaping Closure` 부분은 비동기로 처리됩니다. 해당 클로저 내부에는 Result 타입을 통해 성공 케이스와 실패 케이스가 분류되는데, 저희는 해당 결과에 대하여 Alert을 통해 결과를 사용자에게 표출하였습니다. 그런데, Alert은 결국 UI를 구현하는 부분이기 때문에, main thread에서 호출되어야 합니다. 이때문에 저희는 alert을 present, dismiss 등 화면에 영향을 주는 부분에서 DispatchQueue.main.async를 통해 main thread에서 비동기적으로 처리해주었습니다. 여기에 의문점은 아래의 presentConfirmAlert 메서드에 관하여, 함수 내부 구현부 모두를 DispatchQueue에 모두 넣어야 하는지, 아니면 dismiss, pop, present와 같은 화면에 영향을 주는 영역만 DispatchQueue에 넣어야 하는지 고민하였습니다. 저희는 결국 화면 전환과 관련된 부분만 DispatchQueue에 넣어야 하는 것이 적절하다고 판단하였습니다.

    
```swift
func presentConfirmAlert(message: String) {
    let alertController = UIAlertController(title: AlertSetting.controller.title,
                                               message: message,
                                                preferredStyle: .alert)
        
    DispatchQueue.main.async {
        let confirmAction = UIAlertAction(title: AlertSetting.confirmAction.title,
                                             style: .default) { [weak self] _ in
                
            switch AlertMessage(rawValue: message) {
            case .enrollmentSuccess, .modificationSuccess:
                self?.dismiss(animated: true)
            case .deleteSuccess:
                self?.navigationController?.popViewController(animated: true)
            default:
                break
            }
        }
            
        alertController.addAction(confirmAction)
        self.present(alertController,
                        animated: false)
    }
}
```

--- 

## 1️⃣ STEP 1

### STEP 1 Questions & Answers

#### Q1. Unit Test 시 실제 서버로부터 데이터를 가져오지 못하는 이슈
- 추가로, URLDataTests 파일 내 func test_fetchData_메서드가_실제_홈페이지에서_data를_가져오는지_테스트()에서 실제 서버에서 데이터를 받는 작업을 진행 해보았는데, fetchData 메서드가 호출되는 부분에서는 Grand Central Dispatch queue에서 진행되어, global 스레드에서 진행되는 것으로 알고 있습니다. 이때문에, test 함수가 끝난 이후에 fetchData 메서드가 진행될 수 있기 때문에, expectation, fulfill, wait을 통해 함수가 미리 종료되는 것을 방지하고 있습니다. 현재 적용되어 있는 코드는 timeout을 10초로 설정해두었습니다. 하지만 만약 서버에서 전송하는 시각이 10초 이후에 이뤄진다면 저희의 코드는 정상적으로 작동할 수 없다는 것을 확인 하였습니다. 이를 해결할 수 있는 좋은 방법이 있을지 여쭈어보고 싶습니다!!

#### A1. Unit Test 시 실제 서버로부터 데이터를 가져오지 못하는 이슈

- 가장 먼저 Network 작업은 어떻게 동작하는지와 어떻게 처리해야 할지 고민을 해보시는걸 추천드립니다. Task 작업은 왜 global 스레드에서 동작하는지, 왜 **[@escaping](https://github.com/escaping)** 키워드를 사용하는지, 마지막으로 네트워크 통신을 통해 얻어진 response data를 어떻게 사용해야할지 고민해보시면 좋겠습니다.
- 해당 이슈를 통해 왜 네트워크와 무관한 UnitTest를 해야하는지 한번 돌아보시면 좋을 것 같습니다.
- UnitTest 시 Mock 데이터를 사용하는 이유에 대하여 다음과 같이 분리하여 설명하고자 합니다.
1. 가장 먼저 Network 작업은 어떻게 동작하는지와 어떻게 처리해야 할지

> 네트워킹이란 서버와 앱 간의 데이터를 주고받는 것입니다. Networking은 서버와 앱 간의 데이터를 주고받기 위하여 HTTP 방식으로 REST API를 이용해서 JSON 데이터를 주고받습니다. HTTP 방식을 이용해서 REST API를 구성하는데, HTTP는 모바일과 서버 간의 메시지를 주고받는 규칙입니다. 즉, 서버와 클라이언트(앱) 간의 메시지를 주고받는 통신 규약을 의미합니다. HTTP를 통해 클라이언트는 서버에게 URL을 통해서 요청(Request)하고 서버는 요청에 대한 응답(Response)을 주는데 대부분 JSON 형식으로 응답을 줍니다.
> 
2. Task 작업은 왜 global 스레드에서 동작하는지

> 앱을 실행하는 동안에 Networking 기능이 많이 작동하는데 동시성을 제공하지 않는다면 사용자는 Networking 기능을 전부 작동하는 동안은 사용자가 해당 작업이 완료될 때까지 기다려야 합니다. 이에 동시성 프로그래밍 필요(다중 스레드)합니다. 컴퓨터는 네트워킹이 되는 동안에도 사용자와 인터렉션이 돼서 즉각적인 반응을 보여줘야 하는데, 그렇게 되지 못할 때 사용자는 불편함을 느끼기 때문에 동시성을 제공해줘야 합니다.
> 
3. 왜 @escaping 키워드를 사용하는지

> 먼저 URLSession에 대한 이해가 선행되어야 합니다. 앱과 서버 간의 데이터를 주고받기 위해서는 HTTP 프로토콜을 이용해서 데이터를 주고받는데 앱에서 서버와 통신하기 위해 애플이 제공하는 API가 바로 URLSession입니다. URLSession의 사용 순서는 Configuration을 결정, Session 생성, Request에 사용할 url 설정, Task 결정 및 작성 순으로 진행됩니다. URLTask 중 하나인 DataTask는 Data를 받는 작업으로, Response 데이터를 메모리 상에서 처리합니다. URL 요청을 실시하고 완료 시 핸들러를 호출하는 Task 형식으로, Task가 실행된 후 핸들러가 실행되기 때문에 @escaping closure 형태로 받아와야 합니다.
> 

> 클로저가 함수에 인자로 전달됐지만 함수가 종료된 뒤 실행되는 것을 escape(탈출) 합니다. @escaping closure를 사용함으로서, 외부 변수/상수에 저장 가능 및 해당 함수가 실행이 끝나도 클로저 실행이 가능합니다. 이에 escaping 클로저는 completion handler, 즉 함수의 결과에 따라 다르게 동작하도록 비동기적 처리를 요구하는 함수에서 활용이 가능합니다. 서버 통신은 비동기 방식으로 작동하기에, response를 받아오기 전에 함수가 먼저 종료되어 빈 response가 나올 가능성 존재합니다. 따라서 escaping closure를 통해 서버에서 response를 다 가져오지 못한 상태로 함수가 종료되어도, 후에 서버 작업이 완료되면 escaping closure를 호출할 수 있기 때문에 response를 안전하게 전달받을 수 있습니다.
> 
4. 마지막으로 네트워크 통신을 통해 얻어진 response data를 어떻게 사용해야할지 고민해보시면 좋겠습니다.

> 네트워크로부터 얻어진 response data를 completion handler에 전달하는 data task을 만들면 해결이 가능할 것으로 보입니다. completion handler는 task를 생성한 것과 다른 Grand Central Dispatch queue에서 호출되어 response data를 받았을 때 비동기적으로 실행됩니다. dataTask 메서드를 실행하고, resume() 메서드를 통해 데이터를 요청하고, 이를 받으면, completion handler는 실행되기 때문에, 해당 클로저 내부에서 response data에 대한 처리하고자 하는 작업을 수행하면 될 것으로 판단됩니다. 이제 Response data가 수신 완료된다면, delegate, notification, 새로운 tableView 생성, property observer 등을 통하여 해당 이벤트가 발생하였음을 전달해주면 Response data를 사용이 가능할 것으로 보입니다.
>

#### Q2. 폴더 및 파일 관리 고민
- 이번 오픈마켓 프로젝트를 진행하면서 저희는 크게 Common, Resource, Model, View, Controller, Mock을 기준으로 폴더 작업을 해주었고, 그에 따라 파일 분류를 해보았는데, 저희의 분류작업이 괜찮은 방법인지 확인을 받고 싶습니다.

#### A2. Unit Test 시 실제 서버로부터 데이터를 가져오지 못하는 이슈
- 이번 오픈마켓 프로젝트를 진행하면서 저희는 크게 `Common`, `Resource`, `Model`, `View`, `Controller`, `Mock`을 기준으로 폴더 작업을 해주었고, 그에 따라 파일 분류를 해보았는데, 저희의 분류작업이 괜찮은 방법인지 확인을 받고 싶습니다.
- 현재 프로젝트 규모가 작아 각 View, Model, Controller 등으로 분류를 해주셨지만 해당 종류별로만 구분을 한다면 프로젝트 규모가 커져가면서 파일 구조가 복잡해질 것 같습니다. 개인적으로 추천드리는 파일 구조는 크게 화면과 기능으로 구분하는 것입니다.
- 피드백 내용
    ```swift
    └── OpenMarket
        ├── View
        │   ├── ViewController
        │   ├── View
        │   └── Model
        ├── Network
        ├── Extension
        └── Mockup
    
    ```

- 적용한 부분
    ```swift
    └── OpenMarket                  
        ├── Application         
        │   ├── Presentation
        │   │   ├── ViewController
        │   │   └── View
        │   └── Domain
        │         └── Model
        ├── Networking               
        │   └── Protocol
        ├── Extensions
        └── Resources
    ```
- View안에 다시 View가 들어가 있는 부분에 의문이 들어 Clean Architecture 구조를 찾아 보았습니다.
- Clean Architecture 구조는 각 계층이 명확하게 분리되어있기 때문에 테스트와 유지 보수가 용이해지는 장점이 있어 채택하게 되었습니다.

## 2️⃣ STEP 2

### STEP 2 Questions & Answers

#### Q1. 한개의 Cell을 사용하여 두개의 CollectionLayout 생성시 발생하는 오토레이아웃 문제
**기존 CollectionViewCell**

- 먼저 초기 화면이 구성이 되면, 컬렉션 뷰의 레이아웃을 ListLayout으로 설정하였습니다.
- 하나의 CellRegistration 만을 바탕으로, Semented Control을 통해 ListLayout와 GridLayout를 전환하는 방식을 사용하였습니다.
    - segemented Control 전환시 List와 Grid 뷰의 axis를 변경해 주었습니다.
    - 기본 Custom Cell은 UICollectionViewListCell을 채택한 UI입니다.
        - List의 accessory 설정을 활용하기 위해서 사용하였습니다.

**문제점**

- ListLayout을 위해 Cell 안의 UI 요소인 imageView의 width와 height의 Constraint를 설정해 두었습니다. 하지만 Grid Layout 화면으로의 전환시 이전에 설정한 Constraint가 그대로 남아 있어 Autolayout이 정상적으로 실행되지 않아 에러가 발생하였습니다.

**시도한점**

- ListLayout 구현 과정에서 설정된 Constraint가 Grid Layout 화면으로의 전환시에 필요하지 않다면 제거하는 방법을 생각하였습니다. Segmented Control을 클릭시`collectionView.visibleCells.forEach` 코드를 통하여 forEach문 안에서 Constraint를 제거하려고 하였으나 Cell이 생성된 후에 Constraint를 제거하고자 하여 imageView에 설정된 constraint을 제거할 수 없었습니다.

**해결한점**

- List와 Grid를 위한 View를 각각 두개로 만들어서 따로 Autolayout를 처리할 수 있도록 하였습니다.

**궁금한점**

- Segmented Control을 클릭시에 Constraint를 다르게 적용하여 Auto-layout이 안전하게 처리될 방법이 있을까요?
- 똑같은 UIElement를 사용하는데 하나의 Cell로 Layout을 처리하는 것은 비효율적인 것일까요?
    
    ```swift
       @objc func segmentedValueChanged(_ sender:UISegmentedControl!) {
            let items = sender.selectedSegmentIndex
    
            switch items {
            case 0 :
                collectionView.setCollectionViewLayout(createListLayout(), animated: true)
                collectionView.visibleCells.forEach { cell in
                    guard let cell = cell as? CustomCollectionViewCell else {
                        return
                    }
    
                    cell.contentView.layer.borderColor = .none
                    cell.contentView.layer.borderWidth = 0
                    cell.accessories = [.disclosureIndicator()]
    
                    cell.configureStackView(of: .horizontal, textAlignment: .left)
                }
            case 1:
                collectionView.setCollectionViewLayout(createGridLayout(), animated: true)
                collectionView.visibleCells.forEach { cell in
                    guard let cell = cell as? CustomCollectionViewCell else {
                        return
                    }
    
                    isSelected = true
                    cell.accessories = [.delete()]
                    cell.contentView.layer.borderColor = UIColor.black.cgColor
                    cell.contentView.layer.borderWidth = 1
    
                    cell.configureStackView(of: .vertical, textAlignment: .center)
                }
    
                collectionView.scrollToItem(at: IndexPath(item: -1, section: 0), at: .init(rawValue: 0), animated: false)
            default:
                break
            }
        }
    
        private func createListLayout() -> UICollectionViewLayout {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.2))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
            let section = NSCollectionLayoutSection(group: group)
            let layout = UICollectionViewCompositionalLayout(section: section)
    
            return layout
        }
    
        private func createGridLayout() -> UICollectionViewLayout {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = .init(top: 4, leading: 8, bottom: 4, trailing: 8)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.8))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
            let section = NSCollectionLayoutSection(group: group)
    
            let layout = UICollectionViewCompositionalLayout(section: section)
            return layout
        }
    
    ```
#### A1. 한개의 Cell을 사용하여 두개의 CollectionLayout 생성시 발생하는 오토레이아웃 문제

- 지금은 listLayout값, gridLayout(type: `UICollectionViewLayout`) 의 설정된 값만 보고 왜 적용안되나 고민했다. stackView와 contentView는 그 안의 subview들과 설정한 레이아웃 값이 구체적이어야 하지만 제대로 레이아웃이 나온다. 지금처럼 rootStackView와 contentview 사이에서만 오토레이아웃 값을 설정하면 원하는대로 값이 제대로 나오지 않는다.
- 보통 레이아웃 값을 바꾸고 싶을때 기존의 적용한 constraint(`NSLayoutConstraint`)값은 비활성화(isActive = false) 시키고, 새로운 constraint값을 활성화시킨다.
- 하지만 위의 경우는 특정 상황에서 부분적으로 뷰의 모양을 변화시켜야 할 때 해야 하는 것이고, 지금 List, Grid 처럼 아예 모양이 다른 경우에는 ListCell, GridCell 따로 만들어서 구현해주는게 버그도 없고 유지보수에 더 좋고, 동료가 보기에도 편하다.

#### Q2. ListConfiguration이 아닐 때 separator 생성 방법

- list 형식의 CollectionView를 생성하는 가운데, list layout을 구성하는 방법은 listConfiguration을 통하여 간단하게 생성하는 방법 1과 compositional layout의 기본적인 형태로 item, group, section을 각각 설정하여, layout에 section을 넣어주어 이를 반환하는 방법 2가 있습니다.
- 코드
    
    ```swift
    // 방법 1
    private func createListLayout() -> UICollectionViewLayout {
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
    
        return UICollectionViewCompositionalLayout.list(using: config)
    }
    
    // 방법 2
    func createListLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
    
        return layout
    }
    
    ```
    
- 이에 따라, 셀을 등록하는 방법에 있어서 listConfiguration을 사용한 방법1의 경우에는 UICollectionViewListCell을 사용하였습니다. 방법2에서는 커스텀 셀인 ListCollectionCell을 사용하여 직접 cell 내 UI들의 오토레이아웃을 잡아주어야 했습니다. 저희는 방법 2에 따라 진행하였는데, 방법 1인listConfiguration의 경우에는 셀 간의 구분선을 separatorLayoutGuide을 통하여 설정해줄 수 있는데, 방법 2의 경우에는 구분선을 그려주기 위한 메서드를 찾지 못하였습니다. 혹시 제이슨께서 이를 해결하는 방법을 알고 있으신지 질문드리고 싶습니다!

#### A2. ListConfiguration이 아닐 때 separator 생성 방법

- CustomCell의 경우엔 SeparatorView가 따로 존재하지 않다. 따라서 uiview 로 만들어야 한다. 그리고 디자이너가 디자인한 구분선은 ListConfiguration cell의 separtor처럼 생기지 않을 수 있기 때문에 따로 만들어주는 것이 더 좋을 때도 있다는 점을 참고하자.
- 두번째 방법은 CollectionViewFlowLayout을 쓰는 방법입니다. https://stackoverflow.com/a/28691409 아래 swift 코드도 있으니 참고하시면 좋을 거 같다
- 세번째 방법으로 CALayer의 extension을 통해 contentView의 아래에 layer을 추가하는 방법이다. 이는 첫번째 방법과 거의 유사하다.
- 코드(CALayer)
    
    ```swift
    private extension CALayer {
        func addBottomBorder() {
            let border = CALayer()
            border.backgroundColor = UIColor.systemGray3.cgColor
            border.frame = CGRect(x: 0,
                                  y: frame.height + 4,
                                  width: frame.width,
                                  height: 0.5)
            
            self.addSublayer(border)
        }
    }
    ```
    
- 코드(ListCollectionCell)
    
    ```swift
    override init(frame: CGRect) {
            super.init(frame: frame)
            
            contentView.layer.addBottomBorder()
            configureListCell()
    }
    ```
    
- 해결하려고 다음의 [블로그](https://appleeducation.instructure.com/courses/148/pages/7af764bd3bd96d42c5bda9828eeeaa23-dot-readme)도 봤는데, 생략된 부분이 다수 있어 동일하게 구현하기에는 무리가 있었다.

#### Q3. 페이지 수에 따른 ListConfiguration cell과 custom cell의 오토레이아웃 에러 발생 유무

```
`URL = "<https://market-training.yagom-academy.kr/api/products?page_no=1&items_per_page=50>"`
```

- ListConfiguration Cell을 사용해 URL이 위의 코드(page 당 50개의 아이템을 불러오기)와 같이 주어졌을때 콘솔창에 수 많은 오토레이아웃 에러를 마주쳤습니다. 하지만 custom cell로 구현했을때는 오토레이아웃 문제 없이 사용할 수 있었는데, 이와 같은 차이가 발생하는 이유를 여쭈어보고 싶습니다.

#### A3. 페이지 수에 따른 ListConfiguration cell과 custom cell의 오토레이아웃 에러 발생 유무

- [what the fuck autolayout](https://www.wtfautolayout.com/) 페이지에서 아래 경고글을 복붙해서 확인해보았다.

```swift
("<NSLayoutConstraint:0x600001c0cb40 UIImageView:0x13859f0b0.height == 60 (active)>","<NSLayoutConstraint:0x600001c0dc70 V:|-(0)-[UIStackView:0x13859ed90] (active, names: '|':UIView:0x1385a1210 )>","<NSLayoutConstraint:0x600001c0dcc0 UIStackView:0x13859ed90.bottom == UIView:0x1385a1210.bottom (active)>","<NSLayoutConstraint:0x600001c0ee90 'UISV-canvas-connection' UIStackView:0x13859ed90.top == _UILayoutSpacer:0x600000064780'UISV-alignment-spanner'.top (active)>","<NSLayoutConstraint:0x600001c0ef30 'UISV-canvas-connection' UIStackView:0x13859ed90.centerY == UIImageView:0x13859f0b0.centerY (active)>","<NSLayoutConstraint:0x600001c0ec60 'UISV-spanning-boundary' _UILayoutSpacer:0x600000064780'UISV-alignment-spanner'.top <= UIImageView:0x13859f0b0.top (active)>","<NSLayoutConstraint:0x600001c30050 'UIView-Encapsulated-Layout-Height' UIView:0x1385a1210.height == 44 (active)>")
```

- 이유는 UICollectionLayoutListConfiguration의 plain은 height가 44로 설정되어있는데 CollectionListViewCell의 productImageView는 60이고 똑같이 cell의 height 도 60인것과 충돌해서 오토레이아웃 버그가 발생한 것이다. 반면 ContentView는 설정값이 따로 존재하지 않아 경고가 출력이 되지 않는 것이였다. 충분히 문제의 원인을 파헤쳐보면 알 수 있었다.

## 3️⃣ STEP 3

### STEP 3 Questions & Answers

#### Q1. ScrollView AutoLayout 관련 질문
    
- rootScrollView 내에 rootStackView를 삽입하는 코드를 아래와 같이 추가해보았습니다.

- 코드

    ```swift
    NSLayoutConstraint.activate([
        rootStackView.topAnchor.constraint(equalTo: rootScrollView.topAnchor),
        rootStackView.leadingAnchor.constraint(equalTo: rootScrollView.leadingAnchor),
        rootStackView.trailingAnchor.constraint(equalTo: rootScrollView.trailingAnchor),
        rootStackView.bottomAnchor.constraint(equalTo: rootScrollView.bottomAnchor)
    ])
    ```


- rootStackView의 top, bottom, trailng, leading constraint을 설정함에 있어서 rootScrollView를 기준으로 설정해보았습니다. 시뮬레이터와 view hierachy를 통해 UI 구현 결과를 확인해보니, rootScrollView.contentLayoutGuide를 바탕으로 제약을 설정했을 때와 동일하게 constraint가 잡힌 것이란 생각이 들었습니다.

- 코드

    ```swift
    rootStackView.widthAnchor.constraint(equalTo: rootScrollView.widthAnchor).isActive = true
    ```

- 반면, rootStackView의 width constraint를 설정할 때는 rootScrollView 기준을 설정할 때의 UI 구현 결과를 확인해보니, rootScrollView.contentLayoutGuide이 아닌 rootScrollView.frameLayoutGuide를 바탕으로 제약을 설정했을 때와 동일한 결과를 보여주었습니다.

- 정리해보자면, top, bottom, leading, trailing의 경우 rootScrollView에 제약을 설정할 때는, rootScrollView.contentLayoutGuide를 사용하여 제약을 설정하고, width의 경우 rootScrollView에 제약을 설정할 때는, rootScrollView.frameLayoutGuide를 사용하여 제약을 설정한다고 판단하였습니다.

- 이에, 저희의 판단이 맞는 것인지 궁금하고, 만일 그러하다면, 왜 default 값이 frameLayoutGuide, contentLayoutGuide로 서로 다르게 설정되어 있는지 여쭈어보고 싶습니다.

#### A1. ScrollView AutoLayout 관련 질문
    
- 레이아웃 값에 따라 디폴트로 어쩔 때는 frameLayoutGuide를 따르고 어쩔 때는 contentLayoutGuide를 따르는지 모르겠고, 실제로 그런게 있는지도 잘 모르겠다는 의견을 받았습니다.
- 이를 알아보는 것은 매우 험난한 과정이므로, 정확한 레이아웃 값을 주는 것이 최선의 방법임을 깨달았습니다. contentLayoutGuide이 필요한 부분이면 잘 적용되게 코드를 추가하고, frameLayoutGuide이 필요한 필요한 부분이면 또 잘 적용되게 코드를 추가한다면 본인의 생각에 맞는 오토레이아웃을 설정하는데 도움이 될 것임을 알게 되는 계기가 되었습니다.
    
## 4️⃣ STEP 4

### STEP 4 Questions & Answers

#### Q1. POST 시 Requried Parameters 관련 질문
    
- 상품 등록은 POST 메서드를 통하여 진행됩니다. 오픈마켓 API를 확인해보니 상품 등록에 관하여 Request Body의 Params를 살펴보니, name, descriptions, price, currency, secret은 required 체크가 되어있었고, discounted_price, stock은 requried 체크가 되어 있지 않았습니다. 즉, 전자의 파라미터의 경우는 서버 등록을 위해서 필수적인 파라미터이므로, 이를 하나라도 값을 누락한다면, 서버로 상품 등록이 안 될 것이라고 생각하였습니다. 하지만, POSTMAN과 오픈 마켓 어플리케이션을 통해 확인해본 결과, description에 값을 할당하지 않은 상태임에도 서버로 POST가 되었고, GET 또한 이루어지는 것을 발견하였습니다. 이를 어플리케이션 내 상품 상세 페이지에서 UI를 구현하고자 했을 때는, 데이터가 정상적으로 들어오지 않아 빈 화면을 출력하였습니다. 
- 이에 저희는 두 가지 의문점을 제기하고 싶습니다. 먼저, 필수 요소로 선언된 파라미터를 사용하지 않고도 서버에 상품이 등록될 수 있는지 질문드리고 싶고, 그렇다면 이를 어떻게 정상적으로 상품 상세 페이지에 출력해야하는지 여쭈어 보고 싶습니다.

### A1. **POST 시 Requried Parameters 관련 질문**

- 먼저 첫번째 의문점에 대해서는 서버에서 해당 처리를 잘못한 듯 하다는 피드백을 받았다. 리뷰어 기준에서는 필수값이면 등록되지 않도록 서버로직을 짜야 한다고 생각한다는 의견을 덧붙였다. 다음으로, 두번째 의문점에 대해서는 서버 응답값에 필수값이 빠진 경우에 어떻게 대처할 것인지 질문하신 걸로 이해한다면, 리뷰어라면 해당 응답값이 잘못된 응답값이라도 디코딩 잘 되도록 모델을 구현할 것이라는 피드백을 받았다.
- 서버에서 필수 값을 보내야 하는데 보내지 않은 건 엄연히 서버 잘못이지만 충분히 생길 수 있는 문제 상황이다. 예를 들어 이미 배포된 서버 응답값에는 클라이언트가 잘 대응하다가 새로 서버를 배포했을 때 서버 응답값이 잘못 내려와 클라이언트 쪽에서 디코딩을 못해 아무런 화면을 보이지 못한다면 사용자는 아무것도 못볼 것이기 때문이다.
- 따라서 어느 경우라도 디코딩을 잘해 일부 값이라도 보이기 위해 DTO(Data Transfer Object)의 프로퍼티로 옵셔널 타입을 쓰고 타입은 Enum 대신 raw한 타입을 쓰는(ex. String, Int...)방법을 쓸 수 있다. 필수 값임에도 불구하고 내려오지 않거나 잘못된 값이 내려오는 상황을 대비해 옵셔널을 사용하고 Enum 타입 사용을 지양하는 것이다.
- 위의 개념을 뒷받침하는 예시로 리뷰어에게 다음의 코드 예시를 받았다.
- 코드 by 제이슨
    
    ```swift
    struct OnethingUserModel: Codable {
        let name: String?
        let email: String?
        let authType: String?
        let nickname: String?
        let imageType: String?
        let enableAlarm: String?
        
        var castingAccessType: SocialAccessType? {
            guard let authType = self.authType,
                  let accessType = SocialAccessType(rawValue: authType)
            else { return nil }
            
            return accessType
        }
        
        var profileImageType: OnethingProfileType? {
            guard let strongImageType = self.imageType,
                  let imageType = OnethingProfileType(rawValue: strongImageType)
            else { return nil }
            
            return imageType
        }
        
        var castingAlarm: AlarmToggle? {
            guard let enableAlarm = self.enableAlarm,
                  let alarmToggle = AlarmToggle(rawValue: enableAlarm)
            else { return nil }
            
            return alarmToggle
        }
        
        enum AlarmToggle: String {
            case on = "ON"
            case off = "OFF"
        }
    }
    ```
    
- 이 예시는 필수값이어도 Optional 로 받고 Enum화 할수 있는 프로퍼티여도 raw한 타입으로 선언하고 이후에 이 모델값을 사용할때는 연산프로퍼티를 통해 Enum 생성후 이용하는 방식이라고 한다.

---

    
## 📚 참고문서

- [URLSession](https://developer.apple.com/documentation/foundation/urlsession)
    - [Fetching Website Data into Memory](https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory)
- [UICollectionView](https://developer.apple.com/documentation/uikit/uicollectionview)
    - [Modern cell configuration](https://developer.apple.com/videos/play/wwdc2020/10027/)
    - [Lists in UICollectionView](https://camp.yagom-academy.kr/camp/61d414e5e4081120ba7884d2/projects/62caa0aa41131548559889b6)
    - [Implementing Modern Collection Views](https://developer.apple.com/documentation/uikit/views_and_controls/collection_views/implementing_modern_collection_views)
- [Data Entry - iOS - Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/patterns/entering-data/)
- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)
