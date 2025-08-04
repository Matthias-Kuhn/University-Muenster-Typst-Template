#import "../../translations.typ": translations

#let classic_cover_page(
  is-thesis: true,
  is-master-thesis: false,
  is-bachelor-thesis: true,
  is-report: false,
  title: "",
  author: "",
  matricule-number: "",
  faculty: "",
  department: "",
  group: "",
  study-course: "",
  supervisors: (),
  submission-date: none,
) = {
  // Set the document's basic properties.
  set page(
    margin: (left: 10mm, right: 10mm, top: 10mm, bottom: 10mm),
    numbering: none,
    number-align: center,
  )

  // University of Münster Logo
  place(
    top + center,
    dy: 10mm,
    image("../../assets/logo.svg", width: 300pt),
  )

  // Title etc.

  place(
    center,
    dy: 75mm,
    stack(
      // Title
      line(start: (0pt, 0pt), length: 450pt, stroke: 0.2mm),
      v(5mm),
      par(
        leading: 9pt,
        text(title, size: 25pt, weight: "bold"),
      ),
      v(5mm),
      line(start: (0pt, 0pt), length: 450pt, stroke: 0.2mm),
      // Type
      if is-thesis {
        v(20mm)
        let thesis-title
        if is-bachelor-thesis {
          thesis-title = translations.bachelor-thesis
        } else if is-master-thesis {
          thesis-title = translations.master-thesis
        }
        text(upper(thesis-title), size: 15pt)
      },
      // Author
      v(18mm),
      text(translations.submitted-by, size: 12pt),
      v(8mm),
      text(author, size: 20pt, weight: "bold"),

      v(30mm),

      if is-thesis {
        set text(size: 10pt)
        place(
          center + bottom,
          //dy: -150pt,
          box(
            width: 300pt,
            place(
              top,
              table(
                columns: (1fr, 1fr),
                stroke: none,
                align: (right, left),

                text(translations.course-of-study, weight: "bold"), study-course,
                text(translations.matricule-number, weight: "bold"), matricule-number,
                [*Submission Date*], submission-date.display("[day].[month].[year]"),
              ),
            ),
          ),
        )
      },
    ),
  )

  // University name text
  place(
    right + bottom,
    dx: 10mm,
    dy: -25mm,
    box(
      width: 200pt,
      align(
        left,
        stack(
          line(start: (0pt, 0pt), length: 25pt, stroke: 0.9mm),
          v(3mm),
          text("UNIVERSITÄT MÜNSTER", size: 9pt, weight: "bold"),
          v(3mm),
          text("University of Münster", size: 9pt),
          v(2mm),
          // Faculty
          text(translations.faculty-of + " " + faculty, size: 8pt),
          if department.len() > 0 {
            v(2mm)
            // Department
            text(translations.department-of + " " + department, size: 8pt)
          },
          if group.len() > 0 {
            v(2mm)
            // Group
            text(group + " " + translations.research-group, size: 8pt)
          },
        ),
      ),
    ),
  )

  if (is-report) {
    set text(size: 11pt)
    place(
      left + top,
      dx: 18mm,
      dy: 252mm,
      stack(
        // Submission date
        if submission-date != none {
          text(
            translations.submitted + ": " + submission-date.display("[day]. [month repr:long] [year]"),
          )

          v(10pt)
        },

        // Supervision
        if supervisors.len() > 0 and type(supervisors) != array {
          text(
            translations.supervising-examiner + ": " + text(upper(supervisors)),
          )
        } else if supervisors.len() > 0 {
          stack(
            text(
              translations.supervising-examiner + ": " + text(supervisors.first()),
            ),
            if supervisors.len() > 1 {
              v(10pt)
              text(
                translations.second-examiner + ": " + text(supervisors.at(1)),
              )
            },
          )
        },
      ),
    )
  }


  if is-thesis {
    // University of Münster Claim
    place(
      bottom + left,
      dx: +13mm,
      dy: -40mm,
      image("../../assets/claim.svg", width: 33mm),
    )
    // Second cover page
    pagebreak()

    // Set the document's basic properties.
    set page(
      margin: (left: 31.5mm, right: 32mm, top: 55mm, bottom: 67mm),
      numbering: none,
      number-align: center,
    )

    // Title etc.
    stack(
      // Author
      align(
        center,
        text(author, size: 14pt),
      ),
      v(23mm),
      // Title
      align(
        center,
        par(
          leading: 13pt,
          text(title, size: 18pt),
        ),
      ),
      v(22mm),
    )

    v(1fr)

    stack(
      // Content
      stack(
        spacing: 3mm,
        if is-bachelor-thesis {
          text(translations.bachelor-thesis-submitted-for-examination-in-bachelors-degree)
        } else if is-master-thesis {
          text(translations.master-thesis-submitted-for-examination-in-masters-degree)
        },
        text(translations.in-the-study-course + " " + text(study-course, style: "italic")),
        text(translations.at-the-department + " " + department),
        text(translations.at-the-faculty-of + " " + faculty),
        text(translations.at-university-of-muenster),
      ),

      v(4mm),
      line(start: (0pt, 0pt), length: 25pt, stroke: 1mm),
      v(4mm),

      // Supervision
      if supervisors.len() > 0 {
        if type(supervisors) != array {
          text(translations.supervising-examiner + ": " + text(upper(supervisors), weight: "bold"), size: 10pt)
        } else {
          text(translations.supervising-examiner + ": " + text(upper(supervisors.first()), weight: "bold"), size: 10pt)

          if supervisors.len() > 1 {
            linebreak()
            text(translations.second-examiner + ": " + text(upper(supervisors.at(1)), weight: "bold"), size: 10pt)
          }
        }
      },

      // Submission date
      if submission-date != none {
        stack(
          v(4mm),
          line(start: (0pt, 0pt), length: 25pt, stroke: 1mm),
          v(4mm),
          text(
            translations.submitted + ": " + submission-date.display("[day]. [month repr:long] [year]"),
            size: 10pt,
          ),
        )
      },
    )
  }
}
