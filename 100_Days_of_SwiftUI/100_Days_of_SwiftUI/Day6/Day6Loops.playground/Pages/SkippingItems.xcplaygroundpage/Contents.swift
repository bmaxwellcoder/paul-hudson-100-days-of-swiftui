for i in 1...100 {
    if 100.isMultiple(of: i) {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}
