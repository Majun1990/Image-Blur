class Image
  attr_accessor :row

  def initializa
    @row = []
  end

  def output_image
    @row = [
    [0,0,0,0].join,
    [0,1,0,0].join,
    [0,0,0,1].join,
    [0,0,0,0].join
    ]
    @row.each {|cell| puts cell}

    end    
  end
    
image = Image.new
image.output_image
  


