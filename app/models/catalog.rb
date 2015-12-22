class Catalog

  attr_accessor :id, :first_name, :last_name, :capstone_name, :capstone_desc, :capstone_url, :capstone_screen

  def initialize(hash)
    @id=hash["id"]
    @first_name=hash["first_name"]
    @last_name=hash["last_name"]
    @capstone_name=hash["capstone"]["name"]
    @capstone_desc=hash["capstone"]["description"]
    @capstone_url=hash["capstone"]["url"] 
    @capstone_screen=hash["capstone"]["screen_shot"]
  end

  def self.find(id)
    Catalog.new(Unirest.get("http://localhost:3000/students/#{id}").body)
  end

  def self.all
    catalogs=[]
    json_array = Unirest.get("http://localhost:3000/students.json").body
    json_array.each do |json_elem|
      catalogs<<Catalog.new(json_elem)
    end
    catalogs
  end

end