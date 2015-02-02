!> \file
!> \author Chris Bradley
!> \brief This module handles all constants shared across equations set routines.
!>
!> \section LICENSE
!>
!> Version: MPL 1.1/GPL 2.0/LGPL 2.1
!>
!> The contents of this file are subject to the Mozilla Public License
!> Version 1.1 (the "License"); you may not use this file except in
!> compliance with the License. You may obtain a copy of the License at
!> http://www.mozilla.org/MPL/
!>
!> Software distributed under the License is distributed on an "AS IS"
!> basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
!> License for the specific language governing rights and limitations
!> under the License.
!>
!> The Original Code is OpenCMISS
!>
!> The Initial Developer of the Original Code is University of Auckland,
!> Auckland, New Zealand, the University of Oxford, Oxford, United
!> Kingdom and King's College, London, United Kingdom. Portions created
!> by the University of Auckland, the University of Oxford and King's
!> College, London are Copyright (C) 2007-2010 by the University of
!> Auckland, the University of Oxford and King's College, London.
!> All Rights Reserved.
!>
!> Contributor(s):
!>
!> Alternatively, the contents of this file may be used under the terms of
!> either the GNU General Public License Version 2 or later (the "GPL"), or
!> the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
!> in which case the provisions of the GPL or the LGPL are applicable instead
!> of those above. If you wish to allow use of your version of this file only
!> under the terms of either the GPL or the LGPL, and not to allow others to
!> use your version of this file under the terms of the MPL, indicate your
!> decision by deleting the provisions above and replace them with the notice
!> and other provisions required by the GPL or the LGPL. If you do not delete
!> the provisions above, a recipient may use your version of this file under
!> the terms of any one of the MPL, the GPL or the LGPL.
!>

