cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  dietary-type-2-diabetes---primary:
    run: dietary-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  type-2-diabetes-mellitus---primary:
    run: type-2-diabetes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: dietary-type-2-diabetes---primary/output
  type-2-diabetes-admission---primary:
    run: type-2-diabetes-admission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus---primary/output
  type-2-diabetes-therapy---primary:
    run: type-2-diabetes-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-admission---primary/output
  type-2-diabetes-malnutritionrelated---primary:
    run: type-2-diabetes-malnutritionrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-therapy---primary/output
  antidiabetic-type-2-diabetes---primary:
    run: antidiabetic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-malnutritionrelated---primary/output
  type-2-diabetes-background---primary:
    run: type-2-diabetes-background---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antidiabetic-type-2-diabetes---primary/output
  type-2-diabetes-prolif---primary:
    run: type-2-diabetes-prolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-background---primary/output
  type-2-diabetes-followup---primary:
    run: type-2-diabetes-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-prolif---primary/output
  moderate-type-2-diabetes---primary:
    run: moderate-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-followup---primary/output
  type-2-diabetes-ulcerated---primary:
    run: type-2-diabetes-ulcerated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: moderate-type-2-diabetes---primary/output
  type-2-diabetes-score---primary:
    run: type-2-diabetes-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-ulcerated---primary/output
  type-2-diabetes-questionnaire---primary:
    run: type-2-diabetes-questionnaire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-score---primary/output
  type-2-diabetes-control---primary:
    run: type-2-diabetes-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-questionnaire---primary/output
  type-2-diabetes-borderline---primary:
    run: type-2-diabetes-borderline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-control---primary/output
  type-2-diabetes-tolerance---primary:
    run: type-2-diabetes-tolerance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-borderline---primary/output
  type-2-diabetes-assessment---primary:
    run: type-2-diabetes-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-tolerance---primary/output
  type-2-diabetes---primary:
    run: type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-assessment---primary/output
  type-2-diabetes-check---primary:
    run: type-2-diabetes-check---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-2-diabetes---primary/output
  type-2-diabetes-changed---primary:
    run: type-2-diabetes-changed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-check---primary/output
  stable-type-2-diabetes---primary:
    run: stable-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-changed---primary/output
  type-2-diabetes-glycaemia---primary:
    run: type-2-diabetes-glycaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: stable-type-2-diabetes---primary/output
  patient-type-2-diabetes---primary:
    run: patient-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-glycaemia---primary/output
  type-2-diabetes-default---primary:
    run: type-2-diabetes-default---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: patient-type-2-diabetes---primary/output
  type-2-diabetes-program---primary:
    run: type-2-diabetes-program---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-default---primary/output
  type-2-diabetes-shared---primary:
    run: type-2-diabetes-shared---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-program---primary/output
  type-2-diabetes-given---primary:
    run: type-2-diabetes-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-shared---primary/output
  annual-type-2-diabetes---primary:
    run: annual-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-given---primary/output
  type-2-diabetes-blood---primary:
    run: type-2-diabetes-blood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: annual-type-2-diabetes---primary/output
  type-2-diabetes-examination---primary:
    run: type-2-diabetes-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-blood---primary/output
  type-2-diabetes-review---primary:
    run: type-2-diabetes-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-examination---primary/output
  type-2-diabetes-month---primary:
    run: type-2-diabetes-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-review---primary/output
  type-2-diabetes-microalbuminuria---primary:
    run: type-2-diabetes-microalbuminuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-month---primary/output
  insulindependent-type-2-diabetes---primary:
    run: insulindependent-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-microalbuminuria---primary/output
  type-2-diabetes-screener---primary:
    run: type-2-diabetes-screener---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: insulindependent-type-2-diabetes---primary/output
  type-2-diabetes-counselling---primary:
    run: type-2-diabetes-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-screener---primary/output
  type-2-diabetes-education---primary:
    run: type-2-diabetes-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-counselling---primary/output
  type-2-diabetes-offered---primary:
    run: type-2-diabetes-offered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-education---primary/output
  digital-type-2-diabetes---primary:
    run: digital-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-offered---primary/output
  retinal-type-2-diabetes---primary:
    run: retinal-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: digital-type-2-diabetes---primary/output
  painful-type-2-diabetes---primary:
    run: painful-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: retinal-type-2-diabetes---primary/output
  type-2-diabetes-management---primary:
    run: type-2-diabetes-management---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: painful-type-2-diabetes---primary/output
  type-2-diabetes-refer---primary:
    run: type-2-diabetes-refer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-management---primary/output
  type-2-diabetes-register---primary:
    run: type-2-diabetes-register---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-refer---primary/output
  type-2-diabetes-advice---primary:
    run: type-2-diabetes-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-register---primary/output
  type-2-diabetes-diabetology---primary:
    run: type-2-diabetes-diabetology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-advice---primary/output
  multidisciplinary-type-2-diabetes---primary:
    run: multidisciplinary-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diabetology---primary/output
  specialist-type-2-diabetes---primary:
    run: specialist-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: multidisciplinary-type-2-diabetes---primary/output
  type-2-diabetes-record---primary:
    run: type-2-diabetes-record---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: specialist-type-2-diabetes---primary/output
  type-2-diabetes-indicated---primary:
    run: type-2-diabetes-indicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-record---primary/output
  type-2-diabetes-consent---primary:
    run: type-2-diabetes-consent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-indicated---primary/output
  type-2-diabetes-audit---primary:
    run: type-2-diabetes-audit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-consent---primary/output
  type-2-diabetes-dissent---primary:
    run: type-2-diabetes-dissent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-audit---primary/output
  type-2-diabetes-community---primary:
    run: type-2-diabetes-community---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-dissent---primary/output
  type-2-diabetes-attended---primary:
    run: type-2-diabetes-attended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-community---primary/output
  type-2-diabetes-attend---primary:
    run: type-2-diabetes-attend---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-attended---primary/output
  under-type-2-diabetes---primary:
    run: under-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-attend---primary/output
  type-2-diabetes-monitoring---primary:
    run: type-2-diabetes-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: under-type-2-diabetes---primary/output
  clinic-type-2-diabetes---primary:
    run: clinic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-monitoring---primary/output
  type-2-diabetes-letter---primary:
    run: type-2-diabetes-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: clinic-type-2-diabetes---primary/output
  type-2-diabetes-invite---primary:
    run: type-2-diabetes-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-letter---primary/output
  unsuitable-type-2-diabetes---primary:
    run: unsuitable-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-invite---primary/output
  type-2-diabetes-quality---primary:
    run: type-2-diabetes-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: unsuitable-type-2-diabetes---primary/output
  type-2-diabetes-excepted---primary:
    run: type-2-diabetes-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-quality---primary/output
  type-2-diabetes-complicatn---primary:
    run: type-2-diabetes-complicatn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-excepted---primary/output
  type-2-diabetes-maturity---primary:
    run: type-2-diabetes-maturity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-complicatn---primary/output
  type-2-diabetes-ketoacidosis---primary:
    run: type-2-diabetes-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-maturity---primary/output
  type-2-diabetes-unspecified---primary:
    run: type-2-diabetes-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-ketoacidosis---primary/output
  hyperosmolar-type-2-diabetes---primary:
    run: hyperosmolar-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-unspecified---primary/output
  ketoacidotic-type-2-diabetes---primary:
    run: ketoacidotic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: hyperosmolar-type-2-diabetes---primary/output
  renal-type-2-diabetes---primary:
    run: renal-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ketoacidotic-type-2-diabetes---primary/output
  juvenile-type-2-diabetes---primary:
    run: juvenile-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: renal-type-2-diabetes---primary/output
  nephropathy-type-2-diabetes---primary:
    run: nephropathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: juvenile-type-2-diabetes---primary/output
  ophthalmic-type-2-diabetes---primary:
    run: ophthalmic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: nephropathy-type-2-diabetes---primary/output
  neurological-type-2-diabetes---primary:
    run: neurological-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ophthalmic-type-2-diabetes---primary/output
  type-2-diabetes-amyotrophy---primary:
    run: type-2-diabetes-amyotrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: neurological-type-2-diabetes---primary/output
  mononeuropathy-type-2-diabetes---primary:
    run: mononeuropathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-amyotrophy---primary/output
  neuropathy-type-2-diabetes---primary:
    run: neuropathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: mononeuropathy-type-2-diabetes---primary/output
  type-2-diabetes-circulatory---primary:
    run: type-2-diabetes-circulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: neuropathy-type-2-diabetes---primary/output
  type-2-diabetes-gangrene---primary:
    run: type-2-diabetes-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-circulatory---primary/output
  type-2-diabetes-niddm---primary:
    run: type-2-diabetes-niddm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-gangrene---primary/output
  hypoglycaemic-type-2-diabetes---primary:
    run: hypoglycaemic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-niddm---primary/output
  retinopathy-type-2-diabetes---primary:
    run: retinopathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-type-2-diabetes---primary/output
  type-2-diabetes-reavens---primary:
    run: type-2-diabetes-reavens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: retinopathy-type-2-diabetes---primary/output
  angiopathy-type-2-diabetes---primary:
    run: angiopathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-reavens---primary/output
  arthropathy-type-2-diabetes---primary:
    run: arthropathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: angiopathy-type-2-diabetes---primary/output
  neuropathic-type-2-diabetes---primary:
    run: neuropathic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: arthropathy-type-2-diabetes---primary/output
  type-2-diabetes-state---primary:
    run: type-2-diabetes-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: neuropathic-type-2-diabetes---primary/output
  nonsteroid-type-2-diabetes---primary:
    run: nonsteroid-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-state---primary/output
  dominant-type-2-diabetes---primary:
    run: dominant-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: nonsteroid-type-2-diabetes---primary/output
  type-2-diabetes-youth---primary:
    run: type-2-diabetes-youth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: dominant-type-2-diabetes---primary/output
  type-2-diabetes-autoimmune---primary:
    run: type-2-diabetes-autoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-youth---primary/output
  metabolic-type-2-diabetes---primary:
    run: metabolic-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-autoimmune---primary/output
  type-2-diabetes-proteinuria---primary:
    run: type-2-diabetes-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: metabolic-type-2-diabetes---primary/output
  maculopathy-type-2-diabetes---primary:
    run: maculopathy-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-proteinuria---primary/output
  secondary-type-2-diabetes---primary:
    run: secondary-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: maculopathy-type-2-diabetes---primary/output
  type-2-diabetes-hyperglycaemia---primary:
    run: type-2-diabetes-hyperglycaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: secondary-type-2-diabetes---primary/output
  type-2-diabetes-mononeuritis---primary:
    run: type-2-diabetes-mononeuritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-hyperglycaemia---primary/output
  advanced-type-2-diabetes---primary:
    run: advanced-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mononeuritis---primary/output
  type-2-diabetes-childbirth---primary:
    run: type-2-diabetes-childbirth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: advanced-type-2-diabetes---primary/output
  type-2-diabetes-puerperium---primary:
    run: type-2-diabetes-puerperium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-childbirth---primary/output
  type-2-diabetes-delivered---primary:
    run: type-2-diabetes-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-puerperium---primary/output
  type-2-diabetes-preexisting---primary:
    run: type-2-diabetes-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-delivered---primary/output
  type-2-diabetes-pregnancy---primary:
    run: type-2-diabetes-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-preexisting---primary/output
  gestational-type-2-diabetes---primary:
    run: gestational-type-2-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-pregnancy---primary/output
  type-2-diabetes-fasting---primary:
    run: type-2-diabetes-fasting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: gestational-type-2-diabetes---primary/output
  type-2-diabetes-poisoning---primary:
    run: type-2-diabetes-poisoning---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-fasting---primary/output
  type-2-diabetes-agent---primary:
    run: type-2-diabetes-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-poisoning---primary/output
  type-2-diabetes-reaction---primary:
    run: type-2-diabetes-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-agent---primary/output
  type-2-diabetes-gliclazide---primary:
    run: type-2-diabetes-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-reaction---primary/output
  type-2-diabetes-satisfaction---primary:
    run: type-2-diabetes-satisfaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-gliclazide---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-satisfaction---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
