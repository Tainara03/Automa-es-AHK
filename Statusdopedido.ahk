;ooi galera, beleza?
;fiz essa pequena mágica para me ajudar no trabalho
;como lá na empresa a demanda é alta, e são muitos trabalhos manuais e repetitivos
;sempre tem alguém automatizando algo, e eu não ia ficar de fora dessa, né? haha
;bom, como não tem como vocês testarem, pois é bem específico, fiz uma pequena gravação para demonstrar. A partir do momento que eu saio do excel, eu aperto ALT + C, e então só assisto a mágica acontecer
;lembrando que este programa estava ajustado apenas para os 4 pedidos exemplo que utilizei
;até a próxima!

!C::

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

Loop, 4
{
    Sleep, 200
    Controlsend, EXCEL71, {down}, Pasta1 - Excel

    Sleep, 200
    Controlsend, EXCEL71, {Ctrl Down}c{Ctrl Up}, Pasta1 - Excel

    Sleep, 500

    Loop
    {
        PixelSearch, x, y, 1245, 299, 1408, 308, 0xFFFFFF,, Fast
        if (ErrorLevel = 0)
        {
            Click, %x%, %y%
            break
        }
    }

    Send, {Ctrl Down}v{Ctrl Up}{enter}

    Sleep, 300

    Click, 756, 534

    Sleep, 1000

    Loop, 4
    {
    Click, 1310, 624
    }

    Sleep, 5000

    Loop, 3
    {
    Click, 252, 262 
    }

    Send, {Ctrl Down}c{Ctrl Up}

    Click, 284, 194

    Sleep, 500
    Click, 1185, 301

    Sleep, 200
    ControlSend, EXCEL71, {Tab}, Pasta1 - Excel

    Sleep, 200
    Controlsend, EXCEL71, {Ctrl Down}v{Ctrl Up}, Pasta1 - Excel

    Sleep, 200
    ControlSend, EXCEL71, +{Tab}, Pasta1 - Excel
}

Return