/* Automation Studio generated header file */
/* Do not edit ! */
/* ECTempSim 1.00.1 */

#ifndef _ECTEMPSIM_
#define _ECTEMPSIM_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _ECTempSim_VERSION
#define _ECTempSim_VERSION 1.00.1
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG4
		#include "MTBasics.h"
#endif
#ifdef _SG3
		#include "MTBasics.h"
#endif
#ifdef _SGC
		#include "MTBasics.h"
#endif

/* Constants */
#ifdef _REPLACE_CONST
 #define ERR_TEMPLIB_GAIN_INVALID 45000
 #define ERR_TEMPLIB_TUNING_RANGE_INVALID 50000
#else
 #ifndef _GLOBAL_CONST
   #define _GLOBAL_CONST _WEAK const
 #endif
 _GLOBAL_CONST signed long ERR_TEMPLIB_GAIN_INVALID;
 _GLOBAL_CONST signed long ERR_TEMPLIB_TUNING_RANGE_INVALID;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct SimModInternalType
{	struct MTBasicsTimeDelay Tt_cool;
	struct MTBasicsTimeDelay Tt_heat;
	struct MTBasicsPT2 PT2;
	float k_h;
	float k_c;
	plcbit EnableOld;
	float RoomTemp;
} SimModInternalType;

typedef struct ECTempSimModel
{
	/* VAR_INPUT (analog) */
	float InHeat;
	float InCool;
	/* VAR_OUTPUT (analog) */
	unsigned long StatusID;
	float OutTemp;
	/* VAR (analog) */
	struct SimModInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit UpdateDone;
} ECTempSimModel_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void ECTempSimModel(struct ECTempSimModel* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ECTEMPSIM_ */

