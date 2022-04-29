
def error_monitor():
    infile = 'log.txt'

    term = "ERROR"

    # Open the log file
    with open(infile) as rf1:
        rf1 = rf1.readlines()

    # Open the report file for writting
    with open('output.txt', 'w') as wf:
        for line in rf1:

            # Check if extracted line contains the term value and split it
            if term in line:
                sp_line = line.split(' ')

                # Open the log file for the second time check necessary log lines with the error message
                with open(infile) as rf2:
                    rf2 = rf2.readlines()
                idx = 0
                new_list = []
                for line2 in rf2:
                    sp_line2 = line2.split(' ')

                    # Check if time is less than the Error date/time and belogs to the same user. Then add the line to the list
                    if sp_line2[0] <= sp_line[0] and sp_line2[1] <= sp_line[1] and sp_line2[2] == sp_line[2]:
                        new_list.insert(idx,line2)
                        idx += 1
                
                # Loop through the list view the last lines in the list
                for i in (-4, -3, -2, -1):
                    try:
                        if i == -1:
                            wf.write(new_list[i] + ' ----- \n')
                        else:
                            wf.write(new_list[i])
                    except (IndexError):
                        continue


if __name__ == "__main__":
    error_monitor()