package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import com.google.gson.internal.NonNullElementWrapperList;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;

import java.util.List;

public class SubjectCategories {

    LeftNav ln = new LeftNav();

    DialogContent dc = new DialogContent();

    @And("Navigate to SubjectCategories Under Education")
    public void navigateToSubjectCategoriesUnderEducation(DataTable elements) {
        List<String> listElement = elements.asList(String.class);
        for (String strButton : listElement) {
            ln.findAndClick(strButton);
        }
    }

    @And("Click on the element in the SubjectCategories")
    public void clickOnTheElementInTheSubjectCategories(DataTable elements) {
        List<String> listElement = elements.asList(String.class);
        for (String strButton : listElement) {
            dc.findAndClick(strButton);
        }
    }

    @And("User sending the key in SubjectCategories")
    public void userSendingTheKeyInSubjectCategories(DataTable elements) {
        List<List<String>> listElement = elements.asLists(String.class);
        for (int i = 0; i < listElement.size(); i++) {
            dc.findAndSend(listElement.get(i).get(0), listElement.get(i).get(1));
        }
    }
}
