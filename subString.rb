dictionary =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def subStrings(string, dictionary)

  arr = {}
  stringArr = string.split(" ")

  dictionary.map { |word| 

    for i in 0..stringArr.length

      if (stringArr[i].to_s.include? word) && arr[word]
        arr[word] += 1
      end

      if (stringArr[i].to_s.include? word) && !arr[word]
        arr[word] = 1
      end 

    end
  }

  print arr

end

 p subStrings("Howdy partner, sit down! How's it going?", dictionary)