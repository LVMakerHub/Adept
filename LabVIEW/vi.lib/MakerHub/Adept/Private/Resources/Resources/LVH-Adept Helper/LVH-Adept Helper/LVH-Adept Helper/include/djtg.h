/************************************************************************/
/*                                                                      */
/*    djtg.h  --    Interface Declarations for djtg.DLL                 */
/*                                                                      */
/************************************************************************/
/*    Author: Joshua Pederson                                           */
/*    Copyright 2007 Digilent Inc.                                      */
/************************************************************************/
/*  File Description:                                                   */
/*                                                                      */
/*    This header file contains the interface declarations for the      */
/*    applications programming interface to the Digilent djtg.DLL       */
/*                                                                      */
/*    This DLL provides API services to provide the JTAG                */
/*    application protocol for Adept2.                                  */
/*                                                                      */
/************************************************************************/
/*  Revision History:                                                   */
/*                                                                      */
/*  04/23/2007(JPederson): Created                                      */
/*  08/15/2007(JPederson):  changed File and API name to djtg           */
/*  10/01/2008(GeneA): Added DjtgEnableEx                               */
/*  10/22/2008(GeneA): Added functions DjtgGetPortCount and             */
/*      DjtgGetPortCapabilities                                         */
/*  12/07/2009(GeneA): change int parameters to INT32                   */
/*  02/25/2010(MichaelA): rewrote to be cross platform compatible       */
/*  11/02/2011(MichaelA): added functions DjtgEnableTransBuffering and  */
/*      DjtgWait                                                        */
/*  11/29/2011(MichaelA): added function DjtgSyncBuffer                 */
/*  05/08/2012(MichaelA): added new port properties bits                */
/*  05/08/2012(MichaelA): added new functions for devices that support  */
/*      1149.7-2009                                                     */
/*  06/13/2012(MichaelA): added fOverlap parameter to DjtgEscape        */
/*  06/13/2012(MichaelA): added function DjtgCheckPacket                */
/*  12/04/2012(MichaelA): added new port property bits                  */
/*  12/04/2012(MichaelA): added functions DjtgBatch and DjtgSetReset    */
/*  12/05/2012(MichaelA): added function DjtgGetBatchProperties         */
/*  12/10/2012(MichaelA): renamed DjtgSetReset to DjtgSetAuxReset       */
/*                                                                      */
/************************************************************************/

#if !defined(DJTG_INCLUDED)
#define      DJTG_INCLUDED

/* ------------------------------------------------------------ */
/*                  Miscellaneous Declarations                  */
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*                  General Type Declarations                   */
/* ------------------------------------------------------------ */

/* Define port properties bits for JTAG ports.
*/
const DPRP  dprpJtgSetSpeed         = 0x00000001; // port supports set speed call
const DPRP  dprpJtgSetPinState      = 0x00000002; // device fully implements DjtgSetTmsTdiTck
const DPRP  dprpJtgTransBuffering   = 0x00000004; // port supports transaction buffering
const DPRP  dprpJtgWait             = 0x00000008; // port supports DjtgWait
const DPRP  dprpJtgDelayCnt         = 0x00000010; // port supports DjtgSetDelayCnt and DjtgGetDelayCnt
const DPRP  dprpJtgReadyCnt         = 0x00000020; // port supports DjtgSetReadyCnt and DjtgGetReadyCnt
const DPRP  dprpJtgEscape           = 0x00000040; // port supports DjtgEscape
const DPRP  dprpJtgMScan            = 0x00000080; // port supports the MScan format
const DPRP  dprpJtgOScan0           = 0x00000100; // port supports the OScan0 format
const DPRP  dprpJtgOScan1           = 0x00000200; // port supports the OScan1 format
const DPRP  dprpJtgOScan2           = 0x00000400; // port supports the OScan2 format
const DPRP  dprpJtgOScan3           = 0x00000800; // port supports the OScan3 format
const DPRP  dprpJtgOScan4           = 0x00001000; // port supports the OScan4 format
const DPRP  dprpJtgOScan5           = 0x00002000; // port supports the OScan5 format
const DPRP  dprpJtgOScan6           = 0x00004000; // port supports the OScan6 format
const DPRP  dprpJtgOScan7           = 0x00008000; // port supports the OScan7 format
const DPRP  dprpJtgCheckPacket      = 0x00010000; // port supports DjtgCheckPacket
const DPRP  dprpJtgBatch            = 0x00020000; // port supports DjtgBatch
const DPRP  dprpJtgSetAuxReset      = 0x00040000; // port supports DjtgSetAuxReset

/* Define the symbols used to specify the scan format when calling
** DjtgSetScanFormat.
*/
const BYTE  jtgsfNone               = 0;
const BYTE  jtgsfJScan0             = 1;
const BYTE  jtgsfJScan1             = 2;
const BYTE  jtgsfJScan2             = 3;
const BYTE  jtgsfJScan3             = 4;
const BYTE  jtgsfMScan              = 5;
const BYTE  jtgsfOScan0             = 6;
const BYTE  jtgsfOScan1             = 7;
const BYTE  jtgsfOScan2             = 8;
const BYTE  jtgsfOScan3             = 9;
const BYTE  jtgsfOScan4             = 10;
const BYTE  jtgsfOScan5             = 11;
const BYTE  jtgsfOScan6             = 12;
const BYTE  jtgsfOScan7             = 13;

