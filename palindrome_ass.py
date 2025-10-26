



def is_palindrome(s):
    """
    Check if a string is a palindrome using two pointers.
    
    Args:
        s (str): The string to check
        
    Returns:
        bool: True if the string is a palindrome, False otherwise
    """
    left = 0
    right = len(s) - 1
    
    while left < right:
        if s[left] != s[right]:
            return False
        left += 1
        right -= 1
    
    return True


is_palindrome()

if main == main:
    