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

    Sub PageLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim salary As Decimal = CType(Session.Item("salary"), String)

        If Session("male") = True Then
            mrLabel.Text = "Mr."
        End If

        If Session("female") = True Then
            mrsLabel.Text = "Mrs."
        End If

        sessionNameLabel.Text = Session("name")
        sessionDateLabel.Text = Session("date")
        Label4.Text = String.Format("{0:c}", salary)

    End Sub

End Class
