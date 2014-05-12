Imports System.Threading
Imports System.Globalization

Partial Class _Default

    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()

        Dim language As String = Request("language1")

        If language IsNot Nothing Or language <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(language)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language)
        End If

    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

        Dim graduationdate As String = Calendar1.SelectedDate.ToShortDateString()
        dateLabel.Text = graduationdate

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Session("name") = tbName.Text
        Session("salary") = tbSalary.Text
        Session("male") = maleButton.Checked
        Session("female") = femaleButton.Checked
        Session("date") = dateLabel.Text

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Response.Redirect("~/SubmitPage.aspx")
    End Sub

End Class
