import Foundation

extension Int {
    var formatNumber: String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.numberStyle = .ordinal
        
        guard self >= 1 && self <= 10 else {
            return "\(formatter.string(from: NSNumber(value: self)) ?? "")-й"
        }
        
        let ordinalNumbers = [
            "Первый", "Второй", "Третий", "Четвёртый", "Пятый",
            "Шестой", "Седьмой", "Восьмой", "Девятый", "Десятый"
        ]
        
        return ordinalNumbers[self - 1]
    }
}

