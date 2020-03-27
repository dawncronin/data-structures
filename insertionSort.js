function insertionSort(arr) {
    let i = 0

    while (i< arr.length) {
        let j = i + 1
        while (j >= 0){
            if (arr[j] < arr[j-1]) {
                let save = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = save
                j--
            }
            else {
                j = -1
            }

        }
        i++
    }
    return arr
}

console.log(insertionSort([4,3,6,7,1,2,8]))