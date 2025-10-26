def password_validation(password):
    """
    Check if a password is valid based on common security requirements.
    
    Requirements:
    - At least 8 characters long
    - Contains at least one uppercase letter
    - Contains at least one lowercase letter
    - Contains at least one digit
    - Contains at least one special character
    
    Args:
        password (str): The password to validate
        
    Returns:
        bool: True if password is valid, False otherwise
    """
    # Check minimum length
    if len(password) < 8:
        return False
    
    has_upper = False
    has_lower = False
    has_digit = False
    has_special = False
    
    special_characters = "!@#$%^&*()_+-=[]{}|;:',.<>?/`~"
    
    # Check each character
    for char in password:
        if char.isupper():
            has_upper = True
        elif char.islower():
            has_lower = True
        elif char.isdigit():
            has_digit = True
        elif char in special_characters:
            has_special = True
    
    # Return True only if all requirements are met
    return has_upper and has_lower and has_digit and has_special


# Test cases
print(password_validation("Pass123!"))      # True
print(password_validation("password"))      # False (no uppercase, digit, or special)
print(password_validation("PASSWORD123!"))  # False (no lowercase)
print(password_validation("Password!"))     # False (no digit)
print(password_validation("Pass123"))       # False (no special character)
print(password_validation("Abc1!"))         # False (too short)
print(password_validation("MyP@ssw0rd"))    # True
print(password_validation("Secure#2024"))   # True


