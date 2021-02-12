.data                           # This defines a value in memory (not in a register)
    str :   .asciiz   "please selected operation from the list below:\n1-Add the two numbers.\n2-Multiply the two numbers. \n3-Dividing the two numbers. \n4-min of numbers"   # system call for print string                                     
    str1 :  .asciiz   "\n5-sin(x).\n6-cos(x). \n7-tan(x).\n8-square.\n9-Triangle.\n10-Rectangle"
    str2 :   .asciiz  "\nEnter Your choice: "
    str3 :   .asciiz   "please enter the first number:\n"
    str4 :   .asciiz   "please enter the second number:\n"
    sum :    .asciiz   "\nThe result of adding is:\n\n"
    str5 :    .asciiz    "\nplease enter the size of list numbers.\n"
    str6 :    .asciiz     "\r\n"
    arr  :     .asciiz     "\nEnter your numbers : \n"
    str8:       .asciiz     "\nSmallest Element : \n"
    array: .space 100
    str9:   .asciiz     "Enter angle in degree   \n"
    str10:    .asciiz    " \n the sin() is \n "
    str11:      .asciiz   "sin"
    str12:       .asciiz    "\nEnter your number\n"
    str13:        .asciiz   "\nThe result of square is: \n \n"
    str14:        .asciiz   " \nSorry you are input invalid number \n  \n"
    num:        .float  3.142
    num1:         .float   180.0
    str15:         .asciiz    " \n Enter the number to be added to the result\n"
    str16:         .asciiz     "\nEnter the number to be multiplied by the result\n"
    str17:          .asciiz      "\nThe result of square is: \n\n"
    str18:       .asciiz      "\nEnter the number to be divided by the result\n"
    str19:        .asciiz      "\nThe result of Dividing is: \n\n"
    str20:         .asciiz     "\nThank you(-)\n\n"
    str21:          .asciiz      "\nSorry you are input invalid number\n\n"
    str22:           .asciiz      "please selected operation from the list below:\n1-Add the two numbers.\n2-Multiply the two numbers. \n3-Dividing the two numbers. \n4-min of numbers"
    str23:            .asciiz     "\n5-sin(x).\n6-cos(x). \n7-tan(x).\n8-square.\n9-Triangle.\n10-Rectangle\n11-to restart." 
    str24:            .asciiz      "\n0-to finish.\nEnter Your choice: "
    str25:              .asciiz     "\nPlease Enter Three Sides of a Triangle : \n"
    str26:              .asciiz      "\nThis is a  Triangle\n\n"
    str27:               .asciiz       "\nThis is not Triangle\n\n"
    str28:               .asciiz      "\nPlease Enter four Sides of a Rectangle : \n"
    str29:                .asciiz       "\nThis is Rectangle\n\n"
    str30:                .asciiz         "\nThis is not Rectangle\n\n"
    num4:               .float  1.0
    str31:            .asciiz   "\n the cos() is \n"
    str32:            .asciiz   "\n the tan() is \n"
   
 
   
.text 
main:   

                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              # code section
 li  $v0 , 4                                         # system call for print string
 la  $a0 , str                                # load address of str to print
syscall  
 li  $v0 , 4                                         # system call for print string
 la  $a0 , str1                                # load address of str1 to print
syscall  
 li  $v0 , 4                                         # system call for print string
 la  $a0 , str2                                # load address of str2 to print
syscall 

 

li $v0, 5  # Get an integer value from user  # Make $v0 = 5
syscall
# Your new input int is now in $v0
# You can move it around and compute with it
move $s7, $v0 

 li $t1 , 1             #f =1  
 li $t5 , 1             #f2 = 1           
 li $t4 , 1             #f1 = 1    
 li $t0 , 1             #counter (i) for result of f
 li $s0 , 1             #counter (i)  for result of f1
 li $s1 , 1             #counter (i)  for result of f2
 li $s2 , 1             #counter (i)   for result of f3
 li $s3 , 1             #counter (i)  for result of f4
 li $s4 , 1             #counter (i)  for result of f5
 li $s6 , 1             #f3 = 1 
 li $a0, 1              #f4 = 1
 li $a1,1               #f5 = 1
   
start_loop5:
       slti  $t7, $t0,3   #if $t0(counter) less than or equal 3  make $t7 = 1 else make $t7= 0
       beq $t7 ,0,start_loop6   # if $t7 = 0 jumb to loop next (start_loop6) else continue
       mul $t1,$t1,$t0      # multiple counter (i) and f (t1) 
       addi $t0,$t0,1     # increment t0(counter) by 1  i+=1
       j start_loop5            #jump to start of loop     
start_loop6:
       slti  $t7, $s0,5   #if $s0 less than or equal 5  make $t7 = 1 else make $t7= 0
       beq $t7 ,0,start_loop7  # if $t7 = 0 jumb to loop next (start_loop7) else continue
       mul $t4,$t4,$s0      # multiple counter (i) and f1 (t4)
       addi $s0,$s0,1    # increment s0 by 1  i+=1
       j start_loop6           #jump to start of loop
        
