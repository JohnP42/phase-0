# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"  ][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.collect! do |i|
  if i.is_a?(Array) 
    i.collect! { |n| n += 5 }
  else 
    i += 5
  end
end
p number_array


# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.collect! do |i|
  if i.is_a?(Array)
    i.collect! do |e| 
      if e.is_a?(Array)
        e.collect! { |z| z += "ly" }
      else
        e += "ly"
      end
    end
  else
    i += "ly"
  end
end
p startup_names

#What are some general rules you can apply to nested arrays?
# => Use multiple indexes like, array[x][y][z]

#What are some ways you can iterate over nested arrays?
# => Nested if statements or nested loops.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => No, we were familiar with all methods we used.