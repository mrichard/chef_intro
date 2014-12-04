require 'serverspec'
set :backend, :exec

describe 'apache' do

	it "is awesome" do
		expect(true).to eq true
	end

	it "is installed" do
	  expect( package "httpd").to be_installed
	end

	describe host('127.0.0.1') do
	  it { should be_resolvable }
	end

	it "is responding to http request" do
		expect( command("curl http://localhost").exit_status ).to eq 0
	end

	it "is displaying the proper home page" do
		expect( command("curl http://localhost").stdout ).to match /hello/i
	end

  describe port(80) do
    it { should be_listening }
  end

end
