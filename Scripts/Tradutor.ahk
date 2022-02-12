;Este e um programa para traduzir um texto
^q:: ;basta selecionar a área que você quer que seja traduzida, e apertar "CTRL" + "q"
Send, ^c
Run, https://translate.google.com.br/?hl=pt-BR&sl=auto&tl=pt&op=translate
Sleep, 2500 ;o codigo pode dar erro dependendo do tempo em que o computador levara para abrir o site. Basta aumentar o tempo de espera ;)
Send, ^v
return
;pronto, o seu texto selecionado foi traduzido para portugues!