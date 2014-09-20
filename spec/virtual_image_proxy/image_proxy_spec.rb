require_relative './shared_image_spec'
require_relative '../../virtual_proxy_demo.rb'

describe ImageProxy do
  it_behaves_like "a browser item"

  it "proxies unknown methods to its subject" do
    image = ImageProxy.new("/tmp/image_1") { double(:image, foo_method: "return value") }
    expect(image.foo_method).to eq "return value"
  end
end
