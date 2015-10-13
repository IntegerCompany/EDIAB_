//: Playground - noun: a place where people can play

import Cocoa

var user = UserBase(firstName: "Max",lastName: "Vitruk",email: "MaxVitruk@gmail.com",age: 26,sex: true)

var user2:User?

var user3:UserBase = User(firstName: "Max",lastName: "Vitruk",email: "MaxVitruk@gmail.com",age: 26,sex: true)

SWIFT 2

Матеріал з Вікіпедії
Swift — це об'єктно-орієнтована мова програмування, розроблена компанією Apple для того, щоб співіснувати з Objective C і бути стійкішою до помилкового коду. Swift була представлена на конференції розробників WWDC 2014 [2]. Мова побудована з LLVM компілятором, включеного у Xcode 6 beta.

При цьому Swift-програми компілюються у машинний код, що дозволяє забезпечити високу продуктивність. За заявою Apple, код Swift виконується в 1.3 рази швидше коду на Objective-C. Замість збирача сміття Objective-C в Swift використовуються засоби підрахунку посилань на об'єкти, а також надані у LLVM оптимізації, такі як автовекторизація.

Версія Swift 1.0 була випущена 9 вересня 2014 року разом із «Gold Master»-версією Xcode 6.0 для iOS.

Swift 2 — був представлений на WWDC 2015 разом із новим iOS 9.0 та Mac OS - El Capitan. 




І так чому саме SWIFT (2) ? 

Ще нема супер досвідчених розробників на SWIFT. :)
	“Тепер можна на рівні спорити на цю тему”
Читабельність цієї мови (e.g Phyton, Ruby ), розмір коду !
 [[[]]] - прощай скобочний АД ! 

Obj C :

[UIColor colorWithContrastingBlackOrWhiteColorOn:(UIColor *)backgroundColor isFlat:(BOOL)flat];

Swift  :

UIColor(contrastingBlackOrWhiteColorOn:UIColor!, isFlat:Bool)


Безпека коду ! 
	В даній мові появилось поняття “Optionla value” або “опціонали” які 	в коді позачаються символами “?” і “!”. Таким чином ми умисно 		передбачаєм що данна змінна може містити “nil”. 
	“?” - це чорний ящик в який ми ще не заглянули
	“!” - відкриваємо чориний якщик із подальшими наслідками )
	
	Тим більше сам компілятор підказує де і коли це може 			знадобитись.

ARC - управління памятю за рахунок підрахуку прямих силлок. 
	Даний тип управління памятю відбувається незалежно від темпу 	виконання основного коду як в Java, C#, GO, де GC міг 			влізти в 16мс рендерінгу і тормозити UI. 

Продуктивнісь ! 
	В деяких алгоритмах Swift випереджає Obj C від 1,4 до 2,6 раз в 		середньому.
Відсутність проблем із “namespace”
Відкритий код ! Open Source
	До цього Apple і Open Source обєднувало лише ядро UNIX на якому 		базуюються іхні системи )






Цікаві можливості свіфт :

Computed Properties : значення яких обраховується в процесі. 

		struct Point {
		    var x = 0.0, y = 0.0
		}
		struct Size {
		    var width = 0.0, height = 0.0
		}
		struct Rect {
		    var origin = Point()
		    var size = Size()
		    var center:  a href="" Point /a  {
		        get {
		            let centerX = origin.x + (size.width / 2)
		            let centerY = origin.y + (size.height / 2)
		            return Point(x: centerX, y: centerY)
		        }
		        set(newCenter) {
		            origin.x = newCenter.x - (size.width / 2)
		            origin.y = newCenter.y - (size.height / 2)
		        }
		    }
		}
		var square = Rect(origin: Point(x: 0.0, y: 0.0),
		    size: Size(width: 10.0, height: 10.0))
		let initialSquareCenter = square.center
		square.center = Point(x: 15.0, y: 15.0)
		print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
		// prints "square.origin is now at (10.0, 10.0)"
Property Observers : реакція на зміну поля

		class StepCounter {
		    var totalSteps:  a href="" Int /a  = 0 {
		        willSet(newTotalSteps) {
		            print("About to set totalSteps to \(newTotalSteps)")
		        }
		        didSet {
		            if totalSteps > oldValue  {
		                print("Added \(totalSteps - oldValue) steps")
		            }
		        }
		    }
		}
		let stepCounter = StepCounter()
		stepCounter.totalSteps = 200
		// About to set totalSteps to 200
		// Added 200 steps
		stepCounter.totalSteps = 360
		// About to set totalSteps to 360
		// Added 160 steps
		stepCounter.totalSteps = 896
		// About to set totalSteps to 896
		// Added 536 steps


Will set :



Did set :



Отож невеликі апдейти свіфта проходять почтійно вже із виходом версії 1.2 додалось багато корисних речей 

Логічне Where 

// До Swift 1.2
if let data = widget.dataStream {
  if data.isValid {
    if let source = sourceIP() {
      if let dest = destIP() {
        // щось робим
      }
    }
  }
}