start_loop7:
       slti  $t7, $s1,7   #if $s1 less than or equal 7  make $t7 = 1 else make $t7= 0
       beq $t7 ,0, start_loop8 # if $t7 = 0 jumb to loop next (start_loop8) else continue
       mul $t5,$t5,$s1      # multiple counter (i) and f2 (t5)
       addi $s1,$s1,1     #increment s1 by 1  i+=1
       j start_loop7           #jump to start of loop     
 
  start_loop8:
       slti  $t7, $s2,2   #if $s2 less than or equal 2  make $t7 = 1 else make $t7= 0
       beq $t7 ,0,start_loop9 # if $t7 = 0 jumb to loop next (start_loop9) else continue
       mul $s6,$s6,$s2      # multiple counter (i) and f3 (s6)
       addi $s2,$s2,1     # increment s2 by 1  i+=1
       
       j start_loop8        #jump to start of loop     
start_loop9:
       slti  $t7, $s3,4   #if $s3 less than or equal 4  make $t7 = 1 else make $t7= 0
       beq $t7 ,0,start_loop10  # if $t7 = 0 jumb to loop next (start_loop10) else continue
       mul $a0,$a0,$s3      # multiple counter (i) and f4 (a0)
       addi $s3,$s3,1     #increment s3 by 1  i+=1
       j start_loop9           #jump to start of loop
        
start_loop10:
       slti  $t7, $s4,6   #if $s4 less than or equal 6  make $t7 = 1 else make $t7= 0
       beq $t7 ,0,Exit4    # if $t7 = 0 jumb to Exit loop (Exit4) else continue
       mul $a1,$a1,$s4    # multiple counter (i) and f5 (a1)
       addi $s4,$s4,1     # increment s3 by 1  i+=1
       j start_loop10           #jump to start of loop  
 Exit4:        # Exit loop 

bne $s7 , 1 Else            # if $s7 != 1 jumb to Else else continue


 li  $v0 , 4                # system call for print string
 la  $a0 , str3            #print string (str3) 
 syscall
   
     
       
  
li $v0, 6                 # system call for scan float number
syscall
mov.s $f1 , $f0          #move  $f0(input) to $f1 (num1)

 li  $v0 , 4                # system call for print string
 la  $a0 , str4              #print string (str4)
 syscall
 

li $v0, 6                        # system call for scan float number
syscall
mov.s $f2 , $f0                   #move  $f0(input) to $f2(num2)



 li  $v0 , 4             # system call for print string
 la  $a0 , sum              #print string (sum)
 syscall
 
   
  li $v0 , 2               # system call for print float
 add.s $f12 , $f1 , $f2        #add two numbers ($f1(num1) ,$f2(num2)) and print it in $f12(result)
 syscall
 
 
                                      
 
  
   li  $v0 , 4              # system call for print string
 la  $a0 , str6              #print string (str6)
 syscall

j Exit                          #jump to exit
Else: 
bne $s7 , 2  Else1               # if $s7 != 2 jump to Else1 else continue

 li  $v0 , 4             # system call for print string
 la  $a0 , str3            #print string (str3)
 syscall
   
     
       
       

li $v0, 6                  # Get an float value from user and  make $v0 = 6
syscall

mov.s $f1, $f0                   #move $f0 (input)to $f1(num1)
   
 li  $v0 , 4               # system call for print string
 la  $a0 , str4                 #print string (str4)
 syscall
 
 

li $v0, 6             # Get an float value from user and  make $v0 = 6
syscall

mov.s $f2, $f0            #move $f0(input) to $f2(num2)

 li  $v0 , 4              # system call for print string
 la  $a0 , sum              #print string (sum)
 syscall
 

 
                                      
  li  $v0 , 2                  # system call for print float
  mul.s $f12 , $f1 , $f2        #multiply $f1(num1) and $f2 (num2)and print it $f12(result)
  syscall
  
  
    li  $v0 , 4             # system call for print string
 la  $a0 , str6                 #print string (str6)
 syscall

  j Exit                    #jump to Exit
  Else1:                 #Else 1

  bne $s7 , 3  Else2             # if $s7 != 3 jump to Else2 else continue
  
  
   li  $v0 , 4                    # system call for print string
 la  $a0 , str3                   #print string (str3)
 syscall
 
       
         

li $v0, 6                    # Get an float value from user and  make $v0 = 6
syscall                      

mov.s $f1, $f0               #move $f0 (input) to $f1(num1)
   
 li  $v0 , 4                # system call for print string
 la  $a0 , str4                #print string (str4)
 syscall
 


li $v0, 6              # Get an float value from user and make $v0 = 6
syscall

mov.s $f2 , $f0            #move $f0(input) to $f2(numb2)




 li  $v0 , 4                 # system call for print string
 la  $a0 , sum                 #print string (sum)
 syscall
 

 
                                     
  li  $v0 , 2                     # system call for scan float number
 div.s $f12 , $f1 , $f2            #divide two numbers ($f1(num1) , $f2(num2)) and print it in $f12(result)
  syscall
  
  
  
    li  $v0 , 4                    # system call for print string
 la  $a0 , str6                      #print string (str6)
 syscall

 j Exit                         #jump to Exit
  Else2:                        #Else2
  bne $s7 , 4  Else3            # if $s7 != 4 jump to Else else continue
  
   li  $v0 , 4              # system call for print string
 la  $a0 , str5              #print string (str5)
 syscall
   
     
       
         

