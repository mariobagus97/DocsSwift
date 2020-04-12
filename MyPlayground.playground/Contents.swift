import UIKit

var str = "Hello, playground"
print(str)

//let itu tipe variable static, adalah tipe variable yang nilainya tidak bisa di ubah, atau sebagai getter only
let a = "contoh"
// a = "makan" <<<<<----- ini akan mengakibatkan error
//var adalah tipe variable dynamic, adalah tipe variable yang nilainya bisa di ubah atau di setter and getter
var b : Int = 40
b = 32

// Dibawah ini adalah cara konversi dari tipe data float ke string
var convert = 80.2
var hasilConvert = String(convert)
print(convert)



//Pada kode di atas AudioSample didefinisikan sebagai alias untuk UInt16. Karena ia sebagai jenis alias, Anda dapat memanggil AudioSample.min yang sebenarnya memanggil fungsi UInt16.min dan memberikan nilai awal 0 untuk variabel maxAmplitudeFount.
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min



//tuples mirip dengan dictionary c#
let http404Error = (404,"not found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Mencetak "The status code is 404"
print("The status message is \(statusMessage)")
// Mencetak "The status message is Not Found"
//Kode di atas menguraikan konstanta dari http404Error menjadi statusCode dan statusMessage. Namun jika Anda hanya memerlukan beberapa nilai dari tuple, abaikan bagian tuple lainnya dengan garis bawah (_) saat menguraikannya.
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Mencetak "The status code is 404"
//Selain itu, Anda juga bisa memberikan nama kepada masing-masing elemen dalam sebuah tuple ketika sedang didefinisikan.
let http200Status = (statusCode: 200, description: "OK")
//Jika Anda memberikan nama di tiap-tiap elemen tuples, maka Anda dapat menggunakan nama elemen untuk mengakses nilai pada elemen-elemen tersebut.
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"



//validasi if & else
let validasi = true
if validasi {
    print("benar")
} else {
    print("salah")
}


//if validasi ?? print("benar") : prin



//Setelah yakin bahwa opsional mengandung sebuah nilai, Anda dapat mengakses nilai dasarnya dengan menambahkan tanda seru (!) di bagian akhir nama opsional tersebut. Tanda seru secara efektif mengatakan, “Saya tahu bahwa opsional ini memiliki nilai, silahkan digunakan.” Inilah yang dikenal dengan pembongkaran paksa dari sebuah nilai opsional.
//opsional ? dan force unwrapping
let convertedNumber : Int? =  123
if convertedNumber != nil {
   print("convertedNumber has an integer value of \(convertedNumber!).")
}


//Anda dapat menulis ulang possibleNumber dari contoh sebelumnya menggunakan optional binding untuk membongkar nilai dari konstanta tersebut.
let possibleNumber = "123"
if let actualNumber = Int(possibleNumber) {
   print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
   print("The string \"\(possibleNumber)\" could not be converted to an integer")
}
// Mencetak "The string "123" has an integer value of 123"
//Kode di atas dapat dibaca seperti ini:
//“Jika opsional Int mengembalikan sebuah Int (possibleNumber) yang berisi sebuah nilai, maka akan ada sebuah konstanta baru dengan nama actualNumber dan ditetapkan nilainya dari opsional.”

//Anda dapat memasukkan sebanyak mungkin optional binding dan kondisi boolean dalam pernyataan if dengan memisahkannya menggunakan koma. Jika salah satu nilai dalam binding opsional adalah nil atau kondisi boolean false maka kondisi keseluruhan pernyataan if dianggap salah. Berikut contohnya.

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
   print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"
//Atau dapat ditulis menjadi seperti ini:

if let firstNumber = Int("4") {
   if let secondNumber = Int("42") {
       if firstNumber < secondNumber && secondNumber < 100 {
           print("\(firstNumber) < \(secondNumber) < 100")
       }
   }
}
// Prints "4 < 42 < 100"


//----------------------------------------------------ERROR HANDLING-----------------------------------------------------------
//Pernyataan do menciptakan sebuah lingkup baru yang memungkinkan untuk memberitahu kesalahan yang terjadi. Berikut ini contoh bagaimana penanganan kesalahan yang dapat digunakan untuk menanggapi berbagai kesalahan.

func makeASandwich() throws {
   // ...
}
 
//do {
//   try makeASandwich()
////   eatASandwich()
////} catch SandwichError.outOfCleanDishes {
////   washDishes()
//} catch SandwichError.missingIngredients(let ingredients) {
////   buyGroceries(ingredients)
//}
//Dalam contoh di atas, fungsi makeASandwich() akan menimbulkan kesalahan jika tidak ada piring bersih tersedia atau jika ada bahan yang hilang. Karena makeASandwich() dapat membuat kesalahan, maka pemanggilan fungsi dibungkus dengan ekspresi try. Dengan membungkus pemanggilan fungsi dalam pernyataan do, setiap kesalahan akan dilempar dan disebarkan ke klausa catch yang disediakan.
//
//Jika tidak ada kesalahan yang dilemparkan, maka fungsi eatASandwich() akan dipanggil. Jika kesalahan dilemparkan dan cocok dengan kasus SandwichError.outOfCleanDishes, maka fungsi washDishes() akan dipanggil. Dan jika kesalahan dilemparkan dan cocok dengan kasus SandwichError.missingIngredients, maka fungsi buyGroceies(_:) akan dipanggil dengan nilai [string] yang ditangkap dari catch pattern.



//----------------------------------------------------Closed Range Operator------------------------------------------------------
//Closed Range Operator
//Operator rentang tertutup (a...b) mendefinisikan rentang yang berjalan dari a ke b, dan mencakup nilai a dan b. Nilai a tidak boleh lebih besar dari pada b. Operator rentang tertutup berguna ketika Anda melakukan iterasi pada rentang nilai yang ingin Anda gunakan, seperti penggunaan perulangan for-in:

for index in 1...5 {
   print("\(index) times 5 is \(index * 5)")
}

//------------------------------------Nil-Coalescing Operator--------------------------------------
//Operator nil-penggabungan berasal dari beberapa kode seperti ini:

//a != nil ? a! : b
//Kode di atas merupakan contoh ketika nilai a tidak sama dengan nil maka nilai yang dikembalikan adalah a. Sedangkan ketika nilai a nil maka akan mengembalikan nilai b. Tentu dengan operator penggabungan nil atau nil-coalescing, tersedia cara yang lebih elegan untuk merangkum pemeriksaan bersyarat dan membungkusnya dalam bentuk yang ringkas serta mudah dibaca. Berikut ini adalah contoh kode ketika mengimplementasikan operator tersebut:

//a ?? b
//Jadi lebih singkat kan? Contoh di bawah ini menggunakan operator nil-coalescing untuk memilih antara nama warna secara default dan nama warna opsional yang ditentukan pengguna:

let defaultColorName = "red"
var userDefinedColorName: String?   // defaultnya nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName nil, jadi colorNameToUse ditetapkan sebagai nilai default yakni "red", tetapi jika userDefinedColorName tidak bernilai nil, maka value nya tetap colorNameToUse = userDefinedColorName


//-------------------------------------------------------------ARRAY----------------------------------
 var someInts = [Int]()
print("someInts dengan tipe [Int] dengan \(someInts.count) item.")
var shoppingList = ["Eggs", "Milk"]

//-------------------------------------------------------------SET----------------------------------
//Set menyimpan beberapa nilai yang berbeda dengan tipe yang sama dalam sebuah koleksi tanpa urutan yang ditentukan. Mirip dengan Array, namun itemnya tidak urut. Anda bisa menggunakan set sebagai pengganti array ketika urutannya tidak penting, atau ketika Anda perlu memastikan bahwa item hanya muncul sekali.
var letters = Set<String>()
print("letters is of type Set with \(letters.count) items.")
// Mencetak "letters is of type Set with 0 items."
//Tipe data Swift tidak memiliki urutan yang terdefinisikan. Untuk mendapatkan nilai-nilai dari sebuah set dalam urutan tertentu, Anda bisa menggunakan metode sorted() yang mana akan mengembalikan elemen set sebagai array yang diurutkan dengan operator <.
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
for genre in favoriteGenres.sorted() {
   print("\(genre)")
}
// Classical
// Hip hop
// Jazz
//Pada kode di atas, sorted() dapat mengurutkan item di dalam set sesuai posisi hurufnya.


//-------------------------------------------------------------Dictionary----------------------------------
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
// sekarang namesOfIntegers berisi satu pasangan key-value
namesOfIntegers = [:]
// namesOfIntegers menjadi dictionary kosong kembali dengan tipe data [Int: String]
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
   print("The old value for DUB was \(oldValue).")
}
// Mencetak "The old value for DUB was Dublin."
//Anda dapat juga menggunakan subscript syntax untuk mengambil nilai dari dictionary untuk kunci tertentu. Karena ketika mengambil kata kunci dalam sebuah dictionary, mungkin tidak tersedia, maka nilai yang dikembalikan dari subscript syntax bertipe opsional. Jika ketika Anda memasukkan kata kunci yang dicari dan tersedia, maka subscript akan mengembalikan nilai opsional yang berisi kata kunci itu. Namun jika tersedia akan mengembalikan nilai nil.
if let airportName = airports["DUB"] {
   print("The name of the airport is \(airportName).")
} else {
   print("That airport is not in the airports dictionary.")
}
// Pencetak "The name of the airport is Dublin Airport."
//Lalu bagaimana untuk mendapatkan pasangan key-value dari keseluruhan dictionary tersebut? Sama seperti Array, Anda bisa mengulangi seluruh rangkai nilai dalam dictionary dengan perulangan for-in:

