





# function to add two user inputted values together
# def add_two():
#     while True:
#         value_1 = input("What will the first value be?: ")
#         value_2 = input("What will the second value be? ")
        
#         try:
#             value_1 = int(value_1)
#             value_2 = int(value_2)
            
#         except:
#             print("Error: Value must be an integer")
            
#         else:
#             break
    
#     total = value_1 + value_2
    
#     return total

# print(add_two())



# my_list = [4, 8, 2, 7, 6]

# try:
#     my_list[b] 
# except IndexError:
#     print("Error with code")
# except NameError:
#     print("Incorrect value in index")
    
# print("script complete")


def divide_two():
    '''A function that gets two numerical values from the user, that divides the first by the second'''
    value_1 = input("enter your first value: ")
    value_2 = input("enter your second value: ")
    
    try:
        value_1 = int(value_1)
        value_2 = int(value_2)
        
        total = value_1 / value_2
        
    except ValueError as e:
        print(f"Error: {e}")
        
    except ZeroDivisionError as e:
        print(f"Error: {e}")
        
    else:
        return total
    
# print(divide_two())

# creating a function to open a file

def file_opener(file_name):
    '''A function that will open a specified file'''
    try:
        with open(file_name, "r") as file:
                content = file.read()
                print(f"Filecontents: \n{content}")
    except FileExistsError as e:
        print(f"Error: {e}\n")
    except FileNotFoundError as e:
        print(f"Error: {e}\n")
    finally:
        try:
            file.close()
        except:
            print("whoops bad example, it all went wrong")
        
file_opener("open_me.txt")