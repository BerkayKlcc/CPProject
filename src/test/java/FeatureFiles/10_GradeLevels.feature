Feature:Grade Levels Functionality

  Background:
    Given Navigate to campus
    When Enter username and password click login button
    Then User should login successfully

  Scenario: Create Grade Levels
    And Click on the element in left nav
      | setupOne    |
      | parametersG |
      | gradeLevels |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput | gulGL01 |
      | shortName_5 | ggl01   |
      | order     | 1       |

    And Click on the element in the Dialog
      | schools       |
      | schoolsOption |

    And Click on the tab in the Dialog

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayed

  Scenario: Edit Grade Levels
    And Click on the element in left nav
      | setupOne    |
      | parametersG |
      | gradeLevels |

    And User edit item from Dialog content
      | nameInput | gulG02 |

    Then Success message should be displayed

  Scenario: Delete Grade Levels
    And Click on the element in left nav
      | setupOne    |
      | parametersG |
      | gradeLevels |

    And User delete item from Dialog without search
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed