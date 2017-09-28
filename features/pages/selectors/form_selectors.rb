
class SelectorsFormResponse
  include Tapestry

  div(:result_end, css: '.ss-resp-message')

end

class FormSelectors
  include Tapestry

  text_field(:text, id: "entry_1000000")
  select_list(:combobox, id: "entry_1000001")
  radio(:test_radio, value: 'A programming language')
  radio(:test_radio_gem, value: 'A gem')
  checkbox(:versions, :id => "group_1000004_1")
  button(:submit, name: 'submit')
end