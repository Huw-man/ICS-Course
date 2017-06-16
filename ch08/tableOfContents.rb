table = [["Table of Contents",2],
["\n\n",0],
["Chapter 1: Getting Started", 1],
["page 1", 3],
["Chapter 2: Numbers", 1],
["page 9", 3],
["Chapter 3: Letters", 1],
["page 13", 3]
]

lw = 60 #line width
table.each do |t|
  if t[1]== 1
    print t[0].ljust(lw/2)
  elsif t[1]== 2
    print t[0].center(lw)
  elsif t[1]== 3
    print t[0].rjust(lw/2) +"\n"
  elsif t[1]==0
    print t[0]
  end
end
