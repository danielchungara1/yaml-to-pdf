
# SIM MES API Documentation  
This document describe Rest MES API and show examples of two uses case. Request IMEI EDF information and post test result  
  
**Servers**  
 * https://rg.qa.sim.ad.mirgor.com.ar:8081/QA-int/  
  
#### POST /device __--  
___  
**Request: edf file information**  

 |Body                   |      Parameters       
 |:-----------------------|:--------------------------- 
 |required               |  No parameters  
    
 |Example                 |      Methodparameter     
 |:-----------------------|:---------------------------
 |user: sys              |  BarCode: 352125110156238 
 |password: ******       |                           
 |method: MES_PA_WI1012  |
  
 |Example Description|     
 |:-----------------------| 
 |This sample show how station call api to request edf file information from MES|               
___
**Response: edf file information** 

 | Code     | Description | Links    | Media type|                    
 |:---------|:------------|:---------|---------|  
 | 200      | OK          | No Links | application/json| 
 
 | Example       |      Content     
 |:--------------|:---------------------------
 | state: true   |  SKU: SM-A107MZKAARO 
 |               |  IMEI: 352125110156238                         
 |               |  PROD_SN: R00MC037TMJ     
 |               |  SLAVE_IMEI: SW_S96116BA1_V064_M10_EF_SS_N6_USRD_ATO
 |               |  SW_VERSION: R00MC037TMJ
 |               |  HW_VERSION: MP1.0
 |               |  BT_ADDR: 48794DD8CF3C
 |               |  MAC_ADDR: 48794DD8CF3B
 |               |  NCK: 0
 |               |  MCK: 0
 |               |  UN_NUM: W155144303D9B59BF6B6
 |               |  PACK_ID: null
 |               |  BOX_ID: C1619121600035
 |               |  PALLET_ID: P1619121600050
 |               |  MANUFACTURE: JDM_WTCN
 |               |  PROD_DATE: 20191216
 |               |  SHIP_DATE: 20191219
 |               |  DO_NUM: 8498124585
 |               |  PO: null
 |               |  SHIP_QTY: 2000
 |               |  TRANSFER_DT: 20191219175436
 |               |  PARTS_SN_MAINPBA: 79C06DA500006
 |               |  PARTS_SN_SUBPBA: JDM_WTCN
 |               |  PARTS_SN_BATTERY: null
 |               |  PARTS_SN_REAR: null
 |               |  PARTS_SN_LCD: null
 |               |  PARTS_SN_CAM_RR1: null
 |               |  PARTS_SN_CAM_RR2: null
 |               |  PARTS_SN_FINGERS: null
 |               |  PARTS_SN_TA: null
 |               |  MODEL_SN: null
 |               |  BUYER_SN: null
 |               |  RGCK: null
 |               |  CSC_VERSION: null
 |               |  ICCID: null
 
 | Description|     
 |:-----------------------| 
 |This sample show how MES response to request edf file information|   
___  

**Other Responses: edf file information**
 
 | Code     | Description  | Links    |              
 |:---------|:-------------|:---------|
 | 401      | Unauthorized | No Links |
 | 403      | Forbidden    | No Links |
 | 404      | Not Found    | No Links |
 ___  
 
**Request: post test result**  

 |Body                   |      Parameters       
 |:-----------------------|:--------------------------- 
 |required               |  No parameters  
 
 |   Example               |      methodparameter                 |     testresult                      |   snresult     |     itemresult_1            |      itemresult_2                  |     itemresult_3                  |    itemresult4          
 |:------------------------|:-------------------------------------|:------------------------------------:|---------------|:----------------------------|:-----------------------------------|:----------------------------------|:---------------------------------
 |  user: sys              |  state: fail                         |  psn: 79823AA3000LU                 |   psn:         |   testCondition:            |   testCondition:                   |   testCondition:                  |   testCondition:                                      
 |  password: ******       |  errorcode: 52801                    |  workordernumber: 100000305427      |   FpSN:        |   testItem: Enter Test Mode |   testItem: Pcb Sn = 79823AA3000LU |   testItem: Check Barcode Routing |   testItem: Check Pcb Sn And Imei                     
 |  method: MES_BA_WI6041  |  ermessage: Enter  test mode failed. |  testStationId: 98                  |   CustSN:      |   testResult: -             |   testResult: -                    |   testResult: -                   |   testResult: -                                      
 |                         |                                      |  testStationName: CheckStation      |   Imei_1:      |   testUpperLimit: -         |   testUpperLimit: -                |   testUpperLimit: -               |   testUpperLimit: -                                   
 |                         |                                      |  linename: P0150                    |   Imei_2:      |   testLowerLimit: -         |   testLowerLimit: -                |   testLowerLimit: -               |   testLowerLimit: -                                   
 |                         |                                      |  hostname: WTDSK-006                |   Imei_3:      |   testFlag: pass            |   testFlag: pass                   |   testFlag: fail                  |   testFlag: fail                 
 |                         |                                      |  testTime: 13-11-2019 02:49:17      |   Imei_4:      |                             |                                    |                                   |                         
 |                         |                                      |  testModel: S96116AA1_CKIN_GR1_INS  |   MEID:        |                             |                                    |                                   |                         
 |                         |                                      |  testWorkID: 1                      |   LanMac:      |                             |                                    |                                   |                         
 |                         |                                      |  testVersion: WriteNumber 11.48.0.0 |   WifiMac:     |                             |                                    |                                   |                         
 |                         |                                      |  Fixture:                           |   Wifi2Mac:    |                             |                                    |                                   |                         
 |                         |                                      |  FixtureSN: 1                       |   BtMac:       |                             |                                    |                                   |                         
 |                         |                                      |  Powersupply:                       |   NetCode:     |                             |                                    |                                   |                         
 |                         |                                      |  PowersupplySN:                     |   ChipId:      |                             |                                    |                                   |                         
 |                         |                                      |  Instrument:                        |                |                             |                                    |                                   |                         
 |                         |                                      |  InstrumentSN:                      |                |                             |                                    |                                   |                         
 |                         |                                      |  Operator:                          |                |                             |                                    |                                   |                         

 |Example Description|     
 |:-----------------------| 
 |This sample show how station post test result to MES|               
___
**Response: response test result** 

 | Code     | Description | Links    | Media type|                    
 |:---------|:------------|:---------|---------|  
 | 200      | OK          | No Links | application/json| 
 
 | Response      |      Content     
 |:--------------|:---------------------------
 | state: true   |  SKU: SM-A107MZKAARO 
 |               |  IMEI: 352125110156238
  
 | Description|     
 |:-----------------------| 
 |This sample show how MES response to post test result to station|                          
___
**Other Responses: post test resul**
 
 | Code     | Description  | Links    |              
 |:---------|:-------------|:---------|
 | 401      | Unauthorized | No Links |
 | 403      | Forbidden    | No Links |
 | 404      | Not Found    | No Links |
 
___
#### Schemas Call

  User                  |      Password            |     Method                 |  Method Paramenter
  ----------------------|--------------------------|----------------------------|-----------------
  string                |  string                  |  string                    |  string
  System user           |  Password user           |  MES Function name to call |  method information to use in function call