li $v0, 5    # Get an integer value from user   # Make $v0 = 5
syscall

move $a1, $v0      #move $v0(input) to $a1(parameter to function..sizeof array)
 

  jal min                  #call to function (min)
   jal findMin              #call to function  (findMin)
   
                                     
   li  $v0 , 4            # system call for print string
 la  $a0 , str6             #print string (str6)
 syscall
                                                               
                                                                                                                                           # system call for print string
 j Exit                    #jump to Exit
  Else3:                   #Else3
  bne $s7 , 5 Else4            # if $s7 != 5 jump to Else4 else continue

  
     li  $v0 , 4           # system call for print string
 la  $a0 , str9                #print string (str9)
 syscall
 
 


 
 
  lwc1 $f4  ,  num                   #load word (num = 3.142) to $f4
  lwc1 $f2 , num1                    #load word (num1 =180.0) to $f2
  
   li $v0, 6                      # system call for scan float
    syscall


 li  $v0 , 4                # system call for print string
 la  $a0 , str10                #print string (str10)
 syscall

 

  div.s $f6 , $f4 , $f2           # divide num / num1 ($f4/$f2) and the result in $f6
 
 mul.s $f7 , $f6 , $f0        #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 mul.s $f8 , $f7 , $f7        #multiply  $f7 and $f7 and the result in $f8
 mul.s  $f9 , $f8 , $f7       #multiply  $f8 and $f7 and the result in $f9(pow)
 
 
 mul.s $f10 , $f9 , $f7       #multiply  $f9 and $f7 and the result in $f10
 mul.s $f11 , $f10 , $f7      #multiply  $f10 and $f7 and the result in $f11(pow1)
 
 mul.s $f13 , $f11 , $f7        #multiply  $f7 and $f11 and the result in $f13 
 mul.s $f14 , $f13 , $f7       #multiply  $f13 and $f7 and the result in $f14(pow2)
 
 

mtc1 $t1 , $f20             # convert from integer t1 (f) to float $f20 
cvt.s.w $f20 , $f20           # convert from word to single ($f20)
div.s $f15 , $f9 , $f20         #divide $f9 with $f20 and the result in $f15



mtc1 $t4 , $f21                   # convert from integer t4 (f1) to float $f21 
cvt.s.w $f21 , $f21              # convert from word to single ($f21)
div.s $f16 , $f11 , $f21           #divide $f11 with $f21 and the result in $f16

mtc1 $t5 , $f22                # convert from integer t5 (f2) to float $f22 
cvt.s.w $f22 , $f22              # convert from word to single ($f22)

div.s $f17 , $f14 , $f22          #divide $f14 with $f22 and the result in $f17


sub.s $f18 , $f7 , $f15         #subtract $f7 (rad) with $f15  and the result in $f18

add.s $f19 , $f18 , $f16       #add $f18  with $f16  and the result in $f19

sub.s  $f23 , $f19 , $f17     #subtract $f19  with $f17  and the result in $f23


  li $v0 , 2              #system call for scan float number
  mov.s $f12, $f23            # move $f23 to $f12 
 syscall

   li  $v0 , 4            # system call for print string
 la  $a0 , str6           #print string (str6)
 syscall 


 

    

 
  j Exit           #JUMP TO EXIT
  Else4:             #Else4
  bne $s7 , 6 Else5            # if $s7 != 6 jump to Else5 else continue
    
     li  $v0 , 4             # system call for print string
 la  $a0 , str9                    #print string (str9)
 syscall
 
 


 
 
  lwc1 $f4  ,  num           #load word (num = 3.142) to $f4
  lwc1 $f2 , num1         #load word (num1 =180.0) to $f4
  
 li $v0, 6                     # system call for scan float
syscall


 li  $v0 , 4                 # system call for print string
 la  $a0 , str31                   #print string (str31)
 syscall

 

  div.s $f6 , $f4 , $f2       # divide num / num1 ($f4/$f2) and the result in $f6
 
 mul.s $f7 , $f6 , $f0      #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 
 mul.s $f8 , $f7 , $f7      #multiply  $f7 and $f7 and the result in $f8 
 
 
 mul.s  $f9 , $f8 , $f7      #multiply  $f8 and $f7 and the result in $f9 
 mul.s $f10 , $f9 , $f7       #multiply  $f9 and $f7 and the result in $f10
 
 
 mul.s $f11 , $f10 , $f7     #multiply  $f10 and $f7 and the result in $f11 
 mul.s $f13 , $f11 , $f7    #multiply  $f11 and $f7 and the result in $f13 

 
 
mtc1 $s6 , $f24     # convert from integer s6 (f3) to float $f24 
cvt.s.w $f24 , $f24     # convert from word to single ($f24)
 
div.s $f15 , $f8 , $f24       #divide $f8 with $f24 and the result in $f15

mtc1 $a0 , $f25         # convert from integer a0 (f4) to float $f25 
cvt.s.w $f25 , $f25        # convert from word to single ($f25)

div.s $f16, $f10 , $f25     #divide $f10 with $f25 and the result in $f16


mtc1 $a1 , $f26         # convert from integer a1 (f5) to float $f26 
cvt.s.w $f26 , $f26       # convert from word to single ($f26)
 
div.s $f17 , $f13 , $f26      #divide $f13 with $f26 and the result in $f17