// В Swift 1.2
if let data = widget.data where data.isValid, let source = sourceIP(), dest = destIP() {
  // щось робим
}

Приведення типів стало ще легшим 

// В Swift 1.2
var aView: UIView = someView()
 
var tableView = aView as! UITableView

// Або ще безпечніша конструкція
var aView: UIView = someView()
 
if let tableView = aView as? UITableView {
  // працюєм з tableView
}

Робота з константами 

let longEdge: CGFloat
 
if isLandscape {
  longEdge = image.calculateWidth()
} else {
  longEdge = image.calculateHeight()
}
 
// тепер можна робити звернення до longEdge з цього рядка !
…та багато інших плюшок )
Subscript Syntax : 

		struct TimesTable {
		    let multiplier:  a href="" Int /a 
		    subscript(index:  a href="" Int /a ) ->  a href="" Int /a  {
		        return multiplier * index
		    }
		}
		let threeTimesTable = TimesTable(multiplier: 3)
		print("six times three is \(threeTimesTable[6])")
		// prints "six times three is 18"






























SWIFT 2


Нижче наведено частину коду, яка відкриває файл, записує якісь дані та закриває файл. 

func writeLog() {
        let file = openFile()
        let hardwareStatus = fetchHardwareStatus()
        guard hardwareStatus != "disaster" else { return }
        file.write(hardwareStatus)
        let softwareStatus = fetchSoftwareStatus()
        guard softwareStatus != "disaster" else { return }
        file.write(softwareStatus)
        let networkStatus = fetchNetworkStatus()
        guard networkStatus != "disaster" else { return }
        file.write(networkStatus)
        closeFile(file)
}

Методи є незаповненими, думаю що зрозуміло з контексту що відбувається. Файл відкрився, різні типи даних записані, і в кінці файл закривається. Але що станеться якщо якась з перевірок поверне помилку? Guard спіймає помилку та вийде з методу, але що найголовніше, файл залишиться відкритим. Було два варіанти як вирішити цю ситуацію, і жоден з них не був хорошим. Перший - скопіювати closeFile(file) перед кожним return , другий - створити піраміду з вкладених перевірок щоб опрацьовувати запис. 
Swift 2 вирішив цю проблему з допомогою ключового слова defer. Воно означає “ось що я хочу виконати, що б не сталося”. Це може бути будь що, простий метод закриття файлу, або ж 50 рядків коду які потрібно виконати перед виходом з методу. Тепер можемо переписати нашу функцію у вигляді: 

func writeLog() {
    let file = openFile()
    defer { closeFile(file) }
    let hardwareStatus = fetchHardwareStatus()
    guard hardwareStatus != "disaster" else { return }
    file.write(hardwareStatus)
    let softwareStatus = fetchSoftwareStatus()
    guard softwareStatus != "disaster" else { return }
    file.write(softwareStatus)
let networkStatus = fetchNetworkStatus()
guard networkStatus != "disaster" else { return }
    file.write(networkStatus)
}

Також можемо стоврювати окремий блок всередині методу за допомогою ключового слова do і там оголошувати defer або використовувати його в циклі, тоді цей блок буде виконуватися в кінці кожної ітерації. Може бути багато блоків defer підряд, виконуватимуться вони в зворотньому порядку, той що оголошений першим, виконається в кінці. Важливо пам’ятати про те що не можна виходити з блоку defer, наприклад за допомогою return або викиданням помилки. 

