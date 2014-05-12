Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()

        Dim lang As String = Request("language1")

        If lang IsNot Nothing Or lang <> "" Then

            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
        End If

    End Sub

    Sub PageLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim salary As Decimal = CType(Session.Item("salary"), String)

        If Session("male") = True Then
            Label7.Text = "Mr."
        End If

        If Session("female") = True Then
            Label15.Text = "Mrs."
        End If

        Label8.Text = Session("name")
        Label10.Text = Session("date")
        Label12.Text = String.Format("{0:c}", salary)

    End Sub

End Class
