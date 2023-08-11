# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah P M Symmons, 2023.

import sys, csv, re

codes = [{"code":"9N4I.00","system":"readv2"},{"code":"9N4p.00","system":"readv2"},{"code":"9NiA.00","system":"readv2"},{"code":"9NiD.00","system":"readv2"},{"code":"9NiE.00","system":"readv2"},{"code":"9OLB.00","system":"readv2"},{"code":"9OLG.00","system":"readv2"},{"code":"9OLH.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-attended---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-attended---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-attended---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
