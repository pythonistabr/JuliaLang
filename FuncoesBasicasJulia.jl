+x	unary plus	the identity operation
-x	unary minus	maps values to their additive inverses
x + y	binary plus	performs addition
x - y	binary minus	performs subtraction
x * y	times	performs multiplication
x / y	divide	performs division
x ÷ y	integer divide	x / y, truncated to an integer
x \ y	inverse divide	equivalent to y / x
x ^ y	power	raises x to the yth power
x % y	remainder	equivalent to rem(x,y)

#strings in julia
my_name = "gustavo";
your_name = "jane";

#type of the variable
typeof(my_name)

#printing string variables in julia
println("$my_name is my name and your name is $your_name")

s1 = "Im am a string.";
s2 = " And I am a string too.";

println("$s1 $s2")#printing

name = "jane";
num_fingers = 10;
num_toes = 10;

println("Hello, my name is $name")

println("I have $num_fingers fingers and $num_toes toes. That's $(num_fingers + num_toes) digits at all!")

string(" how many cats, are too many cats?")

string("I don't now, but ",10," are too few cats!")

s3 = "How many cats";
s4 = " are too many cats?";

# concatenation with *
s3*s4

# concatenation with another form
"$s3$s4"

#exp 1
PhoneBook = Dict("jenny"=>"867-539", "GhostBusters"=>"555-2368")

#add a new key to the dictionary
PhoneBook["krammer"] = "123-456";

PhoneBook

# deleting dictionaries keys
pop!(PhoneBook,"krammer")

my_favorite_animals = ("penguins", "cats", "dogs")

array1 = ["gustavo", "pele","messi", "ronaldinho"]

fibonacci = [1, 1, 2, 3, 5, 8, 13]

# indexing arrays
fibonacci[4]

# we can insert a new element in the array using the function push!
# exp: push!(array_name, value)
push!(array1, "maradona")

# we can delete a new element in the array using the function pop!
# pop!(array_name, value)

pop!(array1)

array1

array3D = rand(4, 2, 3)# 3D array

counter = 0;

while counter<=10
    println(counter)
    counter += 1;
end

for iterator in 1:5
    println(iterator)
end


    


my_friends = ["Ronaldo", "Ronaldinho", "Kaka", "Rivaldo"]

for friend in my_friends
    println("Olá $friend")
end


m, n = 4, 4;
A = zeros(4, 4);

#jeito 1
for i in 1:m
    for j in 1:n
        A[i, j] = i+j;
    end
end

A      

# jeito 2
B = zeros(4,4)
for i in 1:m, j in 1:n
    B[i, j] = i+j;
end
B

#jeito 3

C = [i + j for i in 1:3, j in 1:3]
C

x, y = 3, 3;

if x == y
    println("$x is equal to $y")
elseif x > y
    println("$x is greater than $y")
else 
    println("$x is smaller than $y")
end

function say_hi(name);
    println("Hi $name, how are you?");
return
end

#using the function
say_hi("gustavo")

#Exp2
function fSquare(x)
    y = x^.5
return y
end

fSquare(2)

#vector v
v = [1, 2, 3, 4, 5]

# apply function in vectores
f_square.(v)

values = zeros(100,1);


for idx in 1:length(values)
    if idx <=2
        values[idx] = 1;
    else
        values[idx] = values[idx-2] + values[idx-1]
    end
end

println(values);

#using PyCall to call python libs

using PyCall;

np = pyimport("numpy");
plt = pyimport("matplotlib.pyplot");

#ploting figures with matplotlib

fig, ax = plt.subplots();
ax.plot(values);
plt.show()


using Plots;

x = 0:pi/20:2*pi;
y = sin.(x);
y2 = cos.(x);
plot(x, y, label="y = sin(x)")
plot!(x, y2, label="y = cos(x)")#plot sobre plot

?plot()

using LinearAlgebra

A = rand(3,3)

l, u, p = lu(A)

A = rand(3,3);
B = ones(3,3);
Z = A.*B;

A = rand(2,2)

# valores de A que são maiores que 0.5
idx = findall(x->x>.5, A);


# valores de A que são maiores que 0.5 serão Inf.
A[idx] .= Inf;




