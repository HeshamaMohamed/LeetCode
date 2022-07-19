# @param {String} command
# @return {String}
def interpret(command)
   command.gsub(/\([al]*\)/, '()' => 'o', '(al)' => 'al')
end