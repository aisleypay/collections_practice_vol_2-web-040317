require "pry"

def begins_with_r (array)
  array.each { |tool|

    if tool.start_with?("r") == false
      return false
    end
  }

  true
end

def contain_a (array)
  result = []
  array.each { |el|
    if el.include?("a")
      result << el
    end
  }

  result
end

def first_wa (array)
  array.find { |el|
    next if el.class != String
    el.start_with?("wa")
  }
end

def remove_non_strings (array)
  array.delete_if { |el|
    el.class != String
  }
end

def count_elements (array)
  result = []
  names = []
  array.each do |name_hash|
    name = name_hash[:name]
    count = array.count(name_hash)


    if names.include?(name)
    else
      names.push(name)
      result.push({name: name, count: count})
    end
  end

  result
end

def merge_data(keys, data)
  result = []
  # [{}, {}]

  data.each do |person_hash|

    person_hash.each do |person_name, info|
      result.push(info)
    end
  end

  keys.each_with_index do |name_hash, index|

    name_hash.each do |name_key, name_val|
      result[index][name_key] = name_val
    end
  end

  result
end

def find_cool (array)
  result = []
   array.each do |hash|

     hash.each do |key, value|
       if value == "cool"
         result.push(hash)
       end

     end
   end
   
   result
end

def organize_schools (schools)
  organized_schools = {}

  schools.each do |school_name, location|

    location.each do |loc_key, loc_val|

      if organized_schools[loc_val] == nil
        organized_schools[loc_val] = [school_name]
      else
        organized_schools[loc_val] << school_name
      end

    end
  end

  organized_schools
end
