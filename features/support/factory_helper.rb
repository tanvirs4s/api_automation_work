class FactoryHelper
  def self.email
    "#{(0...36).map{ |i| i.to_s 36}[0..20].join+ Time.now.to_i.to_s}@gmail.com"
  end
  def self.token
    "8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717"
  end
end