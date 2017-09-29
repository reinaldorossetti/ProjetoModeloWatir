Before do |feature|

end

After do |feature|
  puts feature.name
end

Before do |scenario|
  $tag_cenario = scenario.source_tag_names
  $cenario_nome = scenario.name
  $step_name_index = 0
  $passos = scenario.test_steps.map(&:name)
  $passos.delete('AfterStep hook')
end

AfterStep do |step|
  if $encoded_img != nil
    embed("data:image/gif;base64,#{$encoded_img}", 'image/gif')
    $encoded_img.clear
  end
  $encoded_img = nil
end


After do |scenario|
  if scenario.failed?
    sleep 1
    if $browser != nil
      obter_evidencia
      embed("data:image/png;base64,#{$encoded_img}", 'image/png')
    else
      obter_evidencia_desktop
      embed("data:image/png;base64,#{$encoded_img}", 'image/png')
    end

    $step_name = $passos[$step_name_index]
    $status_run = 'Failed'
  else
    $status_run = 'Passed'
  end
end
