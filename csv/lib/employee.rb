require 'csv'

class Employee
  def data
    data = get_csv_content
    data = sort_by_designation(data)
    data = group_by_designation(data)
    data = write_to_file(data)
  end

  def get_csv_content
    csv_data = CSV.read("../lib/employee.csv", headers: true)
    cont = csv_data.to_a[1..-1]
  end

  def sort_by_designation(data)
    data.sort_by! { |row| row[2] }
  end

  def group_by_designation(data)
    hash = Hash.new { |hash, key| hash[key] = []  }
    data.each do |content| 
      hash[content[2]] << content[0..1]
    end
    hash = hash.each do |value1, value2|
      value2.sort_by! { |row| row[1] }
    end
  end

  def write_to_file(data)
    file = File.open("../lib/output", "w") do |file|
      data.each do |value1, value2|
        file.puts (value2.length > 1) ? "#{value1}s" : "#{value1}"        
        value2.each do |value|
          file.puts "#{value[0]} (EmpId: #{value[1]})"
        end
        file.puts
      end  
    end    
  end
end