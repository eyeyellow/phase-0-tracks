classroom = {
  henry: {
    grades: [ 85.00,78.36, 64.98
    ],
    student_info: {
      gender: "male",
      phone_num: 1111111,
      contact: "mom",
    },
    comments: ["allergic to peanuts", "can't sit with Brandon"]
  },
  stephanie: {
    grades: [ 78.10,98.45, 65.11
    ],
    student_info: {
      gender: "female",
      phone_num: 2323234,
      contact: "dad",
    },
    comments: ["works well with Kevin", "away for camp in April"]
  },
  martha: {
    grades: [ 55.70,68.56, 67.87
    ],
    student_info: {
      gender: "female",
      phone_num: 5675675,
      contact: "brother",
    },
    comments: ["problems focusing", "receiving tutoring in math"]
  }
}

puts classroom[:stephanie][:grades][1]

puts classroom[:martha][:student_info][:gender]

puts classroom[:henry][:comments][0]