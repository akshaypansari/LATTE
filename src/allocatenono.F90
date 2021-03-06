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

SUBROUTINE ALLOCATENONO

  USE CONSTANTS_MOD
  USE NONOARRAY
  USE KSPACEARRAY

  IMPLICIT NONE
  IF (EXISTERROR) RETURN

  IF (KON .EQ. 0) THEN

#ifdef XSYEV

     NONO_LWORK = 3*HDIM - 1
     ALLOCATE(NONO_WORK( NONO_LWORK ))

#elif defined(XSYEVD)

     NONO_LWORK = 1 + 6*HDIM + 2*HDIM*HDIM
     NONO_LIWORK = 3 + 5*HDIM

     ALLOCATE(NONO_WORK( NONO_LWORK ), NONO_IWORK( NONO_LIWORK ))

#endif



     ALLOCATE(NONO_EVALS(HDIM), UMAT(HDIM, HDIM))
     ALLOCATE(XMAT(HDIM, HDIM), SMAT(HDIM, HDIM), NONOTMP(HDIM, HDIM))

     ALLOCATE(X2HRHO(HDIM, HDIM))

     ALLOCATE(HJJ(HDIM))

     IF (SPINON .EQ. 0) THEN
        ALLOCATE(ORTHOH(HDIM, HDIM))
     ELSE
        ALLOCATE(ORTHOHUP(HDIM, HDIM), ORTHOHDOWN(HDIM, HDIM))
        ALLOCATE(SPINTMP(HDIM, HDIM), SH2(HDIM, HDIM))
     ENDIF

  ELSEIF (KON .EQ. 1) THEN ! We're now doing k-space integration

     ALLOCATE(SK(HDIM, HDIM, NKTOT), KXMAT(HDIM, HDIM, NKTOT), KORTHOH(HDIM, HDIM, NKTOT))
     ALLOCATE(ZHJJ(HDIM))

  ENDIF

  RETURN

END SUBROUTINE ALLOCATENONO
