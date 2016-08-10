# timestamp_gen.py

import datetime as dt
import sys

# getting Arguments
# python timecode_cal.py CAM3_1 23567 2016/08/09 14:31:06:06
# last 06*10^6 (microsec)
header = sys.argv[1]
numFrames = int(sys.argv[2])
date_arg = sys.argv[3]
time_arg = sys.argv[4]

# parsing date_arg and time_arg
# date
year_arg = int(date_arg[0:4])
month_arg = int(date_arg[5:7])
day_arg = int(date_arg[8:])

# time
hour_arg = int(time_arg[0:2])
minute_arg = int(time_arg[3:5])
second_arg = int(time_arg[6:8])
micsec_arg = 1
#micsec_arg = int(time_arg[9:])*10000


# open text file
fileName = 'timestamp_'+ header + '.txt'
f = open(fileName, 'w')
opening = header + '\n' + 'timestamp    frameNumber(name)\n'
f.write(opening)

# set start time as timestamp yyyymmddhhmmss.sssssss format
unitTimePerFrame = 1/29.97
cumulTime = 0
startTime = dt.datetime(year_arg, month_arg, day_arg, hour_arg, minute_arg, second_arg, micsec_arg)

# write timeVariable.isoformat(sep='/')
for i in range(numFrames):
    timeForRecord = startTime + dt.timedelta(seconds=cumulTime)
    
    writeData = str(timeForRecord.isoformat(sep='/'))+'    '+'%07d.jpg'%i+'\n'
    f.write(writeData)
    cumulTime = round(unitTimePerFrame*(i+1), 6)

# close text file
f.close()
