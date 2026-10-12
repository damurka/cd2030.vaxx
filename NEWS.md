# cd2030.vaxx 2.0.14

* Requires cd2030.core 1.4.3 and datasuite.ui 0.5.2, so DataSuite updates them:
  the Reports page lists the dataset's reports and the standard reports again, and the builder has its kinds of
  chart, its themes, years and regions. Since datasuite.ui 0.5.0 the page said "No reports yet" over a dataset that
  has reports, and often showed no standard reports.

# cd2030.vaxx 2.0.13

* Requires cd2030.core 1.4.2 and datasuite.ui 0.5.1, so DataSuite updates them:
    * The inequality charts are drawn when no region is chosen. In 2.0.12 they showed "The size of `nm` (2) must
      be compatible with the size of `x` (3)".
    * A chart that had been tall becomes small again (the Data Missingness heat map, once one indicator is chosen).
    * The bar charts with a panel a region (reporting rate, outliers, missing indicators by region) are as tall as
      their rows of panels need.
    * Reporting Rate: the heat map writes each number in the colour that reads on its tile.
    * Data Missingness: the charts for one indicator say "Select an indicator to see this chart" when every
      indicator is chosen. The loader turned for ever.
    * Denominator Selection: the National Coverage card shows its loader while the coverage is worked out.
    * k factors set with `set_k_factors()` are used on a dataset adjusted on the Data Adjustment page.
    * Internal Consistency: no deprecation warnings in the log.

# cd2030.vaxx 2.0.12

* Requires cd2030.core 1.4.1, so DataSuite updates it:
    * Bayesian Analysis no longer holds the app while a model is fitted (in 2.0.11 every page waited for the fit).
    * Sub-national Bayesian Analysis has a region and a year to choose.
    * Sub-National Inequality with a region chosen shows the region's own coverage beside the national.
    * The tables have one look, and the data tables write numbers the same way.

# cd2030.vaxx 2.0.11

* Bayesian Analysis no longer stops the other pages while a fit starts: the worker is sent the fit's inputs alone, not
  the page's whole environment (cd2030.core 1.4.0, which this requires).

# cd2030.vaxx 2.0.10

* Bayesian Analysis no longer holds the app up when a fit ends, nor slows every later change to the dataset: a
  fitted model is kept without the sampler's draws (cd2030.core 1.3.10, which this requires).

# cd2030.vaxx 2.0.9

* Bayesian Analysis (national and sub-national) for penta3 and measles1: the coverage model the RMNCAH app has
  (cd2030.core 1.3.9's page). Its packages are installed when the page is first used.
* National and sub-national coverage and inequality have the vaccine app's tabs: penta3, measles1, the penta1 to
  penta3 dropout and the penta3 to measles1 dropout. The inequality pages and maps showed the RMNCAH set (ANC4, live
  births, low birth weight).
* Denominator Selection: its three cards have the same four tabs (institutional live births, BCG, penta3, measles1).
* Requires cd2030.core 1.3.9.

# cd2030.vaxx 2.0.8

* Requires cd2030.core 1.3.8 and datasuite.ui 0.4.3: zero-dose, under-vaccinated and measles2 coverage as the
  Countdown 2030 Stata code computes them; every table of the dataset in its notebooks, with what it holds; charts and
  tables already drawn follow a change of language; cards built outside a reactive context no longer fail.
* The same version as cd2030.rmncah, cd2030.vaxx and cd2030.pooled.

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
