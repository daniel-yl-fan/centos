set verbose off
define hook-quit
    set confirm off
end

handle SIG50 noprint nostop
handle SIGPIPE noprint nostop

set output-radix 0x10
set input-radix 0x10
set disassembly-flavor intel
set dprintf-style gdb
set prompt \033[31m gdb-dafan#  \033[0m

set height 0
set width 0

#set substitute-path /path/of/compiling /path/of/source/files

#attach pid
#file program
#directory source_file_directory
#break class::method
#break file:line
#run parameters

#gdb --quiet --command paht/.gdbinit"
#gdb -tui --quiet --command 
#cgdb --quiet --command /root/lab/gdbinit

# gdb program
# gdb program core
# gdb program pid


# info macro CONST

# convert ip address from int to ascii
# (gdb) set $int_ip = 973274793
# (gdb) printf "%d.%d.%d.%d\n", ($int_ip & 0xff), ($int_ip >> 8) & 0xff, ($int_ip >> 16) & 0xff, ($int_ip >> 24)

# (gdb) p &bar # $1 = (int *) 0x10793ad0

# (gdb) watch *0x10793ad0

# print two dimentional arrary # p *(*(mConnData+3))@80

# ptype mConnData

# p/x Regard the bits of the value as an integer, and print the integer in hexadecimal.
# p/d Print as integer in signed decimal.
# p/u Print as integer in unsigned decimal.
# p/o Print as integer in octal.
# p/t Print as integer in binary. The letter `t' stands for "two". (2)
# p/a Print as an address, both absolute in hexadecimal and as an offset from the nearest preceding symbol. You can use this format used to discover where (in what function) an unknown address is located: (gdb) p/a 0x54320 # $3 = 0x54320 <_initialize_vx+396>
# p/c Regard as an integer and print it as a character constant.
# p/f Regard the bits of the value as a floating point number and print using typical floating point syntax.
