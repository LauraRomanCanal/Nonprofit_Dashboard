-- DUMPS -----------------------------------------------------

drop schema if exists db_npo;
create schema db_npo;
use db_npo;

create table basic_data (
  EIN varchar(9) default null,
  NAME varchar(70) default null,
  CITY varchar(22) default null,
  STATE varchar(2) default null,
  SEC_NAME varchar(100) default null,
  ADDRESS varchar(35) default null,
  ZIP varchar(10) default null,
  SUBSECCD varchar(10) default null,
  ORGCD varchar(6) default null,
  AFCD varchar(2) default null,
  CLASSCD varchar(4) default null,
  subcd varchar(2) default null,
  primary key (EIN)
) engine=innodb default charset=utf8;

create table f990_pc (
  EIN varchar(9) default null,
  f1096cnt decimal(14,0) default null,
  fw2gcnt decimal(14,0) default null,
  wthldngrulescd varchar(1) default null,
  noemplyeesw3cnt decimal(14,0) default null,
  filerqrdrtnscd varchar(1) default null,
  unrelbusinccd varchar(1) default null,
  filedf990tcd varchar(1) default null,
  frgnacctcd varchar(1) default null,
  prohibtdtxshltrcd varchar(1) default null,
  prtynotifyorgcd varchar(1) default null,
  filedf8886tcd varchar(1) default null,
  solicitcntrbcd varchar(1) default null,
  exprstmntcd varchar(1) default null,
  providegoodscd varchar(1) default null,
  notfydnrvalcd varchar(1) default null,
  filedf8282cd varchar(1) default null,
  f8282cnt decimal(14,0) default null,
  fndsrcvdcd varchar(1) default null,
  premiumspaidcd varchar(1) default null,
  filedf8899cd varchar(1) default null,
  filedf1098ccd varchar(1) default null,
  excbushldngscd varchar(1) default null,
  s4966distribcd varchar(1) default null,
  distribtodonorcd varchar(1) default null,
  initiationfees decimal(14,0) default null,
  grsrcptspublicuse decimal(14,0) default null,
  grsincmembers decimal(14,0) default null,
  grsincother decimal(14,0) default null,
  filedlieuf1041cd varchar(1) default null,
  txexmptint decimal(14,0) default null,
  qualhlthplncd varchar(1) default null,
  qualhlthreqmntn decimal(14,0) default null,
  qualhlthonhnd decimal(14,0) default null,
  rcvdpdtngcd varchar(1) default null,
  filedf720cd varchar(1) default null,
  totreprtabled decimal(14,0) default null,
  totcomprelatede decimal(14,0) default null,
  totestcompf decimal(14,0) default null,
  noindiv100kcnt decimal(14,0) default null,
  nocontractor100kcnt decimal(14,0) default null,
  totcntrbgfts decimal(14,0) default null,
  prgmservcode2acd decimal(14,0) default null,
  totrev2acola decimal(14,0) default null,
  prgmservcode2bcd decimal(14,0) default null,
  totrev2bcola decimal(14,0) default null,
  prgmservcode2ccd decimal(14,0) default null,
  totrev2ccola decimal(14,0) default null,
  prgmservcode2dcd decimal(14,0) default null,
  totrev2dcola decimal(14,0) default null,
  prgmservcode2ecd decimal(14,0) default null,
  totrev2ecola decimal(14,0) default null,
  totrev2fcola decimal(14,0) default null,
  totprgmrevnue decimal(14,0) default null,
  invstmntinc decimal(14,0) default null,
  txexmptbndsproceeds decimal(14,0) default null,
  royaltsinc decimal(14,0) default null,
  grsrntsreal decimal(14,0) default null,
  grsrntsprsnl decimal(14,0) default null,
  rntlexpnsreal decimal(14,0) default null,
  rntlexpnsprsnl decimal(14,0) default null,
  rntlincreal decimal(14,0) default null,
  rntlincprsnl decimal(14,0) default null,
  netrntlinc decimal(14,0) default null,
  grsalesecur decimal(14,0) default null,
  grsalesothr decimal(14,0) default null,
  cstbasisecur decimal(14,0) default null,
  cstbasisothr decimal(14,0) default null,
  gnlsecur decimal(14,0) default null,
  gnlsothr decimal(14,0) default null,
  netgnls decimal(14,0) default null,
  grsincfndrsng decimal(14,0) default null,
  lessdirfndrsng decimal(14,0) default null,
  netincfndrsng decimal(14,0) default null,
  grsincgaming decimal(14,0) default null,
  lessdirgaming decimal(14,0) default null,
  netincgaming decimal(14,0) default null,
  grsalesinvent decimal(14,0) default null,
  lesscstofgoods decimal(14,0) default null,
  netincsales decimal(14,0) default null,
  miscrev11acd decimal(14,0) default null,
  miscrevtota decimal(14,0) default null,
  miscrev11bcd decimal(14,0) default null,
  miscrevtot11b decimal(14,0) default null,
  miscrev11ccd decimal(14,0) default null,
  miscrevtot11c decimal(14,0) default null,
  miscrevtot11d decimal(14,0) default null,
  miscrevtot11e decimal(14,0) default null,
  totrevenue decimal(14,0) default null,
  grntstogovt decimal(14,0) default null,
  grnsttoindiv decimal(14,0) default null,
  grntstofrgngovt decimal(14,0) default null,
  benifitsmembrs decimal(14,0) default null,
  compnsatncurrofcr decimal(14,0) default null,
  compnsatnandothr decimal(14,0) default null,
  othrsalwages decimal(14,0) default null,
  pensionplancontrb decimal(14,0) default null,
  othremplyeebenef decimal(14,0) default null,
  payrolltx decimal(14,0) default null,
  feesforsrvcmgmt decimal(14,0) default null,
  legalfees decimal(14,0) default null,
  accntingfees decimal(14,0) default null,
  feesforsrvclobby decimal(14,0) default null,
  profndraising decimal(14,0) default null,
  feesforsrvcinvstmgmt decimal(14,0) default null,
  feesforsrvcothr decimal(14,0) default null,
  advrtpromo decimal(14,0) default null,
  officexpns decimal(14,0) default null,
  infotech decimal(14,0) default null,
  royaltsexpns decimal(14,0) default null,
  occupancy decimal(14,0) default null,
  travel decimal(14,0) default null,
  travelofpublicoffcl decimal(14,0) default null,
  converconventmtng decimal(14,0) default null,
  interestamt decimal(14,0) default null,
  pymtoaffiliates decimal(14,0) default null,
  deprcatndepletn decimal(14,0) default null,
  insurance decimal(14,0) default null,
  othrexpnsa decimal(14,0) default null,
  othrexpnsb decimal(14,0) default null,
  othrexpnsc decimal(14,0) default null,
  othrexpnsd decimal(14,0) default null,
  othrexpnse decimal(14,0) default null,
  othrexpnsf decimal(14,0) default null,
  totfuncexpns decimal(14,0) default null,
  nonintcashend decimal(14,0) default null,
  svngstempinvend decimal(14,0) default null,
  pldgegrntrcvblend decimal(14,0) default null,
  accntsrcvblend decimal(14,0) default null,
  currfrmrcvblend decimal(14,0) default null,
  rcvbldisqualend decimal(14,0) default null,
  notesloansrcvblend decimal(14,0) default null,
  invntriesalesend decimal(14,0) default null,
  prepaidexpnsend decimal(14,0) default null,
  lndbldgsequipend decimal(14,0) default null,
  invstmntsend decimal(14,0) default null,
  invstmntsothrend decimal(14,0) default null,
  invstmntsprgmend decimal(14,0) default null,
  intangibleassetsend decimal(14,0) default null,
  othrassetsend decimal(14,0) default null,
  totassetsend decimal(14,0) default null,
  accntspayableend decimal(14,0) default null,
  grntspayableend decimal(14,0) default null,
  deferedrevnuend decimal(14,0) default null,
  txexmptbndsend decimal(14,0) default null,
  escrwaccntliabend decimal(14,0) default null,
  paybletoffcrsend decimal(14,0) default null,
  secrdmrtgsend decimal(14,0) default null,
  unsecurednotesend decimal(14,0) default null,
  othrliabend decimal(14,0) default null,
  totliabend decimal(14,0) default null,
  unrstrctnetasstsend decimal(14,0) default null,
  temprstrctnetasstsend decimal(14,0) default null,
  permrstrctnetasstsend decimal(14,0) default null,
  capitalstktrstend decimal(14,0) default null,
  paidinsurplusend decimal(14,0) default null,
  retainedearnboy decimal(14,0) default null,
  retainedearnend decimal(14,0) default null,
  totnetassetboy decimal(14,0) default null,
  nonpfrea decimal(14,0) default null,
  totnooforgscnt decimal(14,0) default null,
  totsupport decimal(14,0) default null,
  gftgrntsrcvd170 decimal(14,0) default null,
  txrevnuelevied170 decimal(14,0) default null,
  srvcsval170 decimal(14,0) default null,
  pubsuppsubtot170 decimal(14,0) default null,
  exceeds2pct170 decimal(14,0) default null,
  pubsupplesspct170 decimal(14,0) default null,
  samepubsuppsubtot170 decimal(14,0) default null,
  grsinc170 decimal(14,0) default null,
  netincunreltd170 decimal(14,0) default null,
  othrinc170 decimal(14,0) default null,
  totsupp170 decimal(14,0) default null,
  grsrcptsrelated170 decimal(14,0) default null,
  totgftgrntrcvd509 decimal(14,0) default null,
  grsrcptsadmissn509 decimal(14,0) default null,
  grsrcptsactivities509 decimal(14,0) default null,
  txrevnuelevied509 decimal(14,0) default null,
  srvcsval509 decimal(14,0) default null,
  pubsuppsubtot509 decimal(14,0) default null,
  rcvdfrmdisqualsub509 decimal(14,0) default null,
  exceeds1pct509 decimal(14,0) default null,
  subtotpub509 decimal(14,0) default null,
  pubsupplesub509 decimal(14,0) default null,
  samepubsuppsubtot509 decimal(14,0) default null,
  grsinc509 decimal(14,0) default null,
  unreltxincls511tx509 decimal(14,0) default null,
  subtotsuppinc509 decimal(14,0) default null,
  netincunrelatd509 decimal(14,0) default null,
  othrinc509 decimal(14,0) default null,
  totsupp509 decimal(14,0) default null,
  NteeCat12 varchar(10) default null,
  primary key (EIN)
) engine=innodb default charset=utf8;

