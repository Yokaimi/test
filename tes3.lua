-- SC By Arcexy#7413
key="ayvtfe7na"local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({750,637,579,399,755,679,425,501,385,730,701,487,697,533,712,692,567,334,379,446,359,613,696,431,466,361,590,549,758,358,435,418,559,472,462,616,686,485,423,646,453,377,591,751,346,569,702,442,349,660,592,665,735,662,448,542,534,350,329,570,403,489,629,410,698,634,539,367,739,666,676,491,752,368,690,568,344,397,575,618,706,490,513,617,323,734,322,338,343,740,500,477,747,664,473,347,652,531,400,507,340,434,632,482,520,439,459,480,336,551,603,565,451,728,695,391,557,727,395,741,594,483,749,656,330,441,475,589,746,433,324,504,383,561,438,516,556,369,661,745,699,582,327,370,436,372,725,497,691,430,638,705,457,444,624,492,357,732,673,319,726,722,723,532,704,639,535,620,398,710,599,463,328,419,649,348,511,499,736,414,374,389,711,325,371,514,522,509,558,555,474,464,316,718,468,608,669,493,527,671,396,663,331,694,553,713,321,406,581,628,658,588,659,519,333,678,546,577,455,387,670,550,748,566,412,405,562,488,729,388,345,502,378,584,386,580,402,733,650,460,636,495,571,607,503,756,449,703,409,390,528,337,376,684,583,738,484,606,586,456,339,538,644,317,505,742,443,648,363,700,341,645,605,541,401,683,716,642,598,360,643,653,470,392,427,342,602,537,486,630,709,408,332,597,506,450,651,657,543,693,674,523,465,548,685,573,587,471,420,354,364,540,525,621,572,-1,84,19,117,91,204,108,39,17,9,28,220,8,9,7,8,18,70,2,13,10,19,65,88,13,16,65,82,26,87,69,108,77,78,19,3,180,85,170,24,88,95,27,124,18,15,89,93,78,107,79,229,79,28,60,8,74,28,185,49,98,65,93,7,18,69,68,127,23,190,65,4,84,91,24,23,90,8,48,47,91,19,85,94,17,2,20,4,71,34,15,107,92,84,69,5,65,4,137,4,232,207,177,1,19,31,63,67,65,143,94,252,17,185,208,13,69,194,29,6,22,13,121,4,78,165,20,124,104,65,58,16,141,73,121,10,31,80,94,192,26,13,107,9,78,1,157,10,14,124,17,6,164,12,123,27,23,94,31,116,15,133,67,110,203,32,87,70,108,10,89,18,68,5,70,108,13,26,7,165,76,33,21,240,94,72,10,81,91,11,92,89,19,76,28,101,3,9,115,69,146,0,134,27,23,7,48,21,3,91,82,18,8,78,129,165,61,21,84,76,91,194,21,14,27,111,84,80,89,195,169,2,7,66,87,10,26,141,82,140,72,29,80,67,9,139,28,13,94,202,12,26,10,92,107,23,75,5,15,69,7,25,24,207,28,67,89,31,16,13,66,13,65,70,26,88,58,17,26,121,80,166,0,19,79,30,236,0,19,143,86,0,0,81,88,89,43,50,84,62,70,65,17,94,245,69,0,1,31,89,0,180,92,86,22,116,129,0,89,6,205,31,27,30,84,114,15,27,89,10,89,69,49,61,26,7,108,21,21,183,52,61,107,84,69,3,39,21,84,21,117,61,175,140,78,5,21,212,4,6,2,29,220,14,17,165,74,79,0,89,28,92,139,117,87,6,18,61,86,13,0,91,64,28,43,65,89,116,108,19,99,72,211,54,124,1,2,104,0,237,221,67,163,70,178,158,129,7,8,160,38,78,82,70,84,92,12,5,17,18,1,2,164,29,104,73,95,79,127,41,41,2,5,89,104,46,100,4,105,197,5,95,205,116},key))if a then a()else print("?")end
