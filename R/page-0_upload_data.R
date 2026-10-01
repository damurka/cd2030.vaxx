# The Load Data screen and its wizard are shared (cd2030.core: cd_upload_data_ui() / cd_upload_data_server(),
# R/ui-wizard-*.R); this is the part of it that
# is vaxx's own -- see wizard-config.R for the contract. Survey estimates here are the vaccine set (anc1,
# instlivebirths, bcg, penta1, penta3, opv1, opv3, measles1 -- what cd2030.core's set_survey_estimates() keeps for
# the "vaccine" group); no anc4/csection/low_bweight. Every field below is required before the wizard's National
# Rates step lets you continue. UN mortality estimates feed only rmncah's mortality pages, so that reference zone
# is left out.
# The Load Data wizard's settings for this app (set by run_app())
vaxx_wizard_options <- function() options(cd2030.wizard = list(
  national_rates_groups = list(
    cd_wizard_field_group("title_upload_group_maternal", "sub_upload_group_maternal",
      cd_wizard_survey_field("anc1_prop", "anc1", "title_upload_anc1_survey"),
      cd_wizard_survey_field("ideliv_prop", "instlivebirths", "title_upload_ideliv_survey"),
      cd_wizard_national_rate_fields()
    ),
    cd_wizard_field_group("title_upload_group_immunization", "sub_upload_group_immunization",
      cd_wizard_survey_field("bcg_prop", "bcg", "title_upload_bcg_survey"),
      cd_wizard_survey_field("penta1_prop", "penta1", "title_upload_penta1_survey"),
      cd_wizard_survey_field("penta3_prop", "penta3", "title_upload_penta3_survey"),
      cd_wizard_survey_field("opv1_prop", "opv1", "title_upload_opv1_survey"),
      cd_wizard_survey_field("opv3_prop", "opv3", "title_upload_opv3_survey"),
      cd_wizard_survey_field("measles1_prop", "measles1", "title_upload_measles1_survey")
    )
  ),
  reference_uploads = c("un_estimates", "wuenic_estimates")
))
