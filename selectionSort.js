function selectionSort(arr) {
    let i = 0
    let j = 0
    while (i < arr.length -1) {
        j = i
        let min = Infinity
        let minIndex = -1
        while (j < arr.length) {
            if (arr[j] < min ){
                min = arr[j]
                minIndex = j
            }
            j++
        }
        let save = arr[i]
        arr[i] = min
        arr[minIndex] = save
        i ++
    }
    return arr
}

console.log(selectionSort([3,6,2,7,1,4]))