lwc1 $f27 ,num4            #load word  num4 (1.0) to $f27
sub.s $f18 , $f27 , $f15    # subtract $f27  with $f15  and the result in $f18

add.s $f19 , $f18 , $f16    #add $f18  with $f16  and the result in $f19

sub.s  $f28 , $f19 , $f17   #subtract $f19  with $f17  and the result in $f28


  li $v0 , 2           # system call for print float
  mov.s $f12, $f28         #move value of  $f28 to $f12 to print it
 syscall

   li  $v0 , 4                   # system call for print string
 la  $a0 , str6                 #print string (str6)
 syscall



 j Exit         # jump to Exit
  Else5:               #Else 5
  bne $s7 , 7 Else6             # if $s7 != 7 jump to Else9 else continue
  
       li  $v0 , 4          # system call for print string
 la  $a0 , str9          #print string (str9)
 syscall
 
 


 
 
  lwc1 $f4  ,  num           #load word (num = 3.142) to $f4
  lwc1 $f2 , num1                #load word (num1 = 180.0) to $f2
  
 li $v0, 6            # system call for scan float
syscall


 li  $v0 , 4                   # system call for print string
 la  $a0 , str32                     #print string (str32)
 syscall 

 

  div.s $f6 , $f4 , $f2        # divide num / num1 ($f4/$f2) and the result in $f6   
 
 mul.s $f7 , $f6 , $f0                #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 
 mul.s $f8 , $f7 , $f7               #multiply  $f7 and $f7 and the result in $f8  
 mul.s  $f9 , $f8 , $f7                   #multiply  $f8 and $f7 and the result in $f9
 
 
 mul.s $f10 , $f9 , $f7           #multiply  $f9 and $f7 and the result in $f10
 mul.s $f11 , $f10 , $f7              #multiply  $f10 and $f7 and the result in $f11 
 
 mul.s $f13 , $f11 , $f7           #multiply  $f11 and $f7 and the result in $f13
 mul.s $f14 , $f13 , $f7        #multiply  $f13 and $f7 and the result in $f14   
 
 
 mul.s $f15 , $f7 , $f7             #multiply  $f7 and $f7 and the result in $f15
  
 
 mul.s  $f16 , $f15 , $f7    #multiply  $f15 and $f7 and the result in $f16
 mul.s $f17 , $f16 , $f7      #multiply  $f16 and $f7 and the result in $f17
 
 
 mul.s $f18 , $f17 , $f7     #multiply  $f17 and $f7 and the result in $f18
 mul.s $f19 , $f18 , $f7      #multiply  $f18 and $f7 and the result in $f19

 

mtc1 $t1 , $f20       # convert from integer t1 (f) to float $f20 
cvt.s.w $f20 , $f20     # convert from word to single ($f20)


div.s $f23 , $f9 , $f20    #divide $f9 with $f20 and the result in $f23


mtc1 $t4 , $f21    # convert from integer t4 (f1) to float $f21 
cvt.s.w $f21 , $f21    # convert from word to single ($f21)

div.s $f27, $f11 , $f21  #divide $f11 with $f21 and the result in $f27

mtc1 $t5 , $f22       # convert from integer t5 (f2) to float $f22 
cvt.s.w $f22 , $f22     # convert from word to single ($f22)


div.s $f28 , $f14 , $f22    #divide $f14 with $f22 and the result in $f28

mtc1 $s6 , $f24    # convert from integer s6 (f3) to float $f24 
cvt.s.w $f24 , $f24     # convert from word to single ($f24)
div.s $f29 , $f15 , $f24    #divide $f15 with $f24 and the result in $f29
 

mtc1 $a0 , $f25    # convert from integer a0 (f4) to float $f25
cvt.s.w $f25 , $f25    # convert from word to single ($f25)
div.s $f30 , $f17  , $f25   #divide $f17 with $f25 and the result in $f30

mtc1 $a1 , $f26    # convert from integer a1 (f5) to float $f26 
cvt.s.w $f26 , $f26    # convert from word to single ($f26)
div.s $f31 , $f19 , $f26   #divide $f19 with $f26 and the result in $f31

sub.s $f1  , $f7 , $f23   # subtract $f7  with $f23  and the result in $f1
add.s  $f3 , $f1 , $f27    #add $f1  with $f27  and the result in $f3
sub.s $f3 , $f3 , $f28     # subtract $f3  with $f28  and the result in $f3
lwc1 $f5 , num4             #load word  num4 (1.0) to $f5
sub.s $f4, $f5 , $f29      # subtract $f5  with $f29  and the result in $f4
add.s $f12 , $f4 , $f30     #add $f4  with $f30  and the result in $f12
sub.s  $f12 , $f12 , $f31    # subtract $f12  with $f31  and the result in $f12

div.s $f12 , $f3 , $f12   #divide $f3 with $f12 and the result in $f12




  li $v0 , 2    # system call for print float
  mov.s $f12, $f12     #move $f12 to $f12 and print it
 syscall

   li  $v0 , 4            # system call for print string                               
 la  $a0 , str6             #print string (str6)
 syscall 



  
  j Exit              #jump Exit
  Else6:               #Else6
   bne $s7 , 8 Else7      # if $s7 != 8 jump to Else7 else continue
   
     li  $v0 , 4        # system call for print string                                   
 la  $a0 , str12     #print string (str12)
 syscall
 
 li $v0, 6         # system call for scan flaot    
