class Link

  def initialize
    @link
  end

  def self.create
    @link = Link.new
  end

  def self.all
    ['google.com','example.com','dailymail.com']
  end


end
