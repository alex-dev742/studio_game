def say_hello(name:, health: 100)
    "I'm #{name.capitalize} with a health of #{health}"
end

puts say_hello(name: "finn", health: 60)
puts say_hello(name: "lucy", health: 90)
puts say_hello(name: "jase")
puts say_hello(health: 125, name: "alex")