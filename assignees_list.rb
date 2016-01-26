
def assignees_list(assignees)
  organized_assignees = []
  types = [ 'Section', 'Student', 'Group' ]

  types.each do |type|
    types_list = organize_by_type(assignees, type)
    organized_assignees << types_list if types_list.size > 0
  end

  organized_assignees.sort!
  organized_assignees.to_sentence
end

def organize_by_type(assignees, type)
  grouped_type = assignees_by_type(assignees, type)

  if grouped_type.size > 1
    # turn into an array of the specific type, e.g. ["1", "2", "3"]
    grouped_type_list = remove_word_from_array_items(grouped_type, type)

    # pluralize the type and make a list of the specific type
    "#{type}s #{grouped_type_list.to_sentence}"
  else
    grouped_type.to_sentence
  end
end

def remove_word_from_array_items(an_array, word)
  an_array.map { |item| item.sub(word, '').strip }
end

def assignees_by_type(assignees, type)
  assignees.select { |a| a.include? type }
           .sort
end

# def word_repetition_count(an_array, word)
#   words_and_count = an_array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
#   words_and_count[word]
# end