#Navigating to a certain office in a building

Lexinton_Dr = {
	first_floor: {
        Security_Wing: [
        	"Break Room",
        	"CCTV Room"],
        Reception_Area: [
			"Receptionist's Desk",
			"Security Booth"],
        Restrooms: [
        	"Men's",
        	"Women's"]
	},
	second_floor: {
		The_Pit: [
			"Associates' Desks",
			"Printer/Copier Room",
		],
		Cleaning_Supplies: [
			"Janitor's Closet"
		],
	},
	third_floor: {
		Executive_Wing: [
			"Secretary's Desk/ Waiting Room",
			"Conference Room",
			"CEO office",
			"Private Restroom"]
	}
}


p Lexinton_Dr[:first_floor][:Security_Wing][0]

p Lexinton_Dr[:third_floor][:Executive_Wing][3]

Lexinton_Dr[:second_floor][:The_Pit].push("Intern's Table")

p Lexinton_Dr[:second_floor][:The_Pit]

Lexinton_Dr[:first_floor][:Security_Wing].reverse

p Lexinton_Dr