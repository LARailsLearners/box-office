
describe 'Root path' do
  before { visit '/' }
  specify { expect(page).to have_content 'Hello world!' }
end
