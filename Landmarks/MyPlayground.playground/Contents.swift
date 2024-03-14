import UIKit

enum KeyError: Error{
    case uniqueError
    case lengthError
}

func keyMaker(_ key1:String, _ key2:String)throws -> String{
    guard key1 != key2 else{
        throw KeyError.uniqueError
    }
    guard (5...10).contains(key1.count) && (5...10).contains(key2.count) else{
        throw KeyError.lengthError
    }
    let result = (key1+key2).shuffled()
    return String(result)
}

func testKeyMake(_ key1:String, _ key2:String){
    do{
        let result = try keyMaker(key1, key2)
        print(result)
    }catch KeyError.uniqueError{
        print("uniqueError")
    }catch KeyError.lengthError{
        print("lengthError")
    }catch{
        print("Error")
    }
}

testKeyMake("taig", "yamazato")
//testKeyMake("dekachin", "zyuroku")


