class FactoryHelper
  def self.email
    "#{(0...36).map{ |i| i.to_s 36}[0..20].join+ Time.now.to_i.to_s}@gmail.com"
  end
end