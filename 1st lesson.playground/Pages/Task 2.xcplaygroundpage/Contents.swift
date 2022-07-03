class Library {
    var clients: [Client]
    var employees: [Employee]
    let halls: [Hall]
    
    init(Clients clients: [Client], Employee employees: [Employee], Halls halls: [Hall]) {
        self.clients = clients
        self.employees = employees
        self.halls = halls
    }
}


class LargeReadingHall: Hall {
    var isOpen = true
    var seatsCount = 300
    var bedsCount = 100
    var wardrobes: [Wardrobe]
    
    init(wardrobesArr arr: [Wardrobe]) {
        self.wardrobes = arr
    }
    
    func closeHall() {
        isOpen = false
    }
    
    func openHall() {
        isOpen = true
    }
    
}

class SmallReadingHall: Hall {
    var isOpen = true
    var seatsCount = 100
    var bedsCount  = 30
    var wardrobes: [Wardrobe]
    
    init(wardrobesArr arr: [Wardrobe]) {
        self.wardrobes = arr
    }
    
    func closeHall() {
        isOpen = false
    }
    
    func openHall() {
        isOpen = true
    }
    
}

class MediumReadingHall: Hall {
    var isOpen = true
    var seatsCount = 150
    var bedsCount = 50
    var wardrobes: [Wardrobe]
    
    init(wardrobesArr arr: [Wardrobe]) {
        self.wardrobes = arr
    }
    
    func closeHall() {
        isOpen = false
    }
    
    func openHall() {
        isOpen = true
    }
    
}

class MediumReadingHallWithMusic: MediumReadingHall {
    var isPlayingMusic = true
    
    func offMusic() {
        isPlayingMusic = false
    }
    
    func onMusic() {
        isPlayingMusic = true
    }
    
    override func closeHall() {
        isOpen = false
        isPlayingMusic = false
    }
    
    override func openHall() {
        isOpen = true
        isPlayingMusic = true
    }
}

class Security: Employee {
    var name: String
    var post = Employees.Security
    var salary: Int
    
    init(Name name: String) {
        self.name = name
        self.salary = post.salary
    }
    
    func goJob() {
        print("/(post) /(name) go Job!")
    }
}

class Librian: Employee {
    var name: String
    var post = Employees.Librian
    var salary: Int
    
    init(Name name: String) {
        self.name = name
        self.salary = post.salary
    }
    
    func goJob() {
        print("/(post) /(name) go Job!")
    }
}


class Wardrobe {
    var books: [Book]
    
    init(Books books: [Book]) {
        self.books = books
    }
}

protocol Hall {
    var seatsCount: Int { get set }
    var bedsCount: Int { get set }
    var wardrobes: [Wardrobe] { get set }
    var isOpen: Bool { get set }
    
    func closeHall()
    func openHall()
}

protocol Employee {
    var name: String { get set }
    var post: Employees { get set }
    var salary: Int { get set }
    
    func goJob()
}

enum Employees {
    case Security, Librian, DatabaseAdministrator, KeeperOfBookArchives
    
    var salary : Int {
        switch self {
        case .Security: return 20000
        case .Librian: return 30000
        case .DatabaseAdministrator: return 60000
        case .KeeperOfBookArchives: return 35000
        }
    }
}

enum TicketTypes {
    case OneBook, TwoBooks, ThreeBooks, FourBooks, FiveBooks
    
    var price : Int {
        switch self {
        case .OneBook: return 100
        case .TwoBooks: return 200
        case .ThreeBooks: return 250
        case .FourBooks: return 350
        case .FiveBooks: return 400
        }
    }
}

struct Book {
    var name: String
    var conutOfPages: Int
    var genre: String
}

struct Client {
    var name: String
    var books: [Book]
    var readerTicket: ReadersTicket
}

struct ReadersTicket {
    var type: TicketTypes
    var price: Int
    
    init(Type type: TicketTypes) {
        self.type = type
        self.price = type.price
    }
}
