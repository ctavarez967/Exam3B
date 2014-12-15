Imports System.Threading
Imports System.Globalization
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()

        Dim SelectedLanguage As String = Request.Form("OriginalDropdown")

        If Request.Form("OriginalDropdown") IsNot Nothing Or SelectedLanguage <> "" Then

            UICulture = Request.Form("OriginalDropdown")
            Culture = Request.Form("OriginalDropdown")

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(SelectedLanguage)
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(SelectedLanguage)

        End If

        Dim ChangedLanguage As String = Request.Form("OtherDropdown")

        If Request.Form("OtherDropdown") IsNot Nothing Or ChangedLanguage <> "" Then

            UICulture = Request.Form("OtherDropdown")
            Culture = Request.Form("OtherDropdown")

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(ChangedLanguage)
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(ChangedLanguage)

        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        NameTbx.Focus()
        HelloLbl.Visible = False
        SexLbl.Visible = False
        NameResultsLbl.Visible = False
        GraduationResultLbl.Visible = False
        HopeLbl.Visible = False
        EarningsResultLbl.Visible = False
        currencyLbl.Visible = False
        GradDateLbl.Visible = False
        OtherDropdown.Visible = False
        EarningsEndingLbl.Visible = False
        VisitLbl.Visible = False
        GitHubHperlink.Visible = False
    End Sub

    Protected Sub Submitbtn_Click(sender As Object, e As EventArgs) Handles Submitbtn.Click
        HelloLbl.Visible = True
        SexLbl.Visible = True
        NameResultsLbl.Visible = True
        GradDateLbl.Visible = True
        GraduationResultLbl.Visible = True
        HopeLbl.Visible = True
        currencyLbl.Visible = True
        EarningsResultLbl.Visible = True
        EarningsEndingLbl.Visible = True
        OtherDropdown.Visible = True
        VisitLbl.Visible = True
        GitHubHperlink.Visible = True

        Namelbl.Visible = False
        NameTbx.Visible = False
        Genderlbl.Visible = False
        MaleFemaleRb.Visible = False
        Graduationlbl.Visible = False
        Calendar.Visible = False
        Earningslbl.Visible = False
        Earningstbx.Visible = False
        OriginalDropdown.Visible = False
        Submitbtn.Visible = False

        'Gender Selection
        Dim choice As String = ""

        If MaleFemaleRb.SelectedIndex = 0 Then
            choice = "Ms."
        ElseIf MaleFemaleRb.SelectedIndex = 1 Then
            choice = "Mr."

        End If

        SexLbl.Text = choice

        'Name label
        Dim name As String = NameTbx.Text
        NameResultsLbl.Text = name

        'Calendar
        Dim dateSelected As Date = Calendar.SelectedDate
        GradDateLbl.Text = dateSelected.ToString("MMMM dd, yyyy")

        'Currenct
        Dim earnings As Decimal = Earningstbx.Text
        EarningsResultLbl.Text = String.Format("{0:n}", earnings)

    End Sub

    Protected Sub ChangeLangDropdown_SelectedIndexChanged(sender As Object, e As EventArgs) Handles OtherDropdown.SelectedIndexChanged
        HelloLbl.Visible = True
        SexLbl.Visible = True
        NameResultsLbl.Visible = True
        GradDateLbl.Visible = True
        GraduationResultLbl.Visible = True
        HopeLbl.Visible = True
        currencyLbl.Visible = True
        EarningsResultLbl.Visible = True
        EarningsEndingLbl.Visible = True
        OtherDropdown.Visible = True
        VisitLbl.Visible = True
        GitHubHperlink.Visible = True

        Namelbl.Visible = False
        NameTbx.Visible = False
        Genderlbl.Visible = False
        MaleFemaleRb.Visible = False
        Graduationlbl.Visible = False
        Calendar.Visible = False
        Earningslbl.Visible = False
        Earningstbx.Visible = False
        OriginalDropdown.Visible = False
        Submitbtn.Visible = False

        'Other Genter selections
        Dim choice As String = ""

        If MaleFemaleRb.SelectedIndex = 0 Then
            choice = "Ms."
        ElseIf MaleFemaleRb.SelectedIndex = 1 Then
            choice = "Mr."
        End If

        SexLbl.Text = choice

        'Other Name label
        Dim name As String = NameTbx.Text
        NameResultsLbl.Text = name

        'Other Calendar
        Dim dateSelected As Date = Calendar.SelectedDate
        GradDateLbl.Text = dateSelected.ToString("MMMM dd, yyyy")

        'Other Currency
        Dim earnings As Decimal = Earningstbx.Text
        EarningsResultLbl.Text = String.Format("{0:n}", earnings)
    End Sub
End Class
