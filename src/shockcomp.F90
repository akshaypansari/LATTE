SUBROUTINE SHOCKCOMP

  USE CONSTANTS_MOD
  USE MDARRAY

  IMPLICIT NONE
  IF (EXISTERROR) RETURN

  ! If the box has 90 degree angles, then its length in the three
  ! directions is BOX(1,1), BOX(2,2), AND BOX(3,3)...

  BOX(SHOCKDIR, SHOCKDIR) = BOX(SHOCKDIR, SHOCKDIR) - UPARTICLE*DT

  !  BOXDIMS(SHOCKDIR) = BOX(2,SHOCKDIR) - BOX(1,SHOCKDIR)

END SUBROUTINE SHOCKCOMP
