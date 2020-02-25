class Fileoperation

def self.make(c)
    File.write("app/fileoperationspractice/test.txt", c)
    File.read("app/fileoperationspractice/test.txt")
    
end

end