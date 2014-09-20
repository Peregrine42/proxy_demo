require_relative './shared_image_spec'
require_relative '../../virtual_proxy_demo.rb'

describe Image do
  it_behaves_like "a browser item"

  it "has a show method" do
    image = described_class.new('/tmp/cat.jpg')
    expect(image.show).to eq "image data"
  end
end