Часто при роботі з Swift Optionals, ми хочемо виконати дію, якщо Optional містить значення, або щось ще, якщо не так. Це робиться за допомогою Optional Binding, з використанням if let конструкції, яка дозволяє перевірити чи містить Optional значення, та якщо воно є присвоїти константі це значення . Це прекрасно працює в багатьох випадках, але в цьому випадку акцентується увага на позитивному випадку. Проблема виникає коли є вкладені перевірки і стає важко знайти відповідний блок else. 
Це той випадок, коли можна використати нововведення Swift 2 - guard. Використовуючи його ми акцентуємо увагу на дії що виконаються в разі помилки. Якщо ж змінна буде містити значення, то код продовжить виконуватися в звичайному порядку. 
Розглянемо приклад використання guard та порівняємо його з if let. Нехай є проста структура книжки, з трьома полями. 
struct Book {
    let name: String?
    let URL: String?
    let Author: String?
} 
Для простого прикладу, дістанемо значення name та виведемо його на консоль. 
Використовуючи if let.
func originalStyleComplimentAboutBook(book: Book) { 
    if let bookName = book {
        print("The \(bookName) is a great book!")
    } else {
        print("I don't know the name of this book, but it's a good one!") } 
} 
Використовуючи guard. 
func guardStyleComplimentAboutBook(book: Book) { 
    guard let bookName = book.name else {
        print("I don't know the name of this book, but it's a good one!")
        return
    }
   print("The \(bookName) is a great book!")
} 
Можна помітити дещо дивне, ми використовуємо константу якій присвоєно 
Optional поза межами умови. Якщо ж ми використовуємо if let то можемо це робити лише всередині блоку, якщо умова виконалася. Для guard випадок true це решта частина коду. Але важливо пам’ятати, що в разі помилки потрібно після виконання дій вийти з функції за допомогою return. 
Для цього короткого прикладу дійсно не важливо що використовувати. Але коли кількість умов збільшується, доцільніше використовувати guard. 
Використовуючи if let.
func originalStyleLongComplimentAboutBook(book: Book) { 
    if let bookName = book.name {
        print("The \(bookName) is a great book!")
        if let bookAuthor = book.Author {
            print("It is written by \(bookAuthor).")
            if let bookURL = book.URL {
                print("Visit it at \(bookURL)")
            } else {
                print("Search for it on your favourite search engine.") } 
        } else {
            print("it is written by an unknown author.")
	}
    } else { 
        print("I don't know the name of this book, but it's a good one!")
    } 
} 
Використовуючи guard. 
guard let bookName = book.name else { 
        print("I don't know the name of this book, but it's a good one!")
        return 
    } 
    print("The \(bookName) is a great book!")
    guard let bookAuthor = book.Author else {
        print("it is written by an unknown author.")
        return
    }
    print("It is written by \(bookAuthor).")
    guard let bookURL = book.URL else {
        print("Search for it on your favourite search engine.")
        return
    } 
    print("Visit it at \(bookURL)")
}
Перш за все, що можна помітити це відсутність вкладених блоків коду. Це робить код більш читабельним та зрозумілим. Хоча це не зменшує саму кількість коду, це дозволяє швидше та зручніше оперувати ним. Не складає проблем знайти який код у випадку true відповідає певній перевірці. 
Якщо нам не важлива перевірка окремих значень, їх можна об’єднати. 

func compoundGuardStyleLongComplimentAboutBook(book: Book) {
    guard let bookName = book.name,
        let bookURL = book.URL,
        let bookAuthor = book.Author else {
        	print("My information is incomplete, but I'm sure
        	this book is great!")
        	return
        } 
    print("The \(bookName) is a great book!")
    print("It is written by \(bookAuthor).")
    print("")
    print("Visit it at \(bookURL)")
} 

Важливим для guard є вихід з тіла функції або циклу. Тобто для функції ми повинні використовувати return, а в циклах break або continue. Break завершить виконання циклу, continue перейде до наступної ітерації, залишившись при тому в циклі. 
For… in фільтрування

Ідея for…in фільтрування полягає в тому щоб застосовувати фільтру в одному рядку з оголошенням циклу. Тобто замість цього: 

let numbers = [1,2,3,4,5,6,7,8,9,10]
 
// BS2 (Before Swift 2)
 
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}

Можна використовувати:

let numbers = [1,2,3,4,5,6,7,8,9,10]
 
// Swift 2
 
for number in numbers where number % 2 == 0 {
    print(number)
}

For… in + Pattern matching(відповідність шаблону)

Ми тепер можемо використовувати поєднання if case разом із for…in для ще більш прогресивного фільтрування. Наприклад:

let taylorSwiftAlbumsWithYear = [
    ("Red", 2014),
    ("1989", 2014),
    ("Fearless", 2008),
    ("Speak Now", 2008)]
 
for case let (album, 2014) in taylorSwiftAlbumsWithYear {
    print("Taylor Swift's album \(album) was released in 2014")
}
 
// printed:
// Taylor Swift's album Red was released in 2014
// Taylor Swift's album 1989 was released in 2014

Filtering Optionals

let numbersWithOptions: [Int?] = [nil, 1,2,4, nil, 6] 
for case let number? in numbersWithOptions where number % 2 == 0 {
    print(number)
}
 
// 2,4,6
Вас міг здивувати такий запис number?

Це нововведення Swift 2 для розпаковування кількох Optionals. До Swift 2 це б виглядало так:

var username: String?
var password: String?
 
switch (username, password) {
case let (.Some(username), .Some(password)):
    print("Success!")
case let (.Some(username), .None):
    print("Password is missing")
case let (.None, .Some(password)):
    print("Username is missing")
case (.None, .None):
    print("Both username and password are missing”)

З оновленням це можна зробити набагато красивіше:

var username: String?
var password: String?
 
switch (username, password) {
case let (username?, password?):
    print("Success!")
case let (username?, nil):
    print("Password is missing")
case let (nil, password?):
    print("Username is missing")
case (nil, nil):
    print("Both username and password are missing")
}

Advanced Pattern Matching

Ми вже розглянули використання if case в циклах for…in, цю конструкцію можна також використовувати разом із switch, наприклад: 

let numberOfTaylorSwiftSongsFavorited = 93
 
if case 0...225 = numberOfTaylorSwiftSongsFavorited {
    print("this is a valid number of favourited Taylor Swift Songs")
}


