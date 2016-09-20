FactoryGirl.define do
  factory(:question) do
    prompt('Knit the sock monkey or nah?')
    option1('Yas')
    option2('Nah')
  end
end