syscall
mov.s $f1, $f0         #move $f0 to $f1



   li  $v0 , 4                  # system call for print string
 la  $a0 , str13                  #print string (str13)
 syscall
  
  li  $v0 , 2               # system call for print float
mul.s $f12 , $f1 , $f1      #multiply  $f1 and $f1 and the result in $f12
  syscall
  
    li  $v0 , 4               # system call for print string
 la  $a0 , str6               #print string (str6)
 syscall

   
   j Exit             #jump to Exit
  Else7:                 #Else7
   bne $s7 , 9 Else8        # if $s7 != 9 jump to Else8 else continue
   
  jal Triangle              #call to the function (Triangle)
  
 
 
   j Exit              #jump to Exit
   Else8:           #Else8
  
   bne $s7 , 10 Else9       # if $s7 != 10 jump to Else9 else continue
   
   
    jal Rectangle  #call to the function (Regtangle)
   j Exit          #jump to Exit
   Else9:            #Else9
   
   li  $v0 , 4                # system call for print string
 la  $a0 , str14            #print string (str14)
 syscall
 
 li $s6 , 100                  #load immidiate number 100 to $s6
 
 Exit:                    #Exit :
 
 
 
 
 beq $s6 , 100 ,Exit1           # if $s6 == 100 go to Exit 1 else continue
 
 
 li  $v0 , 4                    # system call for print string
 la  $a0 , str22                # load address of str22 to print
syscall  
 li  $v0 , 4                    # system call for print string
 la  $a0 , str23                # load address of str23 to print
syscall  
 li  $v0 , 4                    # system call for print string
 la  $a0 , str24                # load address of str24 to print
syscall 

 
         

li $v0, 5          # Get an float value from user and  make $v0 = 5
syscall         

move $s7, $v0       #move $v0 to $s7



bne $s7 , 1 Else10  

 
 li  $v0 , 4                       # system call for print string
 la  $a0 , str15           # load address of str15 to print
 syscall
   
     
       
         

li $v0, 6      # Get an float value from user and  make $v0 = 6
syscall 

 
 
 li  $v0 , 4              # system call for print string
 la  $a0 , sum               # load address of sum to print
 syscall

                                      
  li  $v0 , 2        # system call for print float
add.s $f12 , $f12 , $f0         #add $f12  with $f0  and the result in $f12 
 
  syscall
  
   li  $v0 , 4            # system call for print string
 la  $a0 , str6               # load address of str6 to print
 syscall

j Exit           #jump to Exit

Else10:           #Else10
bne $s7 , 2  Else11           # if $s7 !=2 go to Else11  else continue

 li  $v0 , 4                 # system call for print string
 la  $a0 , str16           # load address of str16 to print
 syscall
   
     
       
       

li $v0, 6         # Get an float value from user  make $v0 = 6
syscall 

mov.s $f1, $f0     #move $f0 to $f1





   
 li  $v0 , 4                # system call for print string
 la  $a0 , str17               # load address of str17 to print
 syscall
 

 

 
                                   
  li  $v0 , 2              # system call for print float
  mul.s $f12 , $f12 , $f1      #multiply  $f12 and $f1 and the result in $f12
  syscall
  
     li  $v0 , 4               # system call for print string
 la  $a0 , str6                # load address of str6 to print
 syscall
  
  j Exit               #jump to Exit
  Else11:             #Else11

  bne $s7 , 3  Else12            # if $s7 !=3 go to Else12  else continue
  
  
   li  $v0 , 4                   # system call for print string
 la  $a0 , str18                # load address of str18 to print
 syscall
   
     
       
        

li $v0, 6      # Get an integer value from user and  make $v0 = 6
syscall

mov.s $f1, $f0          #move $f0 to $f1
   
   
   
 li  $v0 , 4               # system call for print string
 la  $a0 , str19              # load address of str19 to print
 syscall
 
 


 

 
                             
  li  $v0 , 2           # system call for print float
 div.s $f12 , $f12 , $f1      #divide $f12 with $f1 and the result in $f12
  syscall
  
  
     li  $v0 , 4               # system call for print string
 la  $a0 , str6           # load address of str6 to print
 syscall
 
 j Exit           #jump to Exit
  Else12:           #Else12
  bne $s7 , 4  Else13    # if $s7 !=4 go to Else13  else continue
  
   li  $v0 , 4               # system call for print string
 la  $a0 , str5           # load address of str5 to print
 syscall
   
     
       
        

li $v0, 5     # Get an integer value from user
syscall        # Make $v0 = 5

