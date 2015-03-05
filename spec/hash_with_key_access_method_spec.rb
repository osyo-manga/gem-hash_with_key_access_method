# load './spec_helper.rb'
require 'spec_helper'

using HashWithKeyAccessMethod
describe HashWithKeyAccessMethod do
	it 'has a version number' do
		expect(HashWithKeyAccessMethod::VERSION).not_to be nil
	end

	hash = { name: :mami, "name" => :mado, "name2" => :homu }
	it 'Symbol key access' do
		expect(hash.name).to eq(:mami)
	end

	it 'String key access' do
		expect{ hash.name2 }.to raise_error(NoMethodError)
	end

	it 'Assign' do
		hash.name = :saya
		expect(hash.name).to eq(:saya)
	end

	it 'Assign new key' do
		hash.age = 13
		expect(hash.age).to eq(13)
	end
end
