require 'spec_helper'

describe 'Hash basics' do
  let(:person) { person_data }
  let(:___) { nil }

  describe 'accessing first leve information' do
    # Replace ___ with the code that will get this passing
    it "gets the first name" do
      name = person_data["first_name"]
      expect( name ).to be == "Bjorn"
    end

    it "gets the last name" do
      name = person_data["last_name"]
      expect( name ).to be == "Borg"
    end

    it "gets the favorite sport" do
      sport = person_data["favorite_sport"]
      expect( sport ).to be == "tennis"
    end
  end

  describe "working with person data" do
    it "we can greet our person" do
      greeting =  "Hello, nice to meet you " + person_data["first_name"] + " " + person_data["last_name"] + "."
      greeting
      expect( greeting ).to be == "Hello, nice to meet you Bjorn Borg."
    end

    it "repackages address data" do


    def p_address(x)
      person_data["address"][x]
      # person_data[x].map do |value|
        # value
        # value.each_with_index do |i, outer_index|
        #   value.each_with_index do |j, inner_index|
        #     new_array.push([outer_index, inner_index]) if inner_index == "1"
        #   end
        # end
      # end
    end

    address = "#{p_address("street")}, #{p_address("city")}, #{p_address("state")}, #{p_address("zip_code").to_s}"



      expect( address ).to be == "444 Borg Lane, San Francisco, CA, 94104"
    end

    it "makes a formatted string describing our person's favorite foods" do
      favorite_foods = "Bjorn's favorite foods are " + "#{person_data["favorite_foods"][0]}" + ", " + "#{person_data["favorite_foods"][1]}" + ", and " + "#{person_data["favorite_foods"][2]}" + "."
      expect( favorite_foods ).to be == "Bjorn's favorite foods are sushi, hamburgers, and mexican food."
    end
  end

  describe "adding data to the hash" do
    # Don't edit the support files containing person_data.
    # Look up in Ruby docs how to add to a hash, and make the changes stick!

    it "adds nickname information" do
      person.merge!(:nick_name => "BJ")
      expect( person[:nick_name] ).to be == 'BJ'
    end

    it "adds information about tournament wins" do
      person.merge!(:tournament_wins => {
        wimbeldon: ["1976", "1977", "1978", "1979", "1980"]})
      expect( person[:tournament_wins] ).to be == {
        wimbeldon: ["1976", "1977", "1978", "1979", "1980"]
      }
    end

    it "formats details about years person was active" do
      person.merge!(:tournament_wins => {
        wimbeldon: ["1976", "1977", "1978", "1979", "1980"]})
      years_active = "Years active: " + "#{person[:tournament_wins][:wimbeldon][0]}" + "-" + "#{person[:tournament_wins][:wimbeldon][-1]}"
      expect( years_active ).to be == "Years active: 1976-1980"
    end
  end
end
