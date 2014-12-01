start:                        @ Строка начала программы
        mov   r0, #0xA0000000 @ Пишем в регистр r0 адрес ячейки памяти куда будем класть значение
        mov   r4, #0xf0       @ Пишем в регистр r4 цифру 240, 16ая система счисления, все такое
        str   r4, [r0]        @ Пишем содержимое регистра r4 по адресу который лежит в r0
        ldr   r3, [r0]        @ Проверяем - загружаем в r3 то что лежит по адресу в r0
stop:   b stop                @ Строка завершения программы