/* Define the symbols used to specify the edge count when calling
** DjtgEscape.
*/
const BYTE cedgeJtgCustom           = 2; // Number of edges for a Custom Escape
const BYTE cedgeJtgDeselect         = 4; // Number of edges for a Deselection Escape
const BYTE cedgeJtgSelect           = 6; // Number of edges for a Selection Escape
const BYTE cedgeJtgReset            = 8; // Number of edges for a Reset Escape

/* ------------------------------------------------------------ */
/*              JTG Batch Command Declarations                  */
/* ------------------------------------------------------------ */

#define jcbSetTmsTdiTck     1
#define jcbGetTmsTdiTdoTck  2
#define jcbPutTms           3
#define jcbPutTmsGetTdo     4
#define jcbPutTdi           5
#define jcbPutTdiGetTdo     6
#define jcbGetTdo           7
#define jcbClockTck         8
#define jcbWaitUs           9
#define jcbSetAuxReset      10

const UINT32    djbpWaitUs      = 0x00000001;
const UINT32    djbpSetAuxReset = 0x00000002;

/* ------------------------------------------------------------ */
/*                  Object Class Declarations                   */
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*                  Variable Declarations                       */
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*                Interface Procedure Declarations              */
/* ------------------------------------------------------------ */

DPCAPI BOOL DjtgGetVersion(char * szVersion);
DPCAPI BOOL DjtgGetPortCount(HIF hif, INT32 * pcprt);
DPCAPI BOOL DjtgGetPortProperties(HIF hif, INT32 prtReq, DWORD * pdprp);
DPCAPI BOOL DjtgGetBatchProperties(HIF hif, INT32 prtReq, UINT32 * pdjbp);
DPCAPI BOOL DjtgEnable(HIF hif);
DPCAPI BOOL DjtgEnableEx(HIF hif, INT32 prtReq);
DPCAPI BOOL DjtgDisable(HIF hif);

// configuration functions
DPCAPI BOOL DjtgGetSpeed(HIF hif, DWORD * pfrqCur);
DPCAPI BOOL DjtgSetSpeed(HIF hif, DWORD frqReq, DWORD * pfrqSet);
DPCAPI BOOL DjtgSetTmsTdiTck(HIF hif, BOOL fTms, BOOL fTdi, BOOL fTck);
DPCAPI BOOL DjtgGetTmsTdiTdoTck(HIF hif, BOOL* pfTms, BOOL* pfTdi, BOOL* pfTdo, BOOL* pfTck);
DPCAPI BOOL DjtgSetAuxReset(HIF hif, BOOL fReset, BOOL fEnOutput);
DPCAPI BOOL DjtgEnableTransBuffering(HIF hif, BOOL fEnable);
DPCAPI BOOL DjtgSyncBuffer(HIF hif);

// misc. functions
DPCAPI BOOL DjtgWait(HIF hif, DWORD tusWait, DWORD * ptusWaited);

// overlapped functions
DPCAPI BOOL DjtgPutTdiBits(HIF hif, BOOL fTms, BYTE * rgbSnd, BYTE * rgbRcv, DWORD cbits, BOOL fOverlap);
DPCAPI BOOL DjtgPutTmsBits(HIF hif, BOOL fTdi, BYTE * rgbSnd, BYTE * rgbRcv, DWORD cbits, BOOL fOverlap);
DPCAPI BOOL DjtgPutTmsTdiBits(HIF hif, BYTE * rgbSnd, BYTE * rgbRcv, DWORD cbitpairs, BOOL fOverlap);
DPCAPI BOOL DjtgGetTdoBits(HIF hif, BOOL fTdi, BOOL fTms, BYTE * rgbRcv, DWORD cbits, BOOL fOverlap);
DPCAPI BOOL DjtgClockTck(HIF hif, BOOL fTms, BOOL fTdi, DWORD cclk, BOOL fOverlap);
DPCAPI BOOL DjtgBatch(HIF hif, DWORD cbSnd, BYTE * rgbSnd, DWORD cbRcv, BYTE * rgbRcv, BOOL fOverlap);

// 1149.7-2009 configuration functions
DPCAPI BOOL DjtgSetScanFormat(HIF hif, BYTE jtgsfFmt, BOOL fShiftXR);
DPCAPI BOOL DjtgGetScanFormat(HIF hif, BYTE* pjtgsfFmt, BOOL* pfShiftXR);
DPCAPI BOOL DjtgSetReadyCnt(HIF hif, BYTE cbitRdy, DWORD* pcretOutReq, DWORD* pcretOutSet);
DPCAPI BOOL DjtgGetReadyCnt(HIF hif, BYTE* pcbitRdy, DWORD* pcretOut);
DPCAPI BOOL DjtgSetDelayCnt(HIF hif, DWORD cbitDlyReq, DWORD* pcbitDlySet, BOOL fReset);
DPCAPI BOOL DjtgGetDelayCnt(HIF hif, DWORD* pcbitDly, BOOL* pfReset);

// 1149.7-2009 misc. functions
DPCAPI BOOL DjtgCheckPacket(HIF hif, BYTE cedgeNop, BOOL fReset, BOOL fOverlap);
DPCAPI BOOL DjtgEscape(HIF hif, BYTE cedgeEsc, BOOL fOverlap);

/* ------------------------------------------------------------ */

#endif                    // DJTG_INCLUDED

/************************************************************************/


