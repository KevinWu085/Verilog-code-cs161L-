Name: Kevin Wu <br />
email: kwu085@ucr.edu <br />
the issue that I encountered during the lab was I have 2 variable called alu_result and alu_res, but I did not made them into 2 variable so it was returning wrong dst_data. Eventually, I figure out this problem and made it into 2 variable <br />
<br />

!image<br />

<br />
and $t0 $t1 $t2<br />
in brinary: 000000 01001 01010 01000 00000 100100<br />
in hex: 0x012A4024<br />
<br />
addi $t3 $t4 123<br />
in brinary: 001000 01100 01011 0000000001111011<br />
in hex: 0x218B007B<br />
<br />
lw $t5, 135($t1)<br />
in brinary: 100011 01001 01101 0000000010000111<br />
in hex: 0x8D2D0087<br />
<br />
sw $t3, 136($t1)<br />
in binary: 101011 01001 01011 0000000010001000<br />
in hex: 0xAD2B0088<br />
<br />
beq $t3, $zero, -10<br />
in binary: 000100 01011 00000 1111111111110110<br />
in hex: 0x1160FFF6<br />
