import UIKit

var ages = [21, 42, 54, 23, 75, 97]
var array: [Int] = []

ages.append(34)
print(ages)

var agesSet = Set(ages)
agesSet.contains(42)
