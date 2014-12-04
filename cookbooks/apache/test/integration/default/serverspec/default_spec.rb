require 'serverspec'
set :backend, :exec

describe 'apache' do

	it "is awesome" do
		expect(true).to eq true
	end

	it "is installed" do
	  expect( package "httpd").to be_installed
	end

	describe host('http://127.0.0.1') do
	  it { should be_resolvable }
	end

	it "is responding to http request"

	it "is displaying the proper home page"

	it "is running on the default port"
end
