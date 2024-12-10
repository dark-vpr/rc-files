## REMOVE DEPENDENCIES

def RMDep():
    import re
    from collections import defaultdict

    # Read the content of the file
    with open('req.txt', 'r') as file:
        content = file.readlines()

    # Dictionary to store the counts
    counts = defaultdict(int)

    # Regular expression to match the pattern
    pattern = re.compile(r'(\+1)+\s+(\S+)')

    # Process each line
    for line in content:
        match = pattern.match(line)
        if match:
            count = line.count('+1')
            name = match.group(2)
            counts[name] += count

    # Use a set to store unique names with sum > 1
    unique_names = sorted(set(name for name, count in counts.items() if count == 1))

    # Write the unique names to req2.txt
    with open('req2.txt', 'w') as file:
        for name in unique_names:
            file.write(f'"{name}",\n')
 
 
## MAIN 
if __name__ == '__main__':
    RMDep()