!> This module defines all constants shared across equations set routines.
MODULE EQUATIONS_SET_CONSTANTS

  USE KINDS

  IMPLICIT NONE

  !Problem Classes
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_CLASS=0
  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_CLASS=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FLUID_MECHANICS_CLASS=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELECTROMAGNETICS_CLASS=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CLASSICAL_FIELD_CLASS=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIOELECTRICS_CLASS=5
  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MODAL_CLASS=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FITTING_CLASS=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISATION_CLASS=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_PHYSICS_CLASS=9

  !Problem types
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_TYPE=0
  !Elasticity class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_TYPE=2
  !Fluid mechanics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_PRESSURE_EQUATION_TYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISEUILLE_EQUATION_TYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BURGERS_EQUATION_TYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CHARACTERISTIC_EQUATION_TYPE=7
  !Electromagnetics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELECTROSTATIC_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAGNETOSTATIC_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAXWELLS_EQUATIONS_TYPE=3
  !Classical field class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HELMHOLTZ_EQUATION_TYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_WAVE_EQUATION_TYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_TYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ADVECTION_DIFFUSION_EQUATION_TYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_REACTION_DIFFUSION_EQUATION_TYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIHARMONIC_EQUATION_TYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DATA_FITTING_EQUATION_TYPE=9
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HJ_EQUATION_TYPE=10
 !Bioelectrics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIDOMAIN_EQUATION_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_STRANG_SPLITTING_EQUATION_TYPE=3

  !Modal class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTIC_MODAL_TYPE=1
  !Multi physics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_DARCY_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_STOKES_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_NAVIER_STOKES_TYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_DIFFUSION_TYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_ADVECTION_DIFFUSION_TYPE=5

  !Problem subtypes
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SUBTYPE=0
  !Elasticity class
  !  Linear elasticity
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ONE_DIMENSIONAL_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TWO_DIMENSIONAL_PLANE_STRESS_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TWO_DIMENSIONAL_PLANE_STRAIN_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_THREE_DIMENSIONAL_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PLATE_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SHELL_SUBTYPE=6
  !  Finite elasticity
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOONEY_RIVLIN_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ISOTROPIC_EXPONENTIAL_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_EXPONENTIAL_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ORTHOTROPIC_MATERIAL_COSTA_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COMPRESSIBLE_FINITE_ELASTICITY_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ACTIVECONTRACTION_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MEMBRANE_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_FINITE_ELASTICITY_DARCY_SUBTYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ORTHOTROPIC_MATERIAL_HOLZAPFEL_OGDEN_SUBTYPE=9
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_DARCY_INRIA_MODEL_SUBTYPE=10
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_ELASTICITY_DRIVEN_DARCY_SUBTYPE=11
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_MULTI_COMPARTMENT_DARCY_INRIA_SUBTYPE=12
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_ELASTICITY_DRIVEN_MR_SUBTYPE=13
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_ELAST_MULTI_COMP_DARCY_SUBTYPE=14
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_GUCCIONE_SUBTYPE=15
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_FLUID_PRESSURE_STATIC_INRIA_SUBTYPE=16
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTITUTIVE_LAW_IN_CELLML_EVALUATE_SUBTYPE=17
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_FLUID_PRESSURE_HOLMES_MOW_SUBTYPE=19
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_POLYNOMIAL_SUBTYPE=20
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_MOONEY_RIVLIN_SUBTYPE=21  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NEARLY_INCOMPRESSIBLE_MOONEY_RIVLIN_SUBTYPE=22  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_HUMPHREY_YIN_SUBTYPE=23
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOONEY_RIVLIN_ACTIVECONTRACTION_SUBTYPE=24
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STVENANT_KIRCHOFF_ACTIVECONTRACTION_SUBTYPE=25
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COMPRESSIBLE_ACTIVECONTRACTION_SUBTYPE=26
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_ACTIVE_SUBTYPE=27
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANS_ISOTROPIC_ACTIVE_TRANSITION_SUBTYPE=28

  !Fluid mechanics class
  !  Stokes equations
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_STOKES_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_STOKES_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_STOKES_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISED_STOKES_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_STOKES_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PGM_STOKES_SUBTYPE=6
  !  Navier-Stokes equations
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_NAVIER_STOKES_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_NAVIER_STOKES_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_NAVIER_STOKES_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISED_NAVIER_STOKES_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_NAVIER_STOKES_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PGM_NAVIER_STOKES_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUASISTATIC_NAVIER_STOKES_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_1DTRANSIENT_NAVIER_STOKES_SUBTYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_SUPG_NAVIER_STOKES_SUBTYPE=9
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIFURCATION_NAVIER_STOKES_SUBTYPE=10
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_SUPG_NAVIER_STOKES_MULTIDOMAIN_SUBTYPE=11
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_Coupled1D0D_NAVIER_STOKES_SUBTYPE=12
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_SUPG_NAVIER_STOKES_SUBTYPE=13
  !  Characteristics equations
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_CHARACTERISTIC_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_Coupled1D0D_CHARACTERISTIC_SUBTYPE=2
  !  Darcy equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_DARCY_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUASISTATIC_DARCY_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_DARCY_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_DARCY_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_ALE_DARCY_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMPARTMENT_DARCY_SUBTYPE=6 !still declare in opencmiss.f90
