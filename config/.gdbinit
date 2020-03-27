set height 0
set width 0

set verbose off
define hook-quit
    set confirm off
end

# set logging file /home/dafan/tmp/gdb.txt
# set logging overwrite on
# set logging on

set print object on
set print pretty on
set print array on
set dprintf-style gdb
# with print array on -- print some_array

# handle SIG50 noprint nostop
# handle SIGPIPE noprint nostop

set output-radix 0x10
set input-radix 0x10
set disassembly-flavor intel

# set prompt \033[31m gdb-dafan#  \033[0m

#set substitute-path /path/of/compiling /path/of/source/files

define xxd
    dump binary memory ~/tmp/gdb-dump.bin $arg0 $arg0+$arg1
    shell xxd ~/tmp/gdb-dump.bin
end

define skip
    tbreak +1
    jump +1
end

#attach pid
#file program
#directory source_file_directory
#break class::method
#break file:line
#run parameters

#gdb --quiet --command path/.gdbinit"
# --silent (or -q/--quiet):
#gdb -tui --quiet --command 
#cgdb --quiet --command /root/lab/gdbinit

# gdb program
# gdb program core
# gdb -p pid
# gdb iprogram --args arg1 arg2
# -symbols file
# -exec file
# -core file
# -pid number
# -command file
# -ex command
# -directory directory
# -cd directory
#
# file filename
# exec-file [ filename ]
# symbol-file [ filename [ -o offset ]]
# core-file [filename]

# path directory
# cd [directory]
# pwd

# attach process-id
# detach

# info threads
# thread thread-id

# break location
# break
# break … if cond
# tbreak args
# rbreak regex
# rbreak file:regex
# info break
# watch [-l|-location] expr [thread thread-id] [mask maskvalue]

# clear
# clear location
# delete
# disable [breakpoints] [list…]
# enable [breakpoints] [list…]
# enable [breakpoints] once list…
# enable [breakpoints] count count list…
# enable [breakpoints] delete list


# shell command-string
# !command-string
#
# pipe [command] | shell_command
# | [command] | shell_command
# pipe -d delim command delim shell_command
# | -d delim command delim shell_command
#
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
# p/a Print as an address, both absolute in hexadecimal and as an offset from the nearest preceding symbol.
# You can use this format used to discover where (in what function) an unknown address is located: (gdb) p/a 0x54320 # $3 = 0x54320 <_initialize_vx+396>
# p/c Regard as an integer and print it as a character constant.
# p/f Regard the bits of the value as a floating point number and print using typical floating point syntax.


# command x (for “examine”) to examine memory
# x/nfu addr
# x addr
# x

# n, the repeat count
# The repeat count is a decimal integer; the default is 1.
# It specifies how much memory (counting by units u) to display.
# If a negative number is specified, memory is examined backward from addr.

# f, the display format
# The display format is one of the formats used by print (‘x’, ‘d’, ‘u’, ‘o’, ‘t’, ‘a’, ‘c’, ‘f’, ‘s’), and in addition ‘i’ (for machine instructions).
# The default is ‘x’ (hexadecimal) initially. The default changes each time you use either x or print.

# u, the unit size
# The unit size is any of b Bytes(default).  h Halfwords (two bytes).  w Words (four bytes).  g Giant words (eight bytes).

# call <function>
# watch <watchpoint>
# macro expand <macro>
