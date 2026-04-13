import csv

def print_header(filename):
    with open(filename, newline='') as file:
        reader = csv.reader(file)
        header = next(reader)
        print("Header:", header)

def print_contents(filename):
    with open(filename, newline='') as file:
        reader = csv.reader(file)
        next(reader)  # skip header
        for row in reader:
            print(row)

print_header("iris.csv")
print_contents("iris.csv")


