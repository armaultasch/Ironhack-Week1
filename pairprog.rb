array_of_languages = []


class ProgrammingLanguage
 attr_accessor :name, :age, :type
 def initialize(name, age, type)
   @name = name
   @age = age
   @type = type
 end
end




def array_printer(array)
   array.each do | language |
     puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
   end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages.push(ruby)
array_of_languages.push(python)
array_of_languages.push(javascript)
array_of_languages.push(go)
array_of_languages.push(rust)
array_of_languages.push(swift)
array_of_languages.push(java)

#aged_languages = array_of_languages.map do |language|
    #language.age = language.age+1
    #language
#end

aged_languages = array_of_languages.map{|ol| 
    ProgrammingLanguage.new(ol.name, ol.age+1, ol.type)
}

#sorted_age = aged_languages.sort_by! {|il| -il.age}
sorted_age = aged_languages.sort_by! {|il| il.age}

pop_age = sorted_age.pop(1)

no_java = sorted_age.delete_if{ |language| language.name === "Java"}

fuck_sort = sorted_age.shuffle

excalm = array_of_languages.map { | language | ProgrammingLanguage.new(language.name += "!!!", language.age, language.type)}
puts "The programming languages sorted by age are:"

# array_printer(array_of_languages)
# array_printer(aged_languages)
# array_printer(sorted_age)
#array_printer(no_java)
array_printer(excalm)