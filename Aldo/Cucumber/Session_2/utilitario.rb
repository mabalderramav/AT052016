`gem list`.split(/$/).each { |line|
 puts `gem uninstall -Iax #{line.split(' ')[0]}` unless line.empty? 
}