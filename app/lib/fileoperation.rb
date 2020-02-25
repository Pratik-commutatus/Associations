class Fileoperation

def self.make(c)
    File.write("/home/pratik/associations/app/fileoperationspractice/test.txt", c)
    File.read("app/fileoperationspractice/test.txt")
    
end

end