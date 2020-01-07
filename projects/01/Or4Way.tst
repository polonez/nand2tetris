// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Or8Way.tst

load Or4Way.hdl,
output-file Or4Way.out,
compare-to Or4Way.cmp,
output-list in%B2.4.2 out%B2.1.2;

set in %B0000,
eval,
output;

set in %B1111,
eval,
output;

set in %B0001,
eval,
output;

set in %B0100,
eval,
output;

set in %B1010,
eval,
output;
