def quickSort(arr)
    def partition(a, start, last)
        pivot = last
        pointer = last-1
        while pointer >= start do
            p a
            if a[pointer] > a[pivot]
                store = a[pivot]
                a[pivot] = a[pointer]
                a[pointer] = store
            end
            pointer -= 1
        end
        return pivot
    end

    def sort(a, start, last)
        if start >= last
            return
        end
        part = partition(a, start, last)
        sort(a, start, part - 1)
        sort(a, part + 1, last) 
        return a
    end
    sort(arr, 0, arr.length - 1)
end

p quickSort([3,4,7,8,1,2, 9, 5, 11,6])