% Truth Table

clear all;
clc;
disp("Truth Table")
disp("Not Gate  :1")
disp("Or Gate   :2")
disp("And Gate  :3")
disp("Nor Gate  :4")
disp("Nand Gate :5")
disp("Xor Gate  :6")
disp("Xnor Gate :7")
disp("For all gates :8")
Table=input("Enter Number for the required truth table :");
t1=[0;1];
t2=[0,0;0,1;1,0;1,1];
[r1,c1]=size(t1);
[r2,c2]=size(t2);

% Headers
not=["IN "  "OUT"];
or=["A" "B" "OUT"];
and=["A" "B" "OUT"];
nor=["A" "B" "OUT"];
nand=["A" "B" "OUT"];
xor=["A" "B" "OUT"];
xnor=["A" "B" "OUT"];

% Choosing the Table
if Table==1
    for i=1:r1
        not=[not;t1(i,1) Not1(t1(i,1))];
    end
    disp(not)
elseif Table==2
    for i=1:r2
        or=[or;t2(i,1) t2(i,2) Or1(t2(i,1),t2(i,2))];
    end
    disp(or)
elseif Table==3
    for i=1:r2
        and=[and;t2(i,1) t2(i,2) And1(t2(i,1),t2(i,2))];
    end
    disp(and)
elseif Table==4
    for i=1:r2
        nor=[nor;t2(i,1) t2(i,2) Not1(Or1(t2(i,1),t2(i,2)))];
    end
    disp(nor)
elseif Table==5
    for i=1:r2
        nand=[nand;t2(i,1) t2(i,2) Not1(And1(t2(i,1),t2(i,2)))];
    end
    disp(nand)
elseif Table==6
    for i=1:r2
        xor=[xor;t2(i,1) t2(i,2) Or1(And1(t2(i,1),Not1(t2(i,2))) , And1(Not1(t2(i,1)),t2(i,2)))];
    end
    disp(xor)
elseif Table==7
    for i=1:r2
        xnor=[xnor;t2(i,1) t2(i,2) Not1(Or1(And1(t2(i,1),Not1(t2(i,2))) , And1(Not1(t2(i,1)),t2(i,2))))];
    end
    disp(xnor)
elseif Table==8
    for i=1:r1
        not=[not;t1(i,1) Not1(t1(i,1))];
    end
    disp("NOT")
    disp(not)
    for i=1:r2
        or=[or; t2(i,1) t2(i,2) Or1(t2(i,1),t2(i,2))];
    end
    disp("OR")
    disp(or)
    for i=1:r2
        and=[and;t2(i,1) t2(i,2) And1(t2(i,1),t2(i,2))];
    end
    disp("AND")
    disp(and)
    for i=1:r2
        nor=[nor;t2(i,1) t2(i,2) Not1(Or1(t2(i,1),t2(i,2)))];
    end
    disp("NOR")
    disp(nor)
    for i=1:r2
        nand=[nand;t2(i,1) t2(i,2) Not1(And1(t2(i,1),t2(i,2)))];
    end
    disp("NAND")
    disp(nand)
    for i=1:r2
        xor=[xor;t2(i,1) t2(i,2) Or1(And1(t2(i,1),Not1(t2(i,2))) , And1(Not1(t2(i,1)),t2(i,2)))];
    end
    disp("XOR")
    disp(xor)
    for i=1:r2
        xnor=[xnor;t2(i,1) t2(i,2) Not1(Or1(And1(t2(i,1),Not1(t2(i,2))) , And1(Not1(t2(i,1)),t2(i,2))))];
    end
    disp("XNOR")
    disp(xnor)
end