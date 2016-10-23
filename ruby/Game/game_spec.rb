require_relative 'game'

describe Game do
	let(:new_game) { Game.new("hello")}

	it "sets up game correctly on initialization" do
		expect(new_game.guess_limit).to eq 10
		expect(new_game.feedback).to eq [["h", false], ["e", false], ["l", false], ["l", false], ["o", false]]
	end
	it "Checks if guess is equal to target" do
		expect(new_game.check_word("hello")).to eq true
	end
	it "Checks if guess is within target" do
		expect(new_game.check_within("el")).to eq true
	end
	it "Updates feedback hash if letters within match guess" do
		new_game.update_feedback("el")
		expect(new_game.feedback).to include ["h", false], ["e", true], ["l", true]
	end
	it "Prints feedback hash" do
		new_game.update_feedback("el")
		expect(new_game.print_feedback).to eq "_ e l l _"
	end

end