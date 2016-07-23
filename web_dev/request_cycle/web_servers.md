# What are some of the key design philosophies of the Linux operating system?

## It seems like a major theme is - do one thing and do it well. More generally, with regard to the Unix philosophy, there are the following:

1. Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features".
2. Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input.
3. Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them.
4. Use tools in preference to unskilled help to lighten a programming task, even if you have to detour to build the tools and expect to throw some of them out after you've finished using them.


# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a virtual machine (meaning that they emulate a given operating system), that functions as a server for users to install programs that function to the same capacity as a physical server. The advantages ot this (as seen in the video) is that a VPS is easier to configure and are generally cheaper.

Why is it considered a bad idea to run programs as the root user on a Linux system?

When a user has administrative credentials - as is the case of being the root user - if that user gets hacked, it gives the invader a greater amount of access to your computer.