create table f990_ez (
  EIN varchar(9) default null,
  FNDNCD varchar(10) default null,
  DEDUCTCD varchar(4) default null,
  EOSTATUS varchar(4) default null,
  tax_pd varchar(6) default null,
  FisYr varchar(4) default null,
  totcntrbs decimal(14,0) default null,
  prgmservrev decimal(14,0) default null,
  duesassesmnts decimal(14,0) default null,
  othrinvstinc decimal(14,0) default null,
  grsamtsalesastothr decimal(14,0) default null,
  basisalesexpnsothr decimal(14,0) default null,
  gnsaleofastothr decimal(14,0) default null,
  grsincgaming decimal(14,0) default null,
  grsrevnuefndrsng decimal(14,0) default null,
  direxpns decimal(14,0) default null,
  netincfndrsng decimal(14,0) default null,
  grsalesminusret decimal(14,0) default null,
  costgoodsold decimal(14,0) default null,
  grsprft decimal(14,0) default null,
  othrevnue decimal(14,0) default null,
  totrevnue decimal(14,0) default null,
  totexpns decimal(14,0) default null,
  totexcessyr decimal(14,0) default null,
  othrchgsnetassetfnd decimal(14,0) default null,
  networthend decimal(14,0) default null,
  totassetsend decimal(14,0) default null,
  totliabend decimal(14,0) default null,
  totnetassetsend decimal(14,0) default null,
  actvtynotprevrptcd varchar(2) default null,
  chngsinorgcd varchar(2) default null,
  unrelbusincd varchar(2) default null,
  filedf990tcd varchar(2) default null,
  contractioncd varchar(2) default null,
  politicalexpend decimal(14,0) default null,
  filedf1120polcd varchar(2) default null,
  loanstoofficerscd varchar(2) default null,
  loanstoofficers decimal(14,0) default null,
  initiationfee decimal(14,0) default null,
  grspublicrcpts decimal(14,0) default null,
  s4958excessbenefcd varchar(2) default null,
  prohibtdtxshltrcd varchar(2) default null,
  nonpfrea decimal(14,0) default null,
  totnooforgscnt decimal(14,0) default null,
  totsupport decimal(14,0) default null,
  gftgrntsrcvd170 decimal(14,0) default null,
  txrevnuelevied170 decimal(14,0) default null,
  srvcsval170 decimal(14,0) default null,
  pubsuppsubtot170 decimal(14,0) default null,
  exceeds2pct170 decimal(14,0) default null,
  pubsupplesspct170 decimal(14,0) default null,
  samepubsuppsubtot170 decimal(14,0) default null,
  grsinc170 decimal(14,0) default null,
  netincunreltd170 decimal(14,0) default null,
  othrinc170 decimal(14,0) default null,
  totsupp170 decimal(14,0) default null,
  grsrcptsrelated170 decimal(14,0) default null,
  totgftgrntrcvd509 decimal(14,0) default null,
  grsrcptsadmissn509 decimal(14,0) default null,
  grsrcptsactivities509 decimal(14,0) default null,
  txrevnuelevied509 decimal(14,0) default null,
  srvcsval509 decimal(14,0) default null,
  pubsuppsubtot509 decimal(14,0) default null,
  rcvdfrmdisqualsub509 decimal(14,0) default null,
  exceeds1pct509 decimal(14,0) default null,
  subtotpub509 decimal(14,0) default null,
  pubsupplesub509 decimal(14,0) default null,
  samepubsuppsubtot509 decimal(14,0) default null,
  grsinc509 decimal(14,0) default null,
  unreltxincls511tx509 decimal(14,0) default null,
  subtotsuppinc509 decimal(14,0) default null,
  netincunrelatd509 decimal(14,0) default null,
  othrinc509 decimal(14,0) default null,
  totsupp509 decimal(14,0) default null,
  NteeCat12 varchar(10) default null,
  primary key (EIN)
) engine=innodb default charset=utf8;


load data local infile 'C:\\ALFONSO\\Dropbox\\Computing Project\\data\\csv\\basic_data.csv'
into table basic_data
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'C:\\ALFONSO\\Dropbox\\Computing Project\\data\\csv\\f990_pc.csv'
into table f990_pc
fields terminated by ','
enclosed by ''
lines terminated by '\n'
ignore 1 rows;

load data local infile 'C:\\ALFONSO\\Dropbox\\Computing Project\\data\\csv\\f990_ez.csv'
into table f990_ez
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
