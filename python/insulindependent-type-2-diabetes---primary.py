# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah P M Symmons, 2023.

import sys, csv, re

codes = [{"code":"66Ap.00","system":"readv2"},{"code":"C100011","system":"readv2"},{"code":"C100112","system":"readv2"},{"code":"C108.00","system":"readv2"},{"code":"C108.11","system":"readv2"},{"code":"C108600","system":"readv2"},{"code":"C108700","system":"readv2"},{"code":"C108800","system":"readv2"},{"code":"C108C00","system":"readv2"},{"code":"C108D00","system":"readv2"},{"code":"C108H00","system":"readv2"},{"code":"C109.00","system":"readv2"},{"code":"C109500","system":"readv2"},{"code":"C109600","system":"readv2"},{"code":"C109700","system":"readv2"},{"code":"C109B00","system":"readv2"},{"code":"C109C00","system":"readv2"},{"code":"C109G00","system":"readv2"},{"code":"C109J00","system":"readv2"},{"code":"C109J11","system":"readv2"},{"code":"C109J12","system":"readv2"},{"code":"C10E.12","system":"readv2"},{"code":"C10E712","system":"readv2"},{"code":"C10E812","system":"readv2"},{"code":"C10FJ00","system":"readv2"},{"code":"C10FJ11","system":"readv2"},{"code":"C1A..00","system":"readv2"},{"code":"TJ23000","system":"readv2"},{"code":"U602312","system":"readv2"},{"code":"ZRbH.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["insulindependent-type-2-diabetes---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["insulindependent-type-2-diabetes---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["insulindependent-type-2-diabetes---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
