! module for orbit parameters and arrays
module flux_par_mod

  use orbit_parameters_mod

  real(kind = 8), dimension(nw):: rgrid
  real(kind = 8), dimension(nh):: zgrid

  ! grid size
  integer(kind = 4):: mw, mh

  real(kind = 8), dimension(nwnh):: psi
  real(kind = 8), dimension(nwnh):: xpsi
  real(kind = 8):: psibry
  real(kind = 8):: simag
  real(kind = 8):: sidif
  real(kind = 8):: eouter

!-------------------------------------------------------------------------------------
! not used at the moment  
!  common/ccase/case(6)
!  common/cerror/delerr
!  common/mw1com/mw1,mh1
  
!  common/consta/pi,tmu,twopi,ioption,ipress,idolim,isurf
!  common/cpitch/ipitch,tanbn(npitch),angbn(npitch),sisibn(npitch)
  
!  common/input1/icondn,itek,kdata,ico2,itrace,ierchk,iconvr,ixray
!  common/limite/limitr,xlim(nlimit),ylim(nlimit)

  !  common/vtor/presw(nw),preswp(nw),kvtor,rvtor,cwrmid(nw)
!  .            ,prw(nw),wpsi(nwnh),presst(nwnh),pressw(nwnh)

  ! previous common cffol
!-------------------------------------------------------------------------------------

  ! equilirbium data
  real(kind = 8), dimension(nw)::qpsi
  real(kind = 8), dimension(nw)::bfpol
  real(kind = 8), dimension(nw)::cfpol
  real(kind = 8), dimension(nw)::dfpol(nw)
  integer(kind = 4) :: mwfpol
  real(kind = 8), dimension(mbdry):: rbdry
  real(kind = 8), dimension(mbdry):: zbdry
  integer(kind = 4):: nbdry
  real(kind = 8), dimension(nw):: xxxsi(nw)
  real(kind=8), dimension(nwnh):: pcurrt(nwnh)
  real(kind=8):: sifm
  real(kind=8):: sifb
  real(kind=8):: rzero
  real(kind=8):: bzero
  real(kind=8):: current

  real(kind=8):: rmaxis
  real(kind=8):: zmaxis
  

  !  grid limits
  real(kind = 8) :: rlmin, rlmax
  real(kind = 8) :: zlmin, zlmax

  
  ! last closed flux surface data
  integer(kind = 4)::limitr
  real(kind = 8), dimension(nlimit):: rlim
  real(kind = 8), dimension(nlimit):: zlim
  
  ! interpolation parameters
  
  real(kind = 8), dimension(kubicx,lubicx,kubicy,lubicy):: c
  real(kind = 8), dimension(nwrk):: wk
  real(kind = 8), dimension(lubicx+1):: bkx
  real(kind = 8), dimension(lubicy+1):: bky
  integer(kind = 4) :: lkx 
  integer(kind = 4) :: lky

  real(kind = 8), dimension(nw):: volp
  real(kind = 8), dimension(nw):: pprime
  real(kind = 8), dimension(nw):: pres
  real(kind = 8), dimension(nw):: ffprim
  real(kind = 8), dimension(nw):: fpol
  

end module flux_par_mod
