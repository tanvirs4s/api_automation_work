class FactoryHelper
  def self.email
    "#{(0...36).map{ |i| i.to_s 36}[0..20].join+ Time.now.to_i.to_s}@gmail.com"
  end

  def self.token
    "99f98828-92e3-4871-8375-de33dd828bf4"
  end
end