move $a1, $v0       #move $v0 to $a1
 

  jal min          #call to function  min
   jal findMin        #call to function findMin
   
   
   
      li  $v0 , 4                  # system call for print string
 la  $a0 , str6                     # load address of str6 to print
 syscall
           
   
                                      
                                                                                                            # system call for print string
 j Exit         #jump to Exit
  Else13:          #Else13
  bne $s7 , 5 Else14           # if $s7 !=5 go to Else14  else continue
  
  
  
  
       li  $v0 , 4         # system call for print string
 la  $a0 , str9             # load address of str9 to print
 syscall
 
 





 
 
  lwc1 $f4  ,  num                   #load word (num = 3.142) to $f4
  lwc1 $f2 , num1                    #load word (num1 =180.0) to $f4
  
   li $v0, 6                      # system call for scan float
    syscall


 li  $v0 , 4                # system call for print string
 la  $a0 , str10                #print string (str10)
 syscall

 

  div.s $f6 , $f4 , $f2           # divide num / num1 ($f4/$f2) and the result in $f6
 
 mul.s $f7 , $f6 , $f0        #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 mul.s $f8 , $f7 , $f7        #multiply  $f7 and $f7 and the result in $f8
 mul.s  $f9 , $f8 , $f7       #multiply  $f8 and $f7 and the result in $f9(pow)
 
 
 mul.s $f10 , $f9 , $f7       #multiply  $f9 and $f7 and the result in $f10
 mul.s $f11 , $f10 , $f7      #multiply  $f10 and $f7 and the result in $f11(pow1)
 
 mul.s $f13 , $f11 , $f7        #multiply  $f7 and $f11 and the result in $f13 
 mul.s $f14 , $f13 , $f7       #multiply  $f13 and $f7 and the result in $f14(pow2)
 
 

mtc1 $t1 , $f20             # convert from integer t1 (f) to float $f20 
cvt.s.w $f20 , $f20           # convert from word to single ($f20)
div.s $f15 , $f9 , $f20         #divide $f9 with $f20 and the result in $f15



mtc1 $t4 , $f21                   # convert from integer t4 (f1) to float $f21 
cvt.s.w $f21 , $f21              # convert from word to single ($f21)
div.s $f16 , $f11 , $f21           #divide $f11 with $f21 and the result in $f16

mtc1 $t5 , $f22                # convert from integer t5 (f2) to float $f22 
cvt.s.w $f22 , $f22              # convert from word to single ($f22)

div.s $f17 , $f14 , $f22          #divide $f14 with $f22 and the result in $f17


sub.s $f18 , $f7 , $f15         #subtract $f7 (rad) with $f15  and the result in $f18

add.s $f19 , $f18 , $f16       #add $f18  with $f16  and the result in $f19

sub.s  $f23 , $f19 , $f17     #subtract $f19  with $f17  and the result in $f23


  li $v0 , 2              #system call for scan float number
  mov.s $f12, $f23            # move $f23 to $f12 
 syscall

   li  $v0 , 4            # system call for print string
 la  $a0 , str6           #print string (str6)
 syscall 


 
 
 
  
  j Exit
  Else14:
  bne $s7 , 6 Else15
  

       li  $v0 , 4         # system call for print string
 la  $a0 , str9             # load address of str9 to print
 syscall
 
 

 


 
 
  

 
 
  lwc1 $f4  ,  num           #load word (num = 3.142) to $f4
  lwc1 $f2 , num1         #load word (num1 =180.0) to $f4
  
 li $v0, 6                     # system call for scan float
syscall


 li  $v0 , 4                 # system call for print string
 la  $a0 , str31                   #print string (str31)
 syscall

 

  div.s $f6 , $f4 , $f2       # divide num / num1 ($f4/$f2) and the result in $f6
 
 mul.s $f7 , $f6 , $f0      #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 
 mul.s $f8 , $f7 , $f7      #multiply  $f7 and $f7 and the result in $f8 
 
 
 mul.s  $f9 , $f8 , $f7      #multiply  $f8 and $f7 and the result in $f9 
 mul.s $f10 , $f9 , $f7       #multiply  $f9 and $f7 and the result in $f10
 
 
 mul.s $f11 , $f10 , $f7     #multiply  $f10 and $f7 and the result in $f11 
 mul.s $f13 , $f11 , $f7    #multiply  $f11 and $f7 and the result in $f13 

 
 
mtc1 $s6 , $f24     # convert from integer s6 (f3) to float $f24 
cvt.s.w $f24 , $f24     # convert from word to single ($f24)
 
div.s $f15 , $f8 , $f24       #divide $f8 with $f24 and the result in $f15

mtc1 $a0 , $f25         # convert from integer a0 (f4) to float $f25 
cvt.s.w $f25 , $f25        # convert from word to single ($f25)

div.s $f16, $f10 , $f25     #divide $f10 with $f25 and the result in $f16


mtc1 $a1 , $f26         # convert from integer a1 (f5) to float $f26 
cvt.s.w $f26 , $f26       # convert from word to single ($f26)
 
div.s $f17 , $f13 , $f26      #divide $f13 with $f26 and the result in $f17


lwc1 $f27 ,num4            #load word  num4 (1.0) to $f27
sub.s $f18 , $f27 , $f15    # subtract $f27  with $f15  and the result in $f18

add.s $f19 , $f18 , $f16    #add $f18  with $f16  and the result in $f19

sub.s  $f28 , $f19 , $f17   #subtract $f19  with $f17  and the result in $f28


  li $v0 , 2           # system call for print float
  mov.s $f12, $f28         #move value of  $f28 to $f12 to print it
 syscall

   li  $v0 , 4                   # system call for print string
 la  $a0 , str6                 #print string (str6)
 syscall



 
 j Exit
  Else15:
  bne $s7 , 7 Else16
  
      li  $v0 , 4          # system call for print string
 la  $a0 , str9          #print string (str9)
 syscall
 
 


 
 
  lwc1 $f4  ,  num           #load word (num = 3.142) to $f4
  lwc1 $f2 , num1                #load word (num1 = 180.0) to $f2
  
 li $v0, 6            # system call for scan float
