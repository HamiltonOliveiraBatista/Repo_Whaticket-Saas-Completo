 Color_Off='\033[0m'        Red='\033[0;31m'          Green='\033[0;32m'         print_centered() { local input="$1" local color="$2" local term_width=$(tput cols) local text_width=$  local stripped_input=$(echo -e "$input" | sed 's/\x1b\[[0-9;]*m//g') local stripped_width=$  local pad_width=$(( (term_width - stripped_width) / 2 )) local padding=$(printf '%*s' "$pad_width")  echo -e "${padding}${color}${input}${Color_Off}" }   print_banner() { clear  while IFS= read -r line; do print_centered "$line" "$Red" done <<< "$BANNER_ART"  print_centered "Automatiza AI" "$Green" print_centered "Compartilhar, vender ou fornecer essa solução" "$Green" print_centered "sem autorização é crime previsto no artigo 184" "$Green" print_centered "do código penal que descreve a conduta criminosa" "$Green" print_centered "de infringir os direitos autorais da Automatiza AI." "$Green" print_centered "PIRATEAR ESSA SOLUÇÃO É CRIME." "$Green" print_centered "© Automatiza AI" "$Green"  echo -e "$Color_Off" }  
