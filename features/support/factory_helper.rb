class FactoryHelper
  def self.email
    "#{(0...36).map{ |i| i.to_s 36}[0..20].join+ Time.now.to_i.to_s}@gmail.com"
  end
  def self.token
    "1099f6ffe52964c43bfe73b7adfb296970d69644"
  end
end