syscall


 li  $v0 , 4                   # system call for print string
 la  $a0 , str32                     #print string (str32)
 syscall 

 

  div.s $f6 , $f4 , $f2        # divide num / num1 ($f4/$f2) and the result in $f6   
 
 mul.s $f7 , $f6 , $f0                #multiply  $f6 and $f0 and the result in $f7 (rad)
 
 
 mul.s $f8 , $f7 , $f7               #multiply  $f7 and $f7 and the result in $f8  
 mul.s  $f9 , $f8 , $f7                   #multiply  $f8 and $f7 and the result in $f9
 
 
 mul.s $f10 , $f9 , $f7           #multiply  $f9 and $f7 and the result in $f10
 mul.s $f11 , $f10 , $f7              #multiply  $f10 and $f7 and the result in $f11 
 
 mul.s $f13 , $f11 , $f7           #multiply  $f11 and $f7 and the result in $f13
 mul.s $f14 , $f13 , $f7        #multiply  $f13 and $f7 and the result in $f14   
 
 
 mul.s $f15 , $f7 , $f7             #multiply  $f7 and $f7 and the result in $f15
  
 
 mul.s  $f16 , $f15 , $f7    #multiply  $f15 and $f7 and the result in $f16
 mul.s $f17 , $f16 , $f7      #multiply  $f16 and $f7 and the result in $f17
 
 
 mul.s $f18 , $f17 , $f7     #multiply  $f17 and $f7 and the result in $f18
 mul.s $f19 , $f18 , $f7      #multiply  $f18 and $f7 and the result in $f19

 

mtc1 $t1 , $f20       # convert from integer t1 (f) to float $f20 
cvt.s.w $f20 , $f20     # convert from word to single ($f20)


div.s $f23 , $f9 , $f20    #divide $f9 with $f20 and the result in $f23


mtc1 $t4 , $f21    # convert from integer t4 (f1) to float $f21 
cvt.s.w $f21 , $f21    # convert from word to single ($f21)

div.s $f27, $f11 , $f21  #divide $f11 with $f21 and the result in $f27

mtc1 $t5 , $f22       # convert from integer t5 (f2) to float $f22 
cvt.s.w $f22 , $f22     # convert from word to single ($f22)


div.s $f28 , $f14 , $f22    #divide $f14 with $f22 and the result in $f28

mtc1 $s6 , $f24    # convert from integer s6 (f3) to float $f24 
cvt.s.w $f24 , $f24     # convert from word to single ($f24)
div.s $f29 , $f15 , $f24    #divide $f15 with $f24 and the result in $f29
 

mtc1 $a0 , $f25    # convert from integer a0 (f4) to float $f25
cvt.s.w $f25 , $f25    # convert from word to single ($f25)
div.s $f30 , $f17  , $f25   #divide $f17 with $f25 and the result in $f30

mtc1 $a1 , $f26    # convert from integer a1 (f5) to float $f26 
cvt.s.w $f26 , $f26    # convert from word to single ($f26)
div.s $f31 , $f19 , $f26   #divide $f19 with $f26 and the result in $f31

sub.s $f1  , $f7 , $f23   # subtract $f7  with $f23  and the result in $f1
add.s  $f3 , $f1 , $f27    #add $f1  with $f27  and the result in $f3
sub.s $f3 , $f3 , $f28     # subtract $f3  with $f28  and the result in $f3
lwc1 $f5 , num4             #load word  num4 (1.0) to $f5
sub.s $f4, $f5 , $f29      # subtract $f5  with $f29  and the result in $f4
add.s $f12 , $f4 , $f30     #add $f4  with $f30  and the result in $f12
sub.s  $f12 , $f12 , $f31    # subtract $f12  with $f31  and the result in $f12

div.s $f12 , $f3 , $f12   #divide $f3 with $f12 and the result in $f12




  li $v0 , 2    # system call for print float
  mov.s $f12, $f12     #move $f12 to $f12 and print it
 syscall

   li  $v0 , 4            # system call for print string                               
 la  $a0 , str6             #print string (str6)
 syscall 


  
  j Exit
  Else16:
   bne $s7 , 8 Else17
   
 li  $v0 , 4        # system call for print string                                   
 la  $a0 , str12     #print string (str12)
 syscall
 
 li $v0, 6         # system call for scan flaot    
syscall
mov.s $f1, $f0         #move $f0 to $f1



   li  $v0 , 4                  # system call for print string
 la  $a0 , str13                  #print string (str13)
 syscall
  
  li  $v0 , 2               # system call for print float
mul.s $f12 , $f1 , $f1      #multiply  $f1 and $f1 and the result in $f12
  syscall
  
    li  $v0 , 4               # system call for print string
 la  $a0 , str6               #print string (str6)
 syscall
   j Exit
  Else17:
   bne $s7 , 9 Else18
   
   jal Triangle              #call to the function (Triangle)
  
  
 
 
   j Exit
   Else18:
  
   bne $s7 , 10 Else19
   
   
   jal Rectangle
   
   j Exit1
   Else19: 
   bne $s7 , 11 Else20
   
   jal main
   
