import csv

# Define the file name
file_name = 'iladata.csv'
count_column_name = 'count[31:0]'

try:
    with open(file_name, 'r', newline='') as csvfile:
        reader = csv.reader(csvfile)

        # --- Data Processing ---
        
        # Read the header and find the column index
        header = next(reader)
        try:
            count_column_index = header.index(count_column_name)
        except ValueError:
            print(f"Error: Column '{count_column_name}' not found in the header.")
            exit()
            
        # Skip the radix line
        radix = next(reader)

        previous_count = None
        is_sequential = True

        for i, row in enumerate(reader):
            try:
                current_count = int(row[count_column_index])
                if previous_count is not None:
                    if current_count != previous_count + 1:
                        # Add 2 to 'i' to account for the two header rows skipped
                        print(f"Error at line {i+3}: Value {current_count} does not follow {previous_count} sequentially.")
                        is_sequential = False
                        break
                previous_count = current_count
            except (ValueError, IndexError):
                print(f"Error processing line {i+3}: Invalid data found.")
                is_sequential = False
                break
        
        if is_sequential:
            print(f"Success: The '{count_column_name}' column in '{file_name}' increases sequentially by 1.")

except FileNotFoundError:
    print(f"Error: The file '{file_name}' was not found.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")

