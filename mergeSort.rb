def mergeSort(arr)
    n = arr.length

    if n < 2
        return
    end
    mid =  n/2
    left = []
    right = []
    i = 0
    while i < mid do
        left[i] = arr[i]
        i += 1
    end
    i = mid
    while i < n do
        right[i] = arr[i]
    end

    mergeSort(right)
    mergeSort(left)
    merge(left, right, a)


end