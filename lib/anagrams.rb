class String
  define_method (:anagram) do |word|
    test_words = self # "god good"
    test_words = test_words.split(" ") # [god, good]
    alph_target_word = word.chars.sort.join # "dgo"
    alph_array = []
    test_words.each do |teste|
      teste = teste.chars.sort.join # 0: "dgo" 1: "dgoo"
      alph_array.push(teste) # [dgo, dgoo]
    end
    true_array = []
    false_array = []
    counter = 0
    alph_array.each do |teste|
      if teste == alph_target_word # [dgo] == "dgo"
        true_array.push(test_words[counter])
        counter += 1
      else
        false_array.push(test_words[counter])
        counter += 1
      end
    end
    results = []
    results.push(true_array.join(" "))
    results.push(false_array.join(" "))
    return results
  end
end
