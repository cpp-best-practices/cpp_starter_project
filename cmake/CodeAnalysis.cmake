if (CMAKE_GENERATOR MATCHES "Visual Studio")
    # Visual Studio Code Analysis
    foreach(target IN LISTS Targets)
      set_target_properties(${target} PROPERTIES
          VS_GLOBAL_RunCodeAnalysis true

          # MSVC
          VS_GLOBAL_EnableMicrosoftCodeAnalysis true
          VS_GLOBAL_CodeAnalysisRuleSet AllRules.ruleset  # See for other rulesets: C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Team Tools\Static Analysis Tools\Rule Sets\

          # Clang tidy
          VS_GLOBAL_EnableClangTidyCodeAnalysis true
      )
    endforeach()
endif()
