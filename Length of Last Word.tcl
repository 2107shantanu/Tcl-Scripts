Question: https://leetcode.com/problems/length-of-last-word/description/

proc length_of_last_word {s} {
    set count 0
    set i [expr {[string length $s] - 1}]
    while {$i >= 0} {
        if {[string index $s $i] != " "} {
            incr count
            if {[string index $s [expr {$i - 1}] ] eq " "} {
                break
            }
        }
        incr i -1
    }
    return $count
}

puts [length_of_last_word "Hello World"] ;
puts [length_of_last_word "   fly me   to   the moon  "]
puts [length_of_last_word "luffy is still joyboy"]
