#let value(en: "", de: "") = {
  context {
    if text.lang == "en" {
      return en
    }

    if text.lang == "de" {
      return de
    }

    return "Unknown language"
  }
}

#let translations = (
  bachelor-thesis: value(
    en: "Bachelor's thesis",
    de: "Bachelorarbeit",
  ),

  master-thesis: value(
    en: "Master's thesis",
    de: "Masterarbeit",
  ),

  faculty-of: value(
    en: "Faculty of",
    de: "Fakultät",
  ),

  department-of: value(
    en: "Department of",
    de: "Department",
  ),

  research-group: value(
    en: "Group",
    de: "Arbeitsgruppe",
  ),

  bachelor-thesis-submitted-for-examination-in-bachelors-degree: value(
    en: "Bachelor's thesis submitted in partial fulfillment of the requirements",
    de: "Bachelorarbeit eingereicht im Rahmen der Bachelorprüfung",
  ),

  master-thesis-submitted-for-examination-in-masters-degree: value(
    en: "Master's thesis submitted in partial fulfillment of the requirements",
    de: "Masterarbeit eingereicht im Rahmen der Masterprüfung",
  ),

  in-the-study-course: value(
    en: "for the degree of ",
    de: "im Studiengang"
  ),

  at-the-department: value(
    en: "at the Department of",
    de: "am Fachbereich"
  ),

  at-the-faculty-of: value(
    en: "at the Faculty of",
    de: "der Fakultät"
  ),

  at-university-of-muenster: value(
    en: "at the University of Münster",
    de: "der Universität Münster"
  ),

  supervising-examiner: value(
    en: "Supervising examiner",
    de: "Betreuender Prüfer",
  ),

  second-examiner: value(
    en: "Second examiner",
    de: "Zweitgutachter",
  ),

  submitted: value(
    en: "Submitted",
    de: "Eingereicht am",
  ),

  list-of-figures: value(
    en: "List of Figures",
    de: "Abbildungsverzeichnis"
  ),

  list-of-tables: value(
    en: "List of Tables",
    de: "Tabellenverzeichnis"
  ),

  listings: value(
    en: "Listings",
    de: "Listings"
  ),

  declaration-of-independent-processing: value(
    en: "Declaration of Independent Processing",
    de: "Erklärung zur selbstständigen Bearbeitung",
  ),

  declaration-of-independent-processing-content: value(
    en: "I hereby certify that I wrote this work independently without any outside help and only used the resources specified. Passages taken literally or figuratively from other works are identified by citing the sources.",
    de: "Hiermit versichere ich, dass ich die vorliegende Arbeit ohne fremde Hilfe selbständig verfasst und nur die angegebenen Hilfsmittel benutzt habe. Wörtlich oder dem Sinn
nach aus anderen Werken entnommene Stellen sind unter Angabe der Quellen kenntlich gemacht.",
  ),

  place: value(
    en: "Place",
    de: "Ort",
  ),

  date: value(
    en: "Date",
    de: "Datum",
  ),

  signature: value(
    en: "Original Signature",
    de: "Unterschrift im Original"
  ),

  submitted-by: value(
    en: "submitted by",
    de: "eingereicht von"
  ),

  matricule-number: value(
    en: "Matricule Number",
    de: "Matrikelnummer"
  ),

  course-of-study: value(
    en: "Course of Study",
    de: "Studiengang"
  )
)