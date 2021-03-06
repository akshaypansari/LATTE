!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Copyright 2010.  Los Alamos National Security, LLC. This material was    !
! produced under U.S. Government contract DE-AC52-06NA25396 for Los Alamos !
! National Laboratory (LANL), which is operated by Los Alamos National     !
! Security, LLC for the U.S. Department of Energy. The U.S. Government has !
! rights to use, reproduce, and distribute this software.  NEITHER THE     !
! GOVERNMENT NOR LOS ALAMOS NATIONAL SECURITY, LLC MAKES ANY WARRANTY,     !
! EXPRESS OR IMPLIED, OR ASSUMES ANY LIABILITY FOR THE USE OF THIS         !
! SOFTWARE.  If software is modified to produce derivative works, such     !
! modified software should be clearly marked, so as not to confuse it      !
! with the version available from LANL.                                    !
!                                                                          !
! Additionally, this program is free software; you can redistribute it     !
! and/or modify it under the terms of the GNU General Public License as    !
! published by the Free Software Foundation; version 2.0 of the License.   !
! Accordingly, this program is distributed in the hope that it will be     !
! useful, but WITHOUT ANY WARRANTY; without even the implied warranty of   !
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General !
! Public License for more details.                                         !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SUBROUTINE DEALLOCATEALL

  USE SETUPARRAY
  USE UNIVARRAY
  USE PPOTARRAY
  USE NEBLISTARRAY
  USE MDARRAY
  USE KSPACEARRAY
  USE CONSTANTS_MOD
  USE SPINARRAY
  USE RESTARTARRAY
  USE SPARSEARRAY
  USE XBOARRAY
  USE COULOMBARRAY
  USE DIAGARRAY
  USE MDARRAY
  USE NONOARRAY
  USE PUREARRAY
  USE VIRIALARRAY

  IMPLICIT NONE
  IF (EXISTERROR) RETURN

  IF( ALLOCATED( ATELE )) DEALLOCATE( ATELE  )
  IF( ALLOCATED( BASIS )) DEALLOCATE( BASIS  )
  IF( ALLOCATED( BTYPE )) DEALLOCATE( BTYPE  )
  IF( ALLOCATED( ELE )) DEALLOCATE( ELE  )
  IF( ALLOCATED( ELE1 )) DEALLOCATE( ELE1  )
  IF( ALLOCATED( ELE2 )) DEALLOCATE( ELE2  )
  IF( ALLOCATED( PPELE1 )) DEALLOCATE( PPELE1  )
  IF( ALLOCATED( PPELE2 )) DEALLOCATE( PPELE2  )
  IF( ALLOCATED( PPELE )) DEALLOCATE( PPELE  )
  IF( ALLOCATED( DIAG_ZWORK )) DEALLOCATE( DIAG_ZWORK  )
  IF( ALLOCATED( HK )) DEALLOCATE( HK  )
  IF( ALLOCATED( HK0 )) DEALLOCATE( HK0  )
  IF( ALLOCATED( HKDIAG )) DEALLOCATE( HKDIAG  )
  IF( ALLOCATED( KBO )) DEALLOCATE( KBO  )
  IF( ALLOCATED( KEVECS )) DEALLOCATE( KEVECS  )
  IF( ALLOCATED( KF )) DEALLOCATE( KF  )
  IF( ALLOCATED( KHTMP )) DEALLOCATE( KHTMP  )
  IF( ALLOCATED( KORTHOH )) DEALLOCATE( KORTHOH  )
  IF( ALLOCATED( KXMAT )) DEALLOCATE( KXMAT  )
  IF( ALLOCATED( SK )) DEALLOCATE( SK  )
  IF( ALLOCATED( ZBO )) DEALLOCATE( ZBO  )
  IF( ALLOCATED( ZHEEVD_WORK )) DEALLOCATE( ZHEEVD_WORK  )
  IF( ALLOCATED( ZHJJ )) DEALLOCATE( ZHJJ  )
  IF( ALLOCATED( DIAG_IWORK )) DEALLOCATE( DIAG_IWORK  )
  IF( ALLOCATED( ELEMPOINTER )) DEALLOCATE( ELEMPOINTER  )
  IF( ALLOCATED( IFAIL )) DEALLOCATE( IFAIL  )
  IF( ALLOCATED( MATINDLIST )) DEALLOCATE( MATINDLIST  )
  IF( ALLOCATED( MOLID )) DEALLOCATE( MOLID  )
  IF( ALLOCATED( NEBCOUL )) DEALLOCATE(NEBCOUL)
  IF( ALLOCATED( NEBPP )) DEALLOCATE( NEBPP )
  IF( ALLOCATED( NEBTB )) DEALLOCATE( NEBTB )
  IF( ALLOCATED( NONO_IWORK )) DEALLOCATE( NONO_IWORK  )
  IF( ALLOCATED( PPTABLENGTH )) DEALLOCATE( PPTABLENGTH  )
  IF( ALLOCATED( RX )) DEALLOCATE( RX  )
  IF( ALLOCATED( RXTMP )) DEALLOCATE( RXTMP  )
  IF( ALLOCATED( SIGNLIST )) DEALLOCATE( SIGNLIST  )
  IF( ALLOCATED( SPININDLIST )) DEALLOCATE( SPININDLIST  )
  IF( ALLOCATED( TOTNEBCOUL )) DEALLOCATE( TOTNEBCOUL  )
  IF( ALLOCATED( TOTNEBPP )) DEALLOCATE( TOTNEBPP  )
  IF( ALLOCATED( TOTNEBTB )) DEALLOCATE( TOTNEBTB  )
  IF( ALLOCATED( XB )) DEALLOCATE( XB  )
  IF( ALLOCATED( ZHEEVD_IWORK )) DEALLOCATE( ZHEEVD_IWORK  )
  IF( ALLOCATED( ATOCC )) DEALLOCATE( ATOCC  )
  IF( ALLOCATED( BO )) DEALLOCATE( BO  )
  IF( ALLOCATED( BOND )) DEALLOCATE( BOND  )
  IF( ALLOCATED( BOZERO )) DEALLOCATE( BOZERO  )
  IF( ALLOCATED( BO_PADDED )) DEALLOCATE( BO_PADDED  )
  IF( ALLOCATED( CHEMPOT_PNK )) DEALLOCATE( CHEMPOT_PNK  )
  IF( ALLOCATED( COSLIST )) DEALLOCATE( COSLIST  )
  IF( ALLOCATED( COULOMBV )) DEALLOCATE( COULOMBV  )
  IF( ALLOCATED( CPLIST )) DEALLOCATE( CPLIST  )
  IF( ALLOCATED( CR )) DEALLOCATE( CR  )
  IF( ALLOCATED( DELTAQ )) DEALLOCATE( DELTAQ  )
  IF( ALLOCATED( DELTASPIN )) DEALLOCATE( DELTASPIN  )
  IF( ALLOCATED( DIAG_RWORK )) DEALLOCATE( DIAG_RWORK  )
  IF( ALLOCATED( DIAG_WORK )) DEALLOCATE( DIAG_WORK  )
  IF( ALLOCATED( DOWNEVALS )) DEALLOCATE( DOWNEVALS  )
  IF( ALLOCATED( DOWNEVECS )) DEALLOCATE( DOWNEVECS  )
  IF( ALLOCATED( EHIST )) DEALLOCATE( EHIST  )
  IF( ALLOCATED( EVALS )) DEALLOCATE( EVALS  )
  IF( ALLOCATED( EVECS )) DEALLOCATE( EVECS  )
  IF( ALLOCATED( F )) DEALLOCATE( F  )
  IF( ALLOCATED( FCOUL )) DEALLOCATE( FCOUL  )
  IF( ALLOCATED( FPP )) DEALLOCATE( FPP  )
  IF( ALLOCATED( FPUL )) DEALLOCATE( FPUL  )
  IF( ALLOCATED( FRANPREV )) DEALLOCATE( FRANPREV  )
  IF( ALLOCATED( FSCOUL )) DEALLOCATE( FSCOUL  )
  IF( ALLOCATED( FSSPIN )) DEALLOCATE( FSSPIN  )
  IF( ALLOCATED( FPLUSD )) DEALLOCATE( FPLUSD  )
  IF( ALLOCATED( FTOT )) DEALLOCATE( FTOT  )
  IF( ALLOCATED( H )) DEALLOCATE( H  )
  IF( ALLOCATED( H0 )) DEALLOCATE( H0  )
  IF( ALLOCATED( H2VECT )) DEALLOCATE( H2VECT  )
  IF( ALLOCATED( HDIAG )) DEALLOCATE( HDIAG  )
  IF( ALLOCATED( HDOWN )) DEALLOCATE( HDOWN  )
  IF( ALLOCATED( HED )) DEALLOCATE( HED  )
  IF( ALLOCATED( HEF )) DEALLOCATE( HEF  )
  IF( ALLOCATED( HEP )) DEALLOCATE( HEP  )
  IF( ALLOCATED( HES )) DEALLOCATE( HES  )
  IF( ALLOCATED( HJJ )) DEALLOCATE( HJJ  )
  IF( ALLOCATED( HR0 )) DEALLOCATE( HR0  )
  IF( ALLOCATED( HUBBARDU )) DEALLOCATE( HUBBARDU  )
  IF( ALLOCATED( HUP )) DEALLOCATE( HUP  )
  IF( ALLOCATED( KEVALS )) DEALLOCATE( KEVALS  )
  IF( ALLOCATED( LCNSHIFT )) DEALLOCATE( LCNSHIFT  )
  IF( ALLOCATED( MASS )) DEALLOCATE( MASS  )
  IF( ALLOCATED( MYCHARGE )) DEALLOCATE( MYCHARGE  )
  IF( ALLOCATED( NONOTMP )) DEALLOCATE( NONOTMP  )
  IF( ALLOCATED( NONO_EVALS )) DEALLOCATE( NONO_EVALS  )
  IF( ALLOCATED( NONO_WORK )) DEALLOCATE( NONO_WORK  )
  IF( ALLOCATED( OLDDELTAQS )) DEALLOCATE( OLDDELTAQS  )
  IF( ALLOCATED( OLDDELTASPIN )) DEALLOCATE( OLDDELTASPIN  )
  IF( ALLOCATED( ORTHOH )) DEALLOCATE( ORTHOH  )
  IF( ALLOCATED( ORTHOHDOWN )) DEALLOCATE( ORTHOHDOWN  )
  IF( ALLOCATED( ORTHOHUP )) DEALLOCATE( ORTHOHUP  )
  IF( ALLOCATED( ORTHORHO )) DEALLOCATE( ORTHORHO  )
  IF( ALLOCATED( OVERL )) DEALLOCATE( OVERL  )
  IF( ALLOCATED( PAIR )) DEALLOCATE( PAIR  )
  IF( ALLOCATED( PHIST )) DEALLOCATE( PHIST  )
  IF( ALLOCATED( PHISTX )) DEALLOCATE( PHISTX  )
  IF( ALLOCATED( PHISTY )) DEALLOCATE( PHISTY  )
  IF( ALLOCATED( PHISTZ )) DEALLOCATE( PHISTZ  )
  IF( ALLOCATED( PNK )) DEALLOCATE( PNK  )
  IF( ALLOCATED( POTCOEF )) DEALLOCATE( POTCOEF  )
  IF( ALLOCATED( PPR )) DEALLOCATE( PPR  )
  IF( ALLOCATED( PPSPL )) DEALLOCATE( PPSPL  )
  IF( ALLOCATED( PPVAL )) DEALLOCATE( PPVAL  )
  IF( ALLOCATED( QLIST )) DEALLOCATE( QLIST  )
  IF( ALLOCATED( RESPCHI )) DEALLOCATE( RESPCHI  )
  IF( ALLOCATED( RHODOWN )) DEALLOCATE( RHODOWN  )
  IF( ALLOCATED( RHODOWNZERO )) DEALLOCATE( RHODOWNZERO  )
  IF( ALLOCATED( RHOUP )) DEALLOCATE( RHOUP  )
  IF( ALLOCATED( RHOUPZERO )) DEALLOCATE( RHOUPZERO  )
  IF( ALLOCATED( SH2 )) DEALLOCATE( SH2  )
  IF( ALLOCATED( SINLIST )) DEALLOCATE( SINLIST  )
  IF( ALLOCATED( SMAT )) DEALLOCATE( SMAT  )
  IF( ALLOCATED( SPINLIST )) DEALLOCATE( SPINLIST  )
  IF( ALLOCATED( SPINTMP )) DEALLOCATE( SPINTMP  )
  IF( ALLOCATED( SPIN_PNK )) DEALLOCATE( SPIN_PNK  )
  IF( ALLOCATED( THIST )) DEALLOCATE( THIST  )
  IF( ALLOCATED( TMPBODIAG )) DEALLOCATE( TMPBODIAG  )
  IF( ALLOCATED( TMPRHODOWN )) DEALLOCATE( TMPRHODOWN  )
  IF( ALLOCATED( TMPRHOUP )) DEALLOCATE( TMPRHOUP  )
  IF( ALLOCATED( TWOXX2 )) DEALLOCATE( TWOXX2  )
  IF( ALLOCATED( UMAT )) DEALLOCATE( UMAT  )
  IF( ALLOCATED( UPEVALS )) DEALLOCATE( UPEVALS  )
  IF( ALLOCATED( UPEVECS )) DEALLOCATE( UPEVECS  )
  IF( ALLOCATED( V )) DEALLOCATE( V  )
  IF( ALLOCATED( VHIST )) DEALLOCATE( VHIST  )
  IF( ALLOCATED( WDD )) DEALLOCATE( WDD  )
  IF( ALLOCATED( WFF )) DEALLOCATE( WFF  )
  IF( ALLOCATED( WORK )) DEALLOCATE( WORK  )
  IF( ALLOCATED( WPP )) DEALLOCATE( WPP  )
  IF( ALLOCATED( WSS )) DEALLOCATE( WSS  )
  IF( ALLOCATED( X2 )) DEALLOCATE( X2  )
  IF( ALLOCATED( X2DOWN )) DEALLOCATE( X2DOWN  )
  IF( ALLOCATED( X2HRHO )) DEALLOCATE( X2HRHO  )
  IF( ALLOCATED( X2UP )) DEALLOCATE( X2UP  )
  IF( ALLOCATED( XMAT )) DEALLOCATE( XMAT  )
  IF( ALLOCATED( ZHEEVD_RWORK )) DEALLOCATE( ZHEEVD_RWORK  )
  IF( ALLOCATED( FSLCN )) DEALLOCATE( FSLCN  )
  IF( ALLOCATED( ORTHOBO)) DEALLOCATE(ORTHOBO)


  ! Stuff for the tabulated integrals
  IF( ALLOCATED( TABR )) DEALLOCATE( TABR )
  IF( ALLOCATED( TABH )) DEALLOCATE( TABH )
  IF( ALLOCATED( TABS )) DEALLOCATE( TABS )
  IF( ALLOCATED( LENTABINT )) DEALLOCATE( LENTABINT )
  IF( ALLOCATED( HSPL )) DEALLOCATE( HSPL )
  IF( ALLOCATED( SSPL )) DEALLOCATE( SSPL )
  IF( ALLOCATED( HCUT )) DEALLOCATE( HCUT )
  IF( ALLOCATED( SCUT )) DEALLOCATE( SCUT )

  IF ( ALLOCATED(PPELE1) ) DEALLOCATE( PPELE1 )
  IF ( ALLOCATED(PPELE2) ) DEALLOCATE( PPELE2 )
  IF ( ALLOCATED(PPRK) ) DEALLOCATE( PPRK )
  IF ( ALLOCATED(PPAK) ) DEALLOCATE( PPAK )
  IF ( ALLOCATED(PPNK) ) DEALLOCATE( PPNK )

  ! For the dispersion correction
  IF (ALLOCATED(PPELE)) DEALLOCATE(PPELE)
  IF (ALLOCATED(RZERO)) DEALLOCATE(RZERO)
  IF (ALLOCATED(C6)) DEALLOCATE(C6)
  
  RETURN

END SUBROUTINE DEALLOCATEALL
