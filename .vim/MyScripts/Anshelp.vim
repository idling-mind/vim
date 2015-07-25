function! AnsysHelp()
    :%s/</\r</g
    :%s/>/>\r/g
    :g/<.*>/d
    :g/^\s*$/d
    :%s/\n\s*,\s*\n/,/g
    3G
    :3,4w! >> ~/Scripts/AnsysCommandList.inp
    :bd!
endfunction
