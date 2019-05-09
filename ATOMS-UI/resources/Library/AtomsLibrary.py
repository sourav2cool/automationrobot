############################################################################################################################
# Description : AtomsLibrary  contains the Library to perform several action in ATOMS Application .
# Developer   : Kiran Mandal
# Date        : 15th-February,2019
############################################################################################################################
import datetime
from datetime import timedelta

class AtomsLibrary:
    def ServiceType(self,service):
        result = []
        switcher={"BroadBand":"service_broadBand","Ethernet":"service_ethernet","Satellite":"service_satellite","SC/DF":"service_sc/df","TDM":"service_tdm"}
        for item in eval(service):
            if item in switcher.keys():
                val= switcher.get(item,"Invalid service type")            
                result.append(val)
        return result
    
    def ReverseDate(self,string):
        string1= str(string)
        date=string1.split("-")
        date1=str(date[::-1])
        f_date= date1.replace("[","").replace("]", "").replace(", ","-").replace("'","")
        unistring=unicode(f_date.strip("") , "utf-8")
        return unistring
    
    def EffectiveDate(self):
        date=datetime.date.today()
        return date
        
    def ExpireDate(self):
        td = timedelta(days=5)
        date=datetime.date.today()
        my_date = date + td
        return my_date
#Services=SelectServiceType()
#Services.ServiceType(["BroadBand","Ethernet","SC/DF"])