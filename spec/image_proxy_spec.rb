require 'shared_image_spec'
require_relative '../proxy_demo.rb'

describe ImageProxy do
  it_behaves_like "a browser item"

  it "has a show method" do
    image = ImageProxy.new('/tmp/cat.jpg') { double(:image, show: "image data") }
    expect(image.show).to eq "image data"
  end
end
