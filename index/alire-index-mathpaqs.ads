package Alire.Index.Mathpaqs is

   function Project is new Catalogued_Project ("mathpaqs",
                                               "A collection of mathematical, 100% portable, packages");

   Prj_Repo    : constant URL    := "https://github.com/svn2github/Mathpaqs.git";
   Prj_Author  : constant String := "Gautier de Montmollin";
   Prj_Website : constant URL    := "https://mathpacks.sourceforge.io/";

   V_20180114 : constant Release :=
                  Project.Register
                    (V ("20180114"),
                     Git (Prj_Repo, "c17a6725c4b559ea55b64f0cf3c3660e558777ea"),

                     Properties         =>
                       GPR_Scenario ("Build_Mode", "Debug" or "Style_Checks" or "Fast") and

                       Executable ("arenstorf") and
                       Executable ("arithmetic_compression") and
                       Executable ("biomorph") and
                       Executable ("champ_vt") and
                       Executable ("cr_demo") and
                       Executable ("fractal") and
                       Executable ("gnat_int") and
                       Executable ("ppm2func") and
                       Executable ("show_floats_limits") and
                       Executable ("test_beta") and
                       Executable ("test_cholesky") and
                       Executable ("test_copulas") and
                       Executable ("test_ert") and
                       Executable ("test_estimators") and
                       Executable ("test_formulas") and
                       Executable ("test_gamma") and
                       Executable ("test_generic_real_linear_equations") and
                       Executable ("test_normal") and
                       Executable ("test_pareto") and
                       Executable ("test_poisson") and
                       Executable ("test_qr") and
                       Executable ("test_random_performance") and
                       Executable ("test_rsa") and
                       Executable ("test_samples") and
                       Executable ("test_sparse") and
                       Executable ("test_u_rand") and

                       Author     (Prj_Author) and
                       Website    (Prj_Website) and
                       License    (Unknown)
                    );

   V_Pi_Day : Release renames V_20180114; -- Let's celebrate!

end Alire.Index.Mathpaqs;
