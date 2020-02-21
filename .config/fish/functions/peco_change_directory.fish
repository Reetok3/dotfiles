function peco_change_directory
  cd (ruby -e "lists = `ghq list`.split(\"\n\");lists.each_with_index{ |x,i| lists[i] = \"#{`echo $HOME`.gsub(/\n/,\"\")}/.ghq/\"+x };lists.push(`echo $HOME`.gsub(/\n/,\"\")+\"/\");puts lists.join(\"\n\")"|peco)
  return 0
end
