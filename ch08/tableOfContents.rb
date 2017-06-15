lw = 60 #line width

table = ["Table of Contents".center(lw),
  "\n",
  "Chapter 1: Getting Started".ljust(lw/2) + "page 1".rjust(lw/2),
  "Chapter 2: Numbers".ljust(lw/2) + "page 9".rjust(lw/2),
  "Chapter 3: Letters".ljust(lw/2) + "page 13".rjust(lw/2)
]

table.each do |t|
  puts t
end
