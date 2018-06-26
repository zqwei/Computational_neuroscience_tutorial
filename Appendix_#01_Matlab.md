# Matlab tutorials

## Matrix like a excel table


| 1   | 2   | 3   | 4   | 5   |
|-----|-----|-----|-----|-----|
| 6   | ... | ... | ... | ... |
| ... | ... | ... | ... | 100 |

This is a 3 x 5 matrix. 3 is the number of rows, and 5 is the number of columns.
* Try this using `imagesc` and check if there is any difference of matrix coordinates from Cartesian coordinate system


## Create a matrix
*  Enter an explicit list of elements.
    *  Separate the elements of a row with blanks or commas.
    * Use a semicolon, ;  , to indicate the end of each row.
    * Surround the entire list of elements with square brackets, [ ] .
* Load matrices from external data files.
    * load function
*  Generate matrices using functions.
    * `zeros`
    * `ones`
    * `magic`
    * `rand`


### Matrix exercise
1. Try `zeros(10)`
2. Try `zeros(10, 1)` and `zeros(1, 10)`

What is the difference and why?

## Matrix operations
* Sum
* Transponse
*  Diagonal
* +, -, *, /, \, ^, ‘
* .*, ./, .\, .^

### Matrix operation exercise
1. Create a 3x3 matrix named A using rand
2. Compute A.*A
3. Compute A*A
4. What is the difference between **2** and **3** and why?

## Matrix indexing
* Subscripts `A(i , j)`
* The Colon Operator : 
* Concatenation `[;]` `[,]`
* Deleting Rows and Columns `[   ]`
* Scalar Expansion
* Logical Subscripting
* The find Function `find`

### Matrix indexing exercise
1. Create a 3x10 matrix named A using rand
2. Get 2nd row of matrix A using colon operation
3. Get even elements in 2nd row of matrix A using colon operation
4. Set even elements in 2nd row of matrix A to zeros using scalar expansion
5. Find elements in A with value below 0.5

## Cell array
* Cell arrays in MATLAB are multidimensional arrays whose elements are copies of other arrays.
* Cell arrays are created by enclosing a miscellaneous collection of things in curly braces, {} .
* The curly braces are also used with subscripts to access the contents of various cells.
 
### Cell array exercise
1. Create a 3 x 10 matrix named A using rand
2. Create a cell array where the first element is A, the second is the sum along row of A, the third is the sum along column of A
3. Extra — think if any other structure you can use to store these variables together without using a cell array.

## Structures
Structures are multidimensional MATLAB arrays with elements accessed by textual field designators . For example,
S.name = 'Ed Plum';
S.score = 83;
S.grade = 'B+'
creates a scalar structure with three fields:
```matlab
S =
        name: 'Ed Plum'
        score: 83
        grade: 'B+'
```

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
