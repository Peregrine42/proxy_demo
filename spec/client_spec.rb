require_relative '../proxy_demo.rb'

describe Client do
  it 'shows a list of images' do
    images = (1..4).to_a.map { |number| ImageProxy.new("/tmp/image_#{number}") }
    client = Client.new(images)
    expect(client.ls).to eq 'Available Images:\nimage_1\nimage_2\nimage_3\nimage_4'
  end

  it 'renders a chosen image to the page' do
    images = (1..4).to_a.map { |number| ImageProxy.new("/tmp/image_#{number}") }
    client = Client.new(images)
    expect(client.show(1)).to eq 'image data'
  end
end
