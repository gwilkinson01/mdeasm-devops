import json

def process_domains(input_file, output_file):
    try:
        with open(input_file, 'r') as infile:
            domains = infile.read().splitlines()

        with open(output_file, 'a') as outfile:
            for domain in domains:
                # Create the JSON structure
                json_structure = {
                    "name": domain,
                    "kind": "contact"
                }
                # Convert the JSON structure to a string
                json_string = json.dumps(json_structure)
                # Write the JSON string to the output file, followed by a comma and newline
                outfile.write(json_string + ',\n')

        print(f"Processed {len(domains)} domains.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Specify your input and output file names
input_file = 'domains.txt'
output_file = 'output.txt'

# Call the function to process domains
process_domains(input_file, output_file)
