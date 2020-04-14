def price(arr)
    return "At least 2 values." if arr.size < 2
    res = [arr[0], 0]
    i = 0
    value = 0
    lowest = arr[0]
    while arr[i]
        if arr[i] < res[0]
            res[0] = i 
            lowest = arr[i]
        end
        j = i + 1
        while arr[j]
        if arr[j] - lowest > value
            res[1] = j 
            value = arr[j] - lowest
        end
            j+=1
        end
        i += i + 1
    end
    return res
end