const String crewAppbarTitle = 'אנשי צוות';

final columns = [
  'יום הולדת', //0
  'סבב שבת', //1
  'סבב חול', //2
  'כניסה לקבע', //3
  'תאריך שחרור', //4
  'מדור', //5
  'לא זמין עד', //6
  'שבת לפני אחרונה', //7
  'חג אחרון', //8
  'שבת אחרונה', //9
  'יום חול אחרון', //10
  'מפקד', //11
  'מספר טלפון', //12
  'דרגה', //13
  'מספר אישי', //14
  'שם' //15
];

enum MemeberAttribute {
  uuid,
  fullName,
  personalNumber,
  memberRank,
  phoneNumber,
  isCommander,
  lastRegularDay,
  lastShabat,
  lastHoliday,
  beforeLastShabat,
  notAvailableUntil,
  section,
  releaseDate,
  kevaDate,
  regularDayFreq,
  shabatFreq,
  birthday,
}
