import sys
import xlrd

path = sys.argv[1]

wb = xlrd.open_workbook(path)
ws = wb.sheet_by_index(0)

values = [ws.row_values(i) for i in range(ws.nrows)]

for value in values:
    print(",".join(map(str, value)))