for (airportCode, airportName) in airports {
   print("\(airportCode): \(airportName)")
}
// LHR: London Heathrow
// YYZ: Toronto Pearson
//Anda juga dapat mengambil koleksi kunci-kunci atau nilai-nilai dictionary dengan mengakses kunci-kunci dan nilai-nilai properti-nya:

for airportCode in airports.keys {
   print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ
 
for airportName in airports.values {
   print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson


//-------------------------------------------------------------Looping----------------------------------

//Anda dapat menggunakan perulangan for-in untuk mencari tahu sebuah urutan, seperti item dalam dalam array, rentang angka atau karakter dalam string. Berikut ini adalah salah contoh untuk mendapatkan item dari sebuah array:

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
   print("Hello, \(name)!")
}

//-------------------------------------------------------------SWITCH CASE----------------------------------

let someCharacter: Character = "z"
switch someCharacter {
case "a":
   print("The first letter of the alphabet")
    break
case "z":
   print("The last letter of the alphabet")
    break
default:
   print("Some other character")
}


//-------------------------------------------------------------GUARD----------------------------------
//Bedanya dengan pernyataan if adalah, pernyataan guard selalu memiliki klausa lain di mana kode di dalam klausa lain akan dijalankan jika kondisinya tidak benar.

func greet(person: [String: String]) {
   guard let name = person["name"] else {
       return
   }
   print("Hello \(name)!")
   guard let location = person["location"] else {
       print("I hope the weather is nice near you.")
       return
   }
   print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."




//-------------------------------------------------------------FUNCTION--------------------------------------------------------------------

func greet(person: String, alreadyGreeted: Bool) -> String {
   if alreadyGreeted {
       return greet(person: person, from: person)
   } else {
       return greet(person: person, from: person)
   }
}
print(greet(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!"


//Functions with Multiple Return Values
//Anda juga dapat menggunakan tipe tuple sebagai tipe return dari function untuk mengembalikan beberapa nilai sebagai bagian dari satu nilai pengembalian majemuk. Contoh di bawah ini mendefinisikan function dengan nama minMax(array:) yang menemukan angka terkecil dan terbesar dari sebuah array int:

func minMax(array: [Int]) -> (min: Int, max: Int) {
   var currentMin = array[0]
   var currentMax = array[0]
   for value in array[1..<array.count] {
       if value < currentMin {
           currentMin = value
       } else if value > currentMax {
           currentMax = value
       }
   }
   return (currentMin, currentMax)
}


//Functions With an Implicit Return
//Jika seluruh badan dari function adalah ekspresi tunggal maka Anda bisa menuliskan pengembalian dari ekspresi itu secara implisit. Misalnya, kedua fungsi di bawah ini memiliki perilaku yang sama:

func greeting(for person: String) -> String {
   "Hello, " + person + "!"
}
print(greeting(for: "Gilang"))
// Prints "Hello, Gilang!"
 
 
func anotherGreeting(for person: String) -> String {
   return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Gilang"))
// Prints "Hello, Gilang!"
//Seluruh definisi function greeting(for:) adalah pesan sambutan yang memiliki nilai balikan, yang berarti dapat menggunakan formulir yang lebih pendek. Function anotherGreeting(for:) mengembalikan pesan ucapan yang sama, menggunakan kata kunci return seperti function yang lebih panjang. Apapun function yang Anda tulis, jika pengembaliannya hanya satu baris, maka Anda dapat menghilangkan return.


//Function Argument Labels and Parameter Names
//Setiap parameter function memiliki label argumen dan nama parameter. Label argumen digunakan saat memanggil function. Setiap argumen ditulis dalam panggilan function dengan label argumennya di depannya. Nama parameter digunakan dalam implementasi function. Secara default, parameter menggunakan nama parameter sebagai label argumen mereka.
func greet(person: String, from hometown: String) -> String {
   return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Gilang", from: "Bandung"))


// Prints "Hello Gilang!  Glad you could visit from Bandung."
//Penggunaan label argumen memungkinkan suatu function dipanggil secara ekspresif seperti kalimat, sembari tetap menyediakan function badan yang dapat dibaca dan jelas maksudnya.

//Omitting Argument Labels
//Jika Anda tidak membutuhkan label argumen untuk sebuah parameter, maka tulislah dengan garis bawah (_).

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
   // Di dalam badan function, firstParameterName dan secondParameterName
   // merujuk ke nilai argumen untuk perameter pertama dan kedua.
}
someFunction(1, secondParameterName: 2)
//Jika parameter memiliki label argumen, maka argumen tersebut harus diberi label saat Anda memanggil function tersebut.

//
//Default Parameter Values
//Anda dapat mendefinisikan sebuah nilai default untuk parameter apapun di dalam function dengan menetapkan nilai ke parameter setelah tipe parameter itu. Jika nilai default ditentukan, Anda dapat menghilangkan parameter itu saat memanggil function.

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
   // Jika Anda menghilangkan argumen ke dua saat memanggil function ini,
   // maka nilai parameterWithDefault adalah 12 di dalam tubuh function.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault adalah 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault adalah 12
//Tempatkan parameter yang tidak memiliki nilai default, di awal daftar parameter function sebelum paramet



//-------------------------------------------------------------ENUM--------------------------------------------------------------------

enum CompassPoint {
   case north
   case south
   case east
   case west
}


enum Planet {
   case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

directionToHead = .south
switch directionToHead {
case .north:
   print("Lots of planets have a north")
case .south:
   print("Watch out for penguins")
case .east:
   print("Where the sun rises")
case .west:
   print("Where the skies are blue")
}
// Prints "Watch out for penguins"




//-------------------------------------------------------------STRUCT & CLASS--------------------------------------------------------------------


struct Resolution {
   var width = 0
   var height = 0
}
 
class VideoMode {
   var resolution = Resolution()
   var interlaced = false
   var frameRate = 0.0
   var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
//Structure dan kelas di atas menggunakan syntax initializer untuk sebuah instance baru. Bentuk dari sintaksis penginisialisasi paling sederhana menggunakan nama tipe class atau structure yang diikuti tanda kurung kosong seperti Resolution() atau VideoMode(). Hal ini akan menciptakan sebuah instance baru dari kelas atau structure dengan semua properti yang diinisialisasi ke nilai default mereka.


//Memberwise Initializers for Structure Types
//Semua properti mempunyai generate memberwise initializer secara otomatis yang membuat Anda dapat menginisialisasi properti dari instance structure baru. Nilai awal untuk properti dari instance baru dapat diteruskan ke memberwise initializer menggunakan name:

//Berbeda dengan structure, pembuatan sebuah kelas tidak menerima memberwise initializer secara default.
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd



//Classe Are Reference Type
//Class juga merupakan reference type. Tidak seperti value type ya, reference type tidak menyalin ketika mereka sedang ditugaskan ke variabel atau konstanta atau ketika mereka diteruskan ke suatu function. Berikut adalah salah satu contoh ketika mendefinisikan kelas VideoMode:

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
//Contoh di atas mendeklarasikan sebuah konstanta baru dengan nama tenEighty dan menetapkanya untuk merujuk ke instance baru dari VideoMode. Mode video yang diberikan merupakan salinan dari resolusi HD 1920 x 1080 pixel, kemudian propertinya diubah seperti status interlaced nya menjadi true, frameRate menjadi 25.0 dan juga name berubah menjadi 1080i. Nah selanjutnya tenEighty ditugaskan ke konstanta baru yang disebut alsoTenEighty dan frameRate-nya diubah:

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
//Karena class merupakan reference type maka tenEighty dan alsoTenEighty merujuk ke instance VideoMode yang sama. Secara efektif mereka adalah dua nama yang berbeda untuk satu instance yang sama.



//Identity Operators
//Anda mungkin perlu menentukan apakah dua konstanta atau variabel yang merujuk ke instance kelas yang sama. Untuk mencapai hai itu, Swift menyediakan operator identity:

//Identical to (===)
//
//Not identical to (!==)
//
//Contoh seperti ini:

if tenEighty === alsoTenEighty {
   print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
// Prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."
//Perhatikan ya bahwa operator sama dengan (==) itu berbeda dengan operator identical to (===)
//
//Karena tenEighty merupakan kedua kelas tersebut merujuk pada instance class yang sama, maka pernyataan tenEighty === alsoTenEighty menghasilkan nilai true.



//-------------------------------------------------------------STRUCT & CLASS--------------------------------------------------------------------

//Lazy Stored Properties
//Lazy stored properties adalah properti yang nilai awalnya tidak dihitung sampai pertama kali digunakan. Anda dapat menunjukkan lazy stored properties dengan menulis lazy modifier sebelum deklarasi.
//
//Properti lazy berguna ketika nilai awal properti bergantung pada faktor luar yang nilainya tidak diketahui sampai inisialisasi instance selesai. Properti lazy juga berguna ketika nilai awal membutuhkan pengaturan yang rumit, atau mahal secara komputasional sehingga hal tersebut tidak boleh dilakukan sampai ia dibutuhkan.
//
//Contoh di bawah ini menggunakan properti lazy stored property untuk menghindari inisialisasi yang tidak diperlukan dari sebuah class yang kompleks. Contoh ini mendefinisikan dua class yang bernama DataImporter dan DataManager. Kedua class tersebut ditampilkan secara lengkap sebagai berikut:

class DataImporter {
   /*
   DataImporter adalah class untuk mengimpor data dari berkas eksternal.
   Class ini diasumsikan akan mengambil jumlah waktu yang tidak ditentukan untuk diinisialisasi.
   */
   var filename = "data.txt"
   // class DataImporter akan menyediakan fungsionalitas pengimporan data di sini
}
class DataManager {
   lazy var importer = DataImporter()
   var data = [String]()
   // class DataManager akan menyediakan fungsionalitas manajemen data di sini
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// instance DataImporter untuk properti importer belum dibuat




//-------------------------------------------------------------GETTER & SETTER--------------------------------------------------------------------
//Computed Properties
//Dari pada menyimpan sebuah nilai, computed properti menyediakan getter dan opsional setter yang secara tidak langsung akan mengambil dan mengatur properti dan nilai lainnya. Contohnya seperti ini:

struct Point {
  var x = 0.0, y = 0.0
}
 
struct Shape {
  var origin = Point()
  var center: Point {
    get {
      return Point(x: origin.x/2 , y: origin.y/2)
    }
    set(newCenter) {
      origin.x = newCenter.x/2
      origin.y = newCenter.y/2
    }
  }
}
//Structure shape menetapkan getter dan setter khusus untuk variabel yang dihitung yang disebut center. Properti center kemudian diakses melalui sintaks dot, yang menyebabkan getter untuk center dipanggil untuk mengambil nilai properti saat ini. Alih-alih mengembalikan nilai yang sudah ada, getter sebenarnya menghitung dan mengembalikan titik baru yang mewakili center shape.

struct Cuboid {
   var width = 0.0, height = 0.0, depth = 0.0
   var volume: Double {
       return width * height * depth
   }
}
 
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"




//-------------------------------------------------------------Property Observers WillSet DidSet--------------------------------------------------------------------
//Property observers mendeteksi dan merespons perubahan dalam nilai properti. Property observers dipanggil setiap kali nilai properti ditetapkan, bahkan jika nilai baru itu sama dengan nilai properti saat ini.
//
//Property observers dapat ditambahkan ke stored property yang ditentukan, dengan pengecualian untuk lazy stored property.
//
//Anda memiliki opsi untuk menentukan salah satu atau kedua observer properti berikut:
//
//willSet dipanggil tepat sebelum nilai disimpan.
//
//didSet dipanggil segera setelah nilai baru disimpan.
//
//Berikut ini adalah contohnya:
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
 
let stepCounter = StepCounter()
 
stepCounter.totalSteps = 50
// About to set totalSteps to 50
// Added 50 steps
 
stepCounter.totalSteps = 150
// About to set totalSteps to 150
// Added 100 steps
 
stepCounter.totalSteps = 420
// About to set totalSteps to 420
// Added 270 steps




//-------------------------------------------------------------Type Properties Static--------------------------------------------------------------------

//Type Properties
//Type properties berguna ketika Anda mendefinisikan nilai-nilai yang sifatnya universal untuk semua instance dari tipe tertentu, seperti properti konstan yang digunakan dalam semua instance, atau properti variabel yang menyimpan nilai global untuk semua instance dari tipe itu. Type properties yang disimpan dapat berupa variabel atau konstanta. Anda menentukan tipe properti dengan kata kunci static:

struct SomeStructure {
   static var storedTypeProperty = "Some value."
   static var computedTypeProperty: Int {
       return 1
   }
}
 
enum SomeEnumeration {
   static var storedTypeProperty = "Some value."
   static var computedTypeProperty: Int {
       return 6
   }
}
 
class SomeClass {
   static var storedTypeProperty = "Some value."
   static var computedTypeProperty: Int {
       return 27
   }
   class var overrideableComputedTypeProperty: Int {
       return 107
   }
}
//Type properties bisa dipanggil dan ditetapkan dengan sintaks dot, sama seperti properti instance. Namun, type properties dipanggil dan ditetapkan pada jenisnya, bukan pada instance dari tipe itu:

print(SomeStructure.storedTypeProperty)
// Prints "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)
// Prints "6"
print(SomeClass.computedTypeProperty)
// Prints "27"
//Catatan : Tidak seperti properti instance yang tersimpan, Anda harus selalu memberikan type properties yang tersimpan dengan nilai default. Hal ini dikarena type properties tidak memiliki initializer yang dapat menetapkan nilai sewaktu inisialisasi.




//-------------------------------------------------------------Self--------------------------------------------------------------------
//Dalam praktiknya Anda tidak perlu terlalu sering menuliskan self dalam kode Anda. Jika Anda tidak menuliskan self secara eksplisit maka Swift akan mengasumsikan bahwa Anda merujuknya ke properti atau method dari instance saat ini. Asumsi ini ditunjukkan dengan penggunaan count (bukan self.count) di dalam tiga metode yang dicontohkan untuk class Counter. Anda dapat menggunakan properti self untuk membedakan antara nama parameter dan nama properti. Di sini self akan memisahkan antara parameter metode yang dinamai x dan properti instance yang memiliki nama x juga:

struct Points {
   var x = 0.0, y = 0.0
   func isToTheRightOf(x: Double) -> Bool {
       return self.x > x
   }
}
 
let somePoint = Points(x: 4.0, y: 5.0)
 
if somePoint.isToTheRightOf(x: 1.0) {
   print("This point is to the right of the line where x == 1.0")
}
 
// Prints "This point is to the right of the line where x == 1.0"
//Catatan : Tanpa awalan self, Swift akan menganggap bahwa kedua penggunaan x mengacu pada parameter method yang disebut x.






//-------------------------------------------------------------Final--------------------------------------------------------------------
//Catatan : Anda bisa mencegah method, property, atau subscript menimpa dengan menandainya sebagai final (seperti final var, final func, final class func, dan final subscript).
//
//Anda dapat menandai seluruh kelas sebagai final dengan menempatkan final modifier sebelum kata kunci class dalam definisinya (final class).



//-------------------------------------------------------------INIT / Constructor--------------------------------------------------------------------

class Size {
    var width:Double, height:Double
    init(w:Double, h:Double) {
         width = w
         height = h
    }
}
 
let twoByTwo = Size(w: 2.0, h: 2.0)



protocol SomeProtocol {
   var mustBeSettable: Int { get set }
   var doesNotNeedToBeSettable: Int { get }
}


//-------------------------------------------------------------PROTOCOL--------------------------------------------------------------------

protocol FullyNamed {
   var fullName: String { get }
}
//Protocol FullyNamed membutuhkan tipe yang sesuai untuk memberikan nama yang memenuhi syarat. Protocol menyatakan bahwa semua jenis FullyNamed harus memiliki properti instance gettable yang disebut fullName, yang bertipe String. Berikut ini contoh struct sederhana yang mengadopsi dan mematuhi protocol FullyNamed:

struct Person: FullyNamed {
   var fullName: String
}
let john = Person(fullName: "John Appleseed")
// john.fullName is "John Appleseed"

class Starship: FullyNamed {
   var prefix: String?
   var name: String
   init(name: String, prefix: String? = nil) {
       self.name = name
       self.prefix = prefix
   }
   var fullName: String {
       return (prefix != nil ? prefix! + " " : "") + name
   }
}
var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
// ncc1701.fullName is "USS Enterprise"


protocol RandomNumberGenerator {
   func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
   var lastRandom = 42.0
   let m = 139968.0
   let a = 3877.0
   let c = 29573.0
   func random() -> Double {
       lastRandom = ((lastRandom * a + c)
           .truncatingRemainder(dividingBy:m))
       return lastRandom / m
   }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"



//-------------------------------------------------------------EXTENSION--------------------------------------------------------------------
extension Double {
   var km: Double { return self * 1_000.0 }
   var m: Double { return self }
   var cm: Double { return self / 100.0 }
   var mm: Double { return self / 1_000.0 }
   var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

//Methods
//Ekstensi juga dapat digunakan untuk menambahkan instance method baru dan type method ke jenis yang ada. Contoh berikut menambahkan metode instance baru yang disebut repetitions ke tipe Int:

extension Int {
   func repetitions(task: () -> Void) {
       for _ in 0..<self {
           task()
       }
   }
}
//Metode repetitions(task :) mengambil argumen tipe tunggal () -> Void, yang menunjukkan function yang tidak memiliki parameter dan tidak mengembalikan nilai. Setelah menentukan extension ini, Anda dapat memanggil method repetitions(task :) pada bilangan bulat apa pun untuk melakukan tugas yang berkali-kali:

4.repetitions {
   print("Hello!")
}
// Hello!
// Hello!
// Hello!
// Hello!

