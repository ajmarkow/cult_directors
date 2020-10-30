require "swagger_helper"
describe "Directors API" do
  path "/director" do
    post "Adds a director to database" do
      consumes "application/json", "application/xml"
      parameter name: :director, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: String },
          birthday: { type: Date },
          summary: { type: String },
          movies: { type: Array },
        },
        required: ["name", "birthday", "summary"],
      }

      response "200", "Director Sucessfully Added" do
        let (:director) { { name: "Stanley Kubrick", birthday: "1928-07-26", summary: "American director best known for directing 2001: A Space Odyssey" } }
        run_test!
      end

      response "400", "Invalid Request" do
        let(:director) { { name: "Stanley Kubrick" } }
        run_test!
      end
    end
  end
end
