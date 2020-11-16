3;
3+2;
open Math;
sqrt(2.0);
not(true);
true andalso false;
val three = 3;
three;
val five = 3+2;
three + five;
fun double(x) = 2*x;
double(222);
fun max(x:int,y:int,z:int) = if ((x>y) andalso (x>z))then x else (if (y>z) then y else z);
max(3,2,2);
fun factorial(x) = if x=0 then 1 else x*factorial(x-1);
factorial(5);
factorial(10);
fun gcd(m,n):int = if m=n then n else if m>n then gcd(m-n,n) else gcd(m,n-m);
gcd(12,30);
gcd(1,20);
gcd(126,2357);
gcd(125,56345);
val t1 = (1,2,3);
val t2 = (4,(5.0,6));
val t3 = (7,8.0,"nine");
#1(t1);
#1(t2);
#2(t2);
#2(#2(t2));
#3(t3);
[1,2,3];
[true,false,true];
[[1,2,3],[4,5],[6]];
[];
nil;
hd[1,2,3];
hd[[1,2],[3]];
tl[1,2,3];
tl[[1,2],[3]];
hd;
tl;
5::[];
1::[2,3];
[1,2]::[[3],[4,5,6,7]];
[1,2,3]=[1,2,3];
[1,2]=[2,1];
tl[1] = [];
fun concat(x,y) = if x=[] then y else hd(x)::concat(tl(x),y);
concat([1,2],[3,4,5]);
concat([],[1,2]);
concat([1,2],[]);
fun isEmpty(x:list) = x=[];
fun isEmpty(x) = x=[];
val t1 = [];
val t1 = [] : 'a list
isEmpty(t1);
val t1 = [1, 2];
isEmpty(t1);
fun listSum(x) = if x = [] then 0 else hd(x) + listSum(tl(x));
listSum([1, 5, 6]);
fun concat(x,y) = if x=[] then y else hd(x)::concat(tl(x),y);
fun length(L) = if (L=nil) then 0 else 1+length(tl(L));
fun doubleall(L) = if L=[] then [] else (2*hd(L))::doubleall(tl(L));
fun reverse(L) = if L = nil then nil else reverse(tl(L)) @ [hd(L)];
reverse([1,2,3]);
fun fact(0) = 1 |   fact(n) = n*fact(n-1);
fun fact(0) = 1 |   fact(n) = n*fact(n-1);
fact(5);
fun fib(0) = 1
| fib(1) = 1
| fib(n) = fib(n-1) + fib(n-2);
map;
fun double(x) = x * 2;
map double [1, 5, 6];
fun smallerthan3(x) = x < 3;
map smallerthan3 [1,6,7];
fun exp(x,0) = 1
| exp(x,y) = x * exp(x,y-1);
fun exp1 x 0 = 1;
fun exp1 x 0 = 1
| exp1 x y = x * exp1 x y-1;

(* Binary tree processing *)
datatype ’a BinaryTree = btempty | bt of ’a * ’a BinaryTree * ’a BinaryTree ;
fun left subtree btempty = btempty
| left subtree(bt( ,left, )) = left;
fun right subtree btempty = btempty
| right subtree(bt( , ,right)) = right;
exception label has nil argument;
fun label btempty = raise label has nil argument
| label(bt(value, , )) = value;

(* Sample binary trees *)
val Tree = bt(2,btempty,
bt(3,btempty,
bt(7,bt(6,bt(5,btempty,btempty),
btempty),
bt(8,btempty,btempty))
)
);
val Tree1 = bt(3,btempty,btempty);
val Tree2 = bt(5,bt(1,btempty,btempty),btempty);
val Tree3 = bt(7,bt(4,btempty,btempty),
bt(12,btempty,btempty));
val Tree4 = bt("*",
bt("/",
bt("-",bt("7",btempty,btempty),
bt("a",btempty,btempty) ),
bt("5",btempty,btempty) ),
bt("exp",
bt("+",bt("a",btempty,btempty),
bt("b",btempty,btempty) ),
bt("3",btempty,btempty) ));
val Expression = bt("+",
bt("*",
bt("+",
bt("2",btempty,btempty),
bt("5",btempty,btempty) ),
bt("*",
bt("3",btempty,btempty),
bt("4",btempty,btempty) ) ),
bt("*",
bt("1",btempty,btempty),
bt("6",btempty,btempty) ) );
lookup(Tree,6);
lookup(Tree,1);
lookup(Tree,8);
lookup(Tree,9);
lookup(btempty,6);
inorder(Tree);
preorder(Tree);
postorder(Tree);
inorder(Expression);
preorder(Expression);
postorder(Expression);