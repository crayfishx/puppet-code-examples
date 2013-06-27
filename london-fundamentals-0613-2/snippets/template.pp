class testtemplate {
  $myname='Craig'
  $likes=['travelling', 'cooking', 'puppet']
  
  $contents=template('/tmp/code/snippets/template.erb')
  
  notify { $contents: }
  
  
  
}
