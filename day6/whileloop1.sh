/bin/bash

<pre>totalSal<font color="#5EBDAB">=</font>0
empRate<font color="#5EBDAB">=</font>20
noOfworkingDay<font color="#5EBDAB">=</font>20

<font color="#5EBDAB">for</font> <font color="#5EBDAB">((</font> i<font color="#5EBDAB">=</font>1<font color="#5EBDAB">;</font>i<font color="#5EBDAB">&lt;=</font><font color="#EC0101"><b>$noOfworkingDay</b></font><font color="#5EBDAB">;</font>i++ <font color="#5EBDAB">))</font>
<font color="#5EBDAB">do</font><span style="background-color:#5EBDAB">      </span>
        randomCheck<font color="#5EBDAB">=$((</font>RANDOM%3<font color="#5EBDAB">))</font>
        <font color="#5EBDAB">case</font>  <font color="#EC0101"><b>$randomCheck</b></font> <font color="#5EBDAB">in</font>
                <font color="#EC0101"><b>$isfullTime</b></font> <font color="#5EBDAB">)</font>
                        empHrs<font color="#5EBDAB">=</font>8<font color="#5EBDAB">;;</font>
                <font color="#EC0101"><b>$ispartTime</b></font> <font color="#5EBDAB">)</font>
                        empHrs<font color="#5EBDAB">=</font>4<font color="#5EBDAB">;;</font>
                *<font color="#5EBDAB">)</font>
                        empHrs<font color="#5EBDAB">=</font>0<font color="#5EBDAB">;;</font>
        <font color="#5EBDAB">esac</font>
        salary<font color="#5EBDAB">=$((</font><font color="#EC0101"><b>$empHrs</b></font>*<font color="#EC0101"><b>$empRate</b></font><font color="#5EBDAB">))</font>
        totalSalary<font color="#5EBDAB">=$((</font><font color="#EC0101"><b>$totalSal</b></font>+<font color="#EC01
