AfterStep do |step|
  if $encoded_img != nil
    embed("data:image/gif;base64,#{$encoded_img}", 'image/gif')
    $encoded_img.clear
  end
  $encoded_img = nil
end