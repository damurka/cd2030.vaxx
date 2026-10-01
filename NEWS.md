# cd2030.vaxx 2.0.6

* The Load Data screen is cd2030.core's (`cd_upload_data_ui()` / `cd_upload_data_server()`, cd2030.core 1.3.7), the
  same as the RMNCAH app's; this app keeps only its part of the wizard (`vaxx_wizard_options()`).
* A failed reference-data upload (UN or WUENIC estimates) says why, not only that the format is unsupported.

# cd2030.vaxx 2.0.5

* The report builder is Quire (datasuite.ui 0.4.0, quire 0.2.17): tables can be aligned (numbers and text apart).
* Data Adjustment takes in Remove Years: the years and areas removed, and completeness, outliers and missing values
  set by indicator, region or district (cd2030.core 1.3.5).
* Reports is on the header's button only, not in the sidebar.
* Tables show their own loader.
* Requires cd2030.core 1.3.5, datasuite.ui 0.4.0 and quire 0.2.17.

# cd2030.vaxx 2.0.4

* Portuguese: the app reads as Portuguese is written in Mozambique and Angola (European norm) instead of Brazilian Portuguese (e.g. "Abandono de Penta 1 para Penta 3").

# cd2030.vaxx 2.0.3

* The denominator options read "ANC1 population growth" and "Penta1 population growth" (`anc1derived`,
  `penta1derived`), the labels of cd2030.core's data dictionary. Requires cd2030.core 1.3.1.

# cd2030.vaxx 2.0.2

* "Get help" opens the app guide's pages and sections after the docs reorganisation (`apps/countdown/...`).
* Requires cd2030.core 1.3.0 and datasuite.ui 0.3.0 (the working Ask AI buttons, the AI's confirmations).

# cd2030.vaxx 2.0.1

Documentation only; no change to the app.

* A README: what the app does, installing and running it (`run_app()` arguments and the `CDSUITE_SHINY_*` variables),
  its files, developing and releasing it.

# cd2030.vaxx 2.0.0

* First release as an installable package: `cd2030.vaxx::run_app()` starts the app.
* Built on cd2030.core (>= 1.1.0) and datasuite.ui (>= 0.1.0); the shared Countdown pages, report builder and
  translations now come from those packages instead of copied code.
* R CMD check passes with no errors, warnings or notes.