! The following types / numbers are already defined above and thus blocked - placed here for ease of reference
!   INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_FINITE_ELASTICITY_DARCY_SUBTYPE=8
!   INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_DARCY_INRIA_MODEL_SUBTYPE=10
!   INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_ELASTICITY_DRIVEN_DARCY_SUBTYPE=11
!   INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_MULTI_COMPARTMENT_DARCY_INRIA_SUBTYPE=12
!  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMPRESSIBLE_ELAST_MULTI_COMP_DARCY_SUBTYPE=14
  !  Poiseuille equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_POISEUILLE_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DYNAMIC_POISEUILLE_SUBTYPE=2
  ! Burgers equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BURGERS_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_BURGERS_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_BURGERS_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INVISCID_BURGERS_SUBTYPE=4
  !Electromagnetics class
  !Classical field class
  !  Laplace equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_LAPLACE_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_LAPLACE_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOVING_MESH_LAPLACE_SUBTYPE=3
  !Blocked for Laplace type as used by finite elasticity couled with fluid pressure
  !INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_FLUID_PRESSURE_STATIC_INRIA_SUBTYPE=16
  !  Hamilton-Jacobi equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_HJ_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_HJ_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOVING_MESH_HJ_SUBTYPE=3
  !  Poisson equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_POISSON_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_POISSON_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_POISSON_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_POISSON_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_PRESSURE_POISSON_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NONLINEAR_PRESSURE_POISSON_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_PRESSURE_POISSON_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FITTED_PRESSURE_POISSON_SUBTYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXTRACELLULAR_BIDOMAIN_POISSON_SUBTYPE=9  
  !  Helmholtz equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_HELMHOLTZ_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_HELMHOLTZ_SUBTYPE=3
  !  Wave equation
  !  Diffusion equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_DIFFUSION_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_DIFFUSION_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_DIFFUSION_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_DIFFUSION_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_DIFFUSION_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ALE_DIFFUSION_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ALE_DIFFUSION_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ALE_DIFFUSION_SUBTYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_ALE_DIFFUSION_SUBTYPE=9
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_ALE_DIFFUSION_SUBTYPE=10
  !  Reaction Diffusion
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_REAC_DIFF_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CELLML_REAC_SPLIT_REAC_DIFF_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CELLML_REAC_NO_SPLIT_REAC_DIFF_SUBTYPE=3
    !Subtypes for multi-compartment coupled transport (diffusion equation)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_TRANSPORT_DIFFUSION_SUBTYPE=11
  ! Advection-diffusion equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ALE_ADVECTION_DIFFUSION_SUBTYPE=21
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ALE_ADVECTION_DIFFUSION_SUBTYPE=22
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ALE_ADVECTION_DIFFUSION_SUBTYPE=23
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_ALE_ADVECTION_DIFFUSION_SUBTYPE=24
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXP_SOURCE_ALE_ADVECTION_DIFFUSION_SUBTYPE=25
    !Subtypes for steady-state advection-diffusion equation 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=8
    !Subtypes for SUPG formulation of advection-diffusion equation 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ADVECTION_DIFF_SUPG_SUBTYPE=9
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ADVECTION_DIFF_SUPG_SUBTYPE=10
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ADVECTION_DIFF_SUPG_SUBTYPE=11
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUAD_SOURCE_ADVECTION_DIFF_SUPG_SUBTYPE=12
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXP_SOURCE_ADVECTION_DIFF_SUPG_SUBTYPE=13
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ALE_ADVECTION_DIFF_SUPG_SUBTYPE=29
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ALE_ADVECTION_DIFF_SUPG_SUBTYPE=30
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ALE_ADVECTION_DIFF_SUPG_SUBTYPE=31
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUAD_SOURCE_ALE_ADVECTION_DIFF_SUPG_SUBTYPE=32
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXP_SOURCE_ALE_ADVECTION_DIFF_SUPG_SUBTYPE=33
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_STATIC_ADVEC_DIFF_SUPG_SUBTYPE=14
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_STATIC_ADVEC_DIFF_SUPG_SUBTYPE=15
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_STATIC_ADVEC_DIFF_SUPG_SUBTYPE=16
    !Subtypes for single-compartment coupled transport (advection-diffusion coupled to diffusion)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COUPLED_SOURCE_DIFFUSION_ADVEC_DIFFUSION_SUBTYPE=17
    !Subtypes for multi-compartment coupled transport (advection-diffusion equation)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_TRANSPORT_ADVEC_DIFF_SUBTYPE=18
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_TRANSPORT_ADVEC_DIFF_SUPG_SUBTYPE=19
  !Bioelectrics class
  !  Monodomain equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_BUENOOROVIO_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_TENTUSSCHER06_SUBTYPE=2
  !  Bidomain equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FIRST_BIDOMAIN_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SECOND_BIDOMAIN_SUBTYPE=2
  !  Galerkin projection
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_DATA_FITTING_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_DATA_FITTING_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAT_PROPERTIES_DATA_FITTING_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAT_PROPERTIES_INRIA_MODEL_DATA_FITTING_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_VECTOR_DATA_FITTING_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIVFREE_VECTOR_DATA_FITTING_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_VECTOR_DATA_PRE_FITTING_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIVFREE_VECTOR_DATA_PRE_FITTING_SUBTYPE=8
  INTEGER(INTG), PARAMETER :: EquationsSet_DataPointVectorStaticFittingSubtype=9
  INTEGER(INTG), PARAMETER :: EquationsSet_DataPointVectorQuasistaticFittingSubtype=10
  !Modal class
  !Multi physics (subtype numbers must be different from Darcy ones)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_ELASTICITY_DARCY_SUBTYPE=101
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COUPLED_SOURCE_DIFFUSION_DIFFUSION_SUBTYPE=111
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_MONODOMAIN_ELASTICITY_SUBTYPE=141
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_1D3D_MONODOMAIN_ELASTICITY_SUBTYPE=142
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_ELASTICITY_W_TITIN_SUBTYPE=143
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_NAVIER_STOKES_ALE_SUBTYPE=151


  !Module parameters
  !> \addtogroup EQUATIONS_SET_CONSTANTS_SetupTypes EQUATIONS_SET_CONSTANTS::SetupTypes
  !> \brief Setup type parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_INITIAL_TYPE=1 !<Initial setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_GEOMETRY_TYPE=2 !<Geometry setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_DEPENDENT_TYPE=3 !<Dependent variables. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_INDEPENDENT_TYPE=4 !<Independent variables. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_MATERIALS_TYPE=5 !<Materials setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_SOURCE_TYPE=6 !<Source setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_SOURCE_MATERIALS_TYPE=7 !<Source materials setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_ANALYTIC_TYPE=8 !<Analytic setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_EQUATIONS_TYPE=9 !<Equations setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_DERIVED_TYPE=10 !<Derived field setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  !>@}
  
  !> \addtogroup EQUATIONS_SET_CONSTANTS_SetupActionTypes EQUATIONS_SET_CONSTANTS::SetupActionTypes
  !> \brief Setup action type parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_START_ACTION=1 !<Start setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_FINISH_ACTION=2 !<Finish setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_GENERATE_ACTION=3 !<Generate setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  !>@}

  !> \addtogroup EQUATIONS_SET_CONSTANTS_SolutionMethods EQUATIONS_SET_CONSTANTS::SolutionMethods
  !> \brief The solution method parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_SET_SOLUTION_METHODS=7 !<The number of solution methods defined. \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FEM_SOLUTION_METHOD=1 !<Finite Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BEM_SOLUTION_METHOD=2 !<Boundary Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FD_SOLUTION_METHOD=3 !<Finite Difference solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FV_SOLUTION_METHOD=4 !<Finite Volume solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFEM_SOLUTION_METHOD=5 !<Grid-based Finite Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFD_SOLUTION_METHOD=6 !<Grid-based Finite Difference Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFV_SOLUTION_METHOD=7 !<Grid-based Finite Volume solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NODAL_SOLUTION_METHOD=8 !<Similar to Finite Element Method with looping over nodes instead of elements 
  !>@}

  !Module parameters

  !> \addtogroup EQUATIONS_SET_CONSTANTS_LinearityTypes EQUATIONS_SET_CONSTANTS::LinearityTypes
  !> \brief The equations linearity types
  !> \see EQUATIONS_SET_CONSTANTS,OPENCMISS_EquationsLinearityTypes
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_LINEARITY_TYPES=3 !<The number of equations linearity types defined. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_LINEAR=1 !<The equations are linear. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_NONLINEAR=2 !<The equations are non-linear. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_NONLINEAR_BCS=3 !<The equations have non-linear boundary conditions. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  !>@}

 
  !> \addtogroup EQUATIONS_SET_CONSTANTS_TimeDepedenceTypes EQUATIONS_SET_CONSTANTS::TimeDepedenceTypes
  !> \brief The equations time dependence type parameters
  !> \see EQUATIONS_SET_CONSTANTS,OPENCMISS_EquationsTimeDependenceTypes
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_TIME_TYPES=5 !<The number of equations time dependence types defined. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_STATIC=1 !<The equations are static and have no time dependence. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_QUASISTATIC=2 !<The equations are quasi-static. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_FIRST_ORDER_DYNAMIC=3 !<The equations are first order dynamic. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SECOND_ORDER_DYNAMIC=4 !<The equations are a second order dynamic. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_ROUTINES
  INTEGER(INTG), PARAMETER :: EQUATIONS_TIME_STEPPING=5 !<The equations are for time stepping. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_ROUTINES
  !>@}

  !Module parameters
  !> \addtogroup EQUATIONS_SET_CONSTANTS_DerivedTypes EQUATIONS_SET_CONSTANTS::DerivedTypes
  !> \brief Derived field values to calculate
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DERIVED_STRAIN=1 !<Strain tensor field. \see EQUATIONS_SET_CONSTANTS_OutputTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DERIVED_STRESS=2 !<Stress tensor field. \see EQUATIONS_SET_CONSTANTS_OutputTypes,EQUATIONS_SET_CONSTANTS
  !>@}
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NUMBER_OF_DERIVED_TYPES=2

  !> \addtogroup EQUATIONS_SET_CONSTANTS_DynamicMatrixTypes EQUATIONS_SET_CONSTANTS:DynamicMatrixTypes
  !> \brief Type of matrix in a dynamic equations set
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_MATRIX_STIFFNESS=1 !<A stiffness matrix (multiplies displacement values)
  INTEGER(INTG), PARAMETER :: EQUATIONS_MATRIX_DAMPING=2 !<A damping matrix (multiplies velocity values)
  INTEGER(INTG), PARAMETER :: EQUATIONS_MATRIX_MASS=3 !<A mass matrix (multiplies acceleration values)
  !>@}

  !> \addtogroup EQUATIONS_SET_CONSTANTS_AnalyticFunctionTypes EQUATIONS_SET_CONSTANTS::AnalyticFunctionTypes
  !> \brief The analytic function types
  !> \see 
  !>@{
  !> \addtogroup EQUATIONS_SET_CONSTANTS_LaplaceAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:LaplaceAnalyticFunctionTypes
  !> \brief The analytic function types for a Laplace equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TWO_DIM_1=1 !<u=x**2+2*x*y-y**2 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TWO_DIM_2=2 !<u=cos(x)cosh(y)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_THREE_DIM_1=3 !<u=x**2-2*y**2+z**2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_THREE_DIM_2=4 !<u=cos(x)*cosh(y)*z
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_HamiltonJacobiAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:HamiltonJacobiAnalyticFunctionTypes
  !> \brief The analytic function types for a Hamilton-Jacobi equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HJ_EQUATION_TWO_DIM_1=1 !<u=x**2+y**2 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HJ_EQUATION_TWO_DIM_2=2 !<u=sin(x)sin(y)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HJ_EQUATION_THREE_DIM_1=3 !<u=x**2-2*y**2+z**2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HJ_EQUATION_THREE_DIM_2=4 !<u=cos(x)*cosh(y)*z
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_HelmholtzAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:HelmholtzAnalyticFunctionTypes
  !> \brief The analytic function types for a Laplace equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HELMHOLTZ_EQUATION_TWO_DIM_1=1 !<u=cos(sqrt(2)*k*x)*sin(sqrt(2)*k*y)
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_PoissonAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:PoissonAnalyticFunctionTypes
  !> \brief The analytic function types for a Poisson equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_1=1 !<u=ln(4/(x+y+1^2))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_1=4 !<u=ln(6/(x+y+z+1^2))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_3=6 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PRESSURE_POISSON_THREE_DIM_1=18 !<u=tbd, Pressure Poisson Equation (PPE) analytic
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PRESSURE_POISSON_THREE_DIM_2=19 !<u=tbd, Pressure Poisson Equation (PPE) without input data

  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_DiffusionAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:DiffusionAnalyticFunctionTypes
  !> \brief The analytic function types for a diffusion equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_ONE_DIM_1=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_TWO_DIM_1=2 !<u=exp(-kt)*sin(sqrt(k)*(x*cos(phi)+y*sin(phi)))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_THREE_DIM_1=3 !Prescribed solution, single compartment version of multi-comp solutions
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_DIFFUSION_EQUATION_THREE_DIM_1=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_DIFFUSION_EQUATION_ONE_DIM_1=1 !<Solution to a diffusion equation with a quadratic source.
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_DIFFUSION_EQUATION_ONE_DIM_1=1 !<Solution to a diffusion equation with an exponential source.
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_DIFFUSION_TWO_COMP_TWO_DIM=4 !<Prescribed solution, using a source term to correct for error - 2D with 2 compartments
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_DIFFUSION_TWO_COMP_THREE_DIM=5 !<Prescribed solution, using a source term to correct for error - 3D with 2 compartments
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_DIFFUSION_THREE_COMP_THREE_DIM=6 !<Prescribed solution, using a source term to correct for error - 3D with 3 compartments
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_COMP_DIFFUSION_FOUR_COMP_THREE_DIM=7 !<Prescribed solution, using a source term to correct for error - 3D with 4 compartments
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_AdvectionDiffusionAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:AdvectionDiffusionAnalyticFunctionTypes
  !> \brief The analytic function types for an advection-diffusion equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ADVECTION_DIFFUSION_EQUATION_TWO_DIM_1=1 !<u(x,y)=tanh(1 - alpha.(x.tan(Phi) - y)),this is a steady-state solution
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_LinearElasticityAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:LinearElasticityAnalyticFunctionTypes
  !> \brief The analytic function types for a Linear Elasticity equation
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_ONE_DIM_1=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_TWO_DIM_1=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_TWO_DIM_2=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_THREE_DIM_1=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_THREE_DIM_2=5
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_FiniteElasticityAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:FiniteElasticityAnalyticFunctionTypes
  !> \brief The analytic function types for a Finite Elasticity equation
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_CYLINDER=1
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_StokesAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:StokesAnalyticFunctionTypes
  !> \brief The analytic function types for a Stokes equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_4=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_5=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_1=6 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_2=7 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_3=8 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_4=9 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_5=10 !<u=tbd
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_NavierStokesAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:NavierStokesAnalyticFunctionTypes
  !> \brief The analytic function types for a Navier-Stokes equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_4=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_5=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_1=6 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_2=7 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_3=8 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_4=9 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_5=10 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_ONE_DIM_1=11 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_POISEUILLE=12 !< fully developed 2D channel flow (parabolic), u=u_max(1-y^2/H^2)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_TAYLOR_GREEN=13 !< 2D dynamic nonlinear Taylor-Green vortex decay
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_FlowrateSheffield=14 !< A fourier decomposed flow waveform for boundary conditions
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_FlowrateReymonds=15 !< A fourier decomposed flow waveform for boundary conditions
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_FlowrateOlufsen=16 !< A fourier decomposed flow waveform for boundary conditions
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_FlowrateAorta=17 !< A fourier decomposed flow waveform for boundary conditions
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_FlowrateSinusoid=18 !< A sinusoidal flow waveform
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_DarcyAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:DarcyAnalyticFunctionTypes
  !> \brief The analytic function types for a Darcy equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_1=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_3=6 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_INCOMP_ELAST_DARCY_ANALYTIC_DARCY=7 !<this is a solution where the finite elasticity solve is skipped to allow easy analytic testing of the mass increase & velocity solve step of incompressible poromechanical model
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_PoiseuilleAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:PoiseuilleAnalyticFunctionTypes
  !> \brief The analytic function types for a Poiseuille equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISEUILLE_EQUATION_TWO_DIM_1=1 !<u=tbd
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_BurgersAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:BurgersAnalyticFunctionTypes
  !> \brief The analytic function types for a Burgers equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BURGERS_EQUATION_ONE_DIM_1=1 !<Solution to Burgers equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_BURGERS_EQUATION_ONE_DIM_1=1 !<Solution to a generalised burgers equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_BURGERS_EQUATION_ONE_DIM_2=2 !<Solution to a generalised burgers equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_BURGERS_EQUATION_ONE_DIM_1=1 !<Solution to a static burgers equation
  !>@}
  !>@}

  
END MODULE EQUATIONS_SET_CONSTANTS