j Exit

Else20:
bne $s7 , 0 Else21

li $s6 , 100
li  $v0 , 4                                         # system call for print string
 la  $a0 , str20
 syscall
 
 li $v0, 10                                                             # system call for exit
syscall

j Exit
Else21:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str21
 syscall
 li $s6 , 100
 
 li $v0, 10                                                             # system call for exit
syscall


Exit1:
j main
 
   
                                                           # print the string                                                              #exit                
li $v0, 10                                                             # system call for exit
syscall



min:
li $t0, 0 # sets index to 0
li $t1, 0 # sets input num to 0
li $t2, 0 # sets count to 0

li $v0, 4 # print the prompt
la $a0, arr
syscall # asks OS to print message

loop:
beq $t2, $a1, done # if count = 10, loop to main

li $v0, 5 # service number to read integer
syscall # asks OS to read integer
move $t1, $v0 # sets input to num

sb $t1, array($t0) # stores integer in array
addi $t0, $t0, 4 # increments index by 4
addi $t2, $t2, 1 # increments count
j loop # around input loop

done:
jr $ra

findMin:
la $t4, ($t1) # sets min to last number entered
li $t0, 0 # clears index to 0
li $t2, 0 # clears count to 0

loop1:
beq $t2, $a1, print # exits loop when everything is read
lw $t1, array($t0)
bgt $t1, $t4, check # checks for min
move $t4, $t1 # changes min

check:
addi $t0, $t0, 4 # increments address
addi $t2, $t2, 1 # increments count
j loop1

print:
li $v0, 4 # service number
la $a0, str8
syscall # asks OS to print message
li $v0, 1 # service number
move $a0, $t4
syscall # asks OS to print min
 
jr $ra



Triangle: 

li  $v0 , 4                                         # system call for print string
 la  $a0 , str25                                      #print string str25
 syscall
 
 
 
 li $v0, 5                                            # system call for scan integer
syscall
move $s1, $v0                                          #move v0(input)to s1(side1)

li $v0, 5                                         # system call for scan integer 
syscall
move $s2, $v0                                      # move v0(input)to s2(side2)


li $v0, 5                                            # system call for scan integer           
syscall
move $s3, $v0                                         #move v0(input)to s3(side3)


add $t0 ,$s1 , $s2
add $t1 , $s2 , $s3
add $t2  , $s1 ,$s3
slt  $t4 ,$t0,$s3 
beq $t0 ,$s3,Else22
beq  $t4 ,1,Else23
slt $t5,$t1,$s1 
beq $t1 ,$s1,Else24
beq  $t5 ,1,Else25
slt $t6,$t2,$s2 
beq $t2 ,$s2,Else26
beq  $t6 ,1,Else27


li  $v0 , 4                                         # system call for print string
 la  $a0 , str26                                     #print string str26
 syscall
j Exit                                                #jump to exit
Else22:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                      #print string str27
 syscall
 

 j Exit                                                 #jump to exit
Else23:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                      #print string str27
 syscall
 
 j Exit                                                #jump to exit
Else24:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                     #print string str27
 syscall
 j Exit                                              #jump to exit

Else25:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                      #print string str27
 syscall
 j Exit                                              #jump to exit
             
Else26: 

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                     #print string str27
 syscall
 j Exit                                                #jump to exit
Else27:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str27                                    #print string str27 
 syscall
 jr $ra                                             #jump return valus
Exit3:                                              #jump to exit


 


Rectangle:
li  $v0 , 4                                         # system call for print string 
 la  $a0 , str28                                    #print string str28
 syscall
 
 
 
 li $v0, 5                                         # system call for scan integer
syscall
move $s1, $v0                                     move v0(input)to s1(side1)

li $v0, 5                                          # system call for scan integer
syscall
move $s2, $v0                                      move v0(input)to s2(side2)


li $v0, 5                                          # system call for scan integer
syscall
move $s3, $v0                                       move v0(input)to s3(side3)
li $v0, 5                                           # system call for scan integer
syscall
move $s4, $v0                                       move v0(input)to s4(side4)                          



bne $s1 ,$s3,Else28                                 #branch ifs1 (side1) not equal s3(side3) 
bne $s2 ,$s4,Else29                                  #branch if s2(side2) not equal s4 (side4) 
beq  $s1 ,$s2,Else30                                 #branch ifs1 (side1)  equal s2(side2) 
beq $s3 ,$s4,Else31                                    #branch ifs3 (side3)  equal s4(side4)



li  $v0 , 4                                         # system call for print string
 la  $a0 , str29                                     #print string str29
 syscall
j Exit                                              jump to exit
Else28:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str30                                       #print string str30
 syscall
 
 j Exit                                               #jump to exit
Else29:

li  $v0 , 4                                         # system call for print string                                                     
 la  $a0 , str30                                    #print string str30
 syscall
 j Exit
Else30:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str30                                     #print string str30
 syscall
 j Exit
Else31:

li  $v0 , 4                                         # system call for print string
 la  $a0 , str30                                      #print string str30
 syscall
 
 Exit2:                                          #jump to exit
 
  jr $ra                                        #jump return value
  
  

 




