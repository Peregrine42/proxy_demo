shared_examples_for "a browser item" do
  it "has a path" do
    image = described_class.new('/tmp/cat.jpg')
    expect(image.path).to eq '/tmp/cat.jpg'
  end
end
