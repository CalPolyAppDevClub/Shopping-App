def perm_gen_lex(a):
    """Repeatedly appends each permuation to the accompanying letter. The
    addition on l appends the first letter and the rest of the permutation.
    It does this for each combination under that letter until the length of l
    reaches the length of the given combination at that time, and then returns
    l, adding the new permutations upwards to add to the letter associated with
    that above it, until the original for loop is concluded and the list is
    returned."""
    #List to add strings to
    l = []
    #Runs through each character of 'a' as indexes for the simple string
    for i in range(len(a)):
        #Return a as a list if it's only one character, as the permutation
        #for this instance can be concluded at this point
        if len(a) == 1:
            return [a]
        else:
            #String without first character
            simple_str = a[:i] + a[i + 1:]
            #Add to the permutation list a list of all permutations of the simpler
            #string with the first letter that was removed. LIST COMPREHENSION
            l += [a[i] + el for el in perm_gen_lex(simple_str)]
        #Once the length of the permutation list has reached the same length
        #as the original string, return that list of permutations
        if len(l) == len(a):
            return l

    #return overall list of permutations for each character of that string
    return l
