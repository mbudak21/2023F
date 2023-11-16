## UML Sequence Diagram

### Step1: Object&Class names
![[Pasted image 20231115120013.png|450]]
1) **:ClassName**
	If starts with ":" Object name is not specified, is an instance of the ClassName.
2) **ObjectName:ClassName**
	ObjectName: Name of the object
	ClassName: name of the class
3) **ClassName**
	No instance. Can only call static methods


```python


class LoginView:
	def __init__(self):
		self.players = []
		# Draw the login screen

	def login(self):
		# Get input from the buttons: 
			#username1, token1, username2, token2

		self.players.append(user1, user2)
		


class MenuView:
	def __init__(self):
		# Draw the login screen
		
	def start_login(self): #Button
		LoginViewInstance = LoginView()

	

Menu = menu() # Get new menu instance





```