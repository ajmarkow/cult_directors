require "rails_helper"

RSpec.describe Director, type: :model do
  it("stores info like name, birthdate, and a director summary") do
    newdirector = Director.new({ :name => "Stanley Kubrick", :birthday => "1928-07-26", :summary => "Great American Director" })
    expect(newdirector.name()).to(eq("Stanley Kubrick"))
  end
end
