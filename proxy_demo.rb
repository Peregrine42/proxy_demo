class Image

  def initialize path
    @data = retrieve_image(path)
    @path = path
  end

  def path
    @path
  end


  def retrieve_image path
    sleep 5
    "image data"
  end

  def show
    @data
  end

end

class ImageProxy

  def initialize path
    @path = path
  end

  def path
    @path
  end

  def show
    Image.new(@path).show
  end

  def filename
    @path.split('/')[-1]
  end

end

class Client

  def initialize images
    @images = images
  end

  def ls
    (["Available Images:"] << @images.map {|i| i.filename }).join("\n")
  end

  def show id
    @images[id].show
  end

end
