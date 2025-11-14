#import "pages/covers/covers.typ": covers

#let report(
  language: "en",
  title: "",
  author: "",
  matricule-number: "",
  faculty: "",
  department: "",
  group: "",
  supervisors: (),
  submission-date: none,
  include-declaration-of-independent-processing: false,
  cover: "modern",
  body,
) = {
  import "template.typ": template
  template(
    is-thesis: false,
    is-master-thesis: false,
    is-bachelor-thesis: false,
    is-report: true,

    language: language,
    
    title-de: title,
    keywords-de: none,
    abstract-de: none,

    title-en: title,
    keywords-en: none,
    abstract-en: none,

    author: author,
    matricule-number: matricule-number,
    faculty: faculty,
    department: department,
    group: group,
    study-course: none,
    supervisors: supervisors,
    submission-date: submission-date,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    cover: covers.at(cover),
    body,
  )
}

#let bachelor-thesis(
  language: "en",

  title-de: "",
  keywords-de: none,
  abstract-de: none,

  title-en: none,
  keywords-en: none,
  abstract-en: none,

  author: "",
  matricule-number: "",
  faculty: "",
  department: "",
  group: "",
  study-course: "",
  supervisors: (),
  submission-date: none,
  include-declaration-of-independent-processing: true,
  body,
  cover: "modern",
) = {
  import "template.typ": template
  template(
    is-thesis: true,
    is-master-thesis: false,
    is-bachelor-thesis: true,
    is-report: false,

    language: language,

    title-de: title-de,
    keywords-de: keywords-de,
    abstract-de: abstract-de,

    title-en: title-en,
    keywords-en: keywords-en,
    abstract-en: abstract-en,

    author: author,
    matricule-number: matricule-number,
    faculty: faculty,
    department: department,
    group: group,
    study-course: study-course,
    supervisors: supervisors,
    submission-date: submission-date,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    body,
    cover: covers.at(cover),
  )
}

#let master-thesis(
  language: "en",

  title-de: "",
  subtitle-de: none,
  keywords-de: none,
  abstract-de: none,

  title-en: none,
  subtitle-en: none,
  keywords-en: none,
  abstract-en: none,

  author: "",
  mail: "",
  matricule-number: "",
  faculty: "",
  department: "",
  group: "",
  study-course: "",
  supervisors: (),
  submission-date: none,
  include-declaration-of-independent-processing: true,
  body,
  cover: "modern",
) = {
  import "template.typ": template
  template(
    is-thesis: true,
    is-master-thesis: true,
    is-bachelor-thesis: false,
    is-report: false,

    language: language,

    title-de: title-de,
    subtitle-de : subtitle-de,
    keywords-de: keywords-de,
    abstract-de: abstract-de,

    title-en: title-en,
    subtitle-en: subtitle-en,
    keywords-en: keywords-en,
    abstract-en: abstract-en,

    author: author,
    mail: mail,
    matricule-number: matricule-number,
    faculty: faculty,
    department: department,
    group: group,
    study-course: study-course,
    supervisors: supervisors,
    submission-date: submission-date,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    body,
    cover: covers.at(cover),
  )
}