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
