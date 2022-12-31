Feature: SubjectCategories Functionality

  Background:
    Given Navigate to campus
    And Enter username and password click login button
    Then User should login successfully

  Scenario: Add Position
    And Navigate to SubjectCategories Under Education
      | Education_6         |
      | EducationSetup_6    |
      | SubjectCategories_6 |

    And Click on the element in the SubjectCategories
      | addButton |

    And User sending the key in SubjectCategories
      | nameInput | Group_4_can |
      | code_6   | candeneme   |

    And Click on the element in the SubjectCategories
      | saveButton |

    Then Success message should be displayed

  Scenario: Edit Position
    And Navigate to SubjectCategories Under Education
      | Education_6         |
      | EducationSetup_6    |
      | SubjectCategories_6 |

    And Click on the element in the Positions
      | editButton |


    And User sending the key in Positions
      | nameInput | Group_4_can_edit |

    And Click on the element in the Positions
      | saveButton |

    Then Success message should be displayed

  Scenario: Delete Position

    And Navigate to Positions Under HR  Setup
      | Education_6         |
      | EducationSetup_6    |
      | SubjectCategories_6 |

    And Click on the element in the Position Categories
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed