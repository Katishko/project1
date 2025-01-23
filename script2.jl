# Сумма

# Объявление функции
function mysum(x)
    s = 0
    for e in x
        s += e
    end
    s
end

## Вызов функции
#y = [1,2,3]
#s = mysum(y)
#println(s)

# Сравнение времени выполнения mysum и встроенной функции sum
x = rand(10^5)
@time mysum(x) # пре-компиляция (при первом вызове функции)
@time sum(x) # пре-компиляция

@time mysum(x)
@time sum(x)

using BenchmarkTools
@btime mysum(x)
@btime sum(x)

# Упр. 2
# a = [1,2,3]
# b = [4,5,6]
# x = [1,4,2,5,3,6]

function myfunc2(a, b)
    @assert length(a) == length(b)

    x = []
    n = length(a)
    for i in 1:n
        push!(x, a[i])
        push!(x, b[i])
    end
    x
end

a = [1,2,3]
b = [4,5,6]
x = myfunc2(a, b)
println(x)

# вариант с ошибкой
a = [1,2,3,8]
x = myfunc2(a, b)
println(x)


