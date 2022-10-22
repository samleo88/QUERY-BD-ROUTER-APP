Imports entidad
Imports daots
Public Class Form1

    Dim fu As New Fusuario
    Dim eu As New Eusuario


    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnaceptar_Click(sender As Object, e As EventArgs) Handles btnaceptar.Click

        Try

            If txtcontraseña.Text <> "" And txtususario.Text <> "" Then
                Dim dt As New DataTable

                eu._users = txtususario.Text
                eu._passwords = txtcontraseña.Text
                dt = fu.validarusuario(eu)
                If dt.Rows.Count > 0 Then
                    Timer1.Start()

                    Dim nivel As String
                    nivel = dt.Rows(0)("nivel")
                    If nivel = "usuario" Then
                        My.Forms.MDIParent1.msmantenimiento.Enabled = False
                    ElseIf nivel = "administrador" Then

                        My.Forms.MDIParent1.MenuStrip.Enabled = True
                    End If
                Else
                    Static intento As Integer

                    intento = intento + 1
                    MsgBox("estimado usuario te quedan " & (3 - intento) & " intentos")
                    If intento = 3 Then
                        MsgBox("el sistema se cerrara , gracias", MsgBoxStyle.Critical, "SISTEMA")

                        Me.Close()
                        'inicio de proceso de apagado
                        'Process.Start("shutdow.exe", "-s -t 00")

                    End If


                End If


            End If


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        ProgressBar1.Increment(5)
        If ProgressBar1.Value = 100 Then
            Timer1.Enabled = False
            Me.Hide()
            MsgBox("Bienvenido al sistema " & txtususario.Text)
            MDIParent1.Show()

        End If

    End Sub

    Private Sub btncancelar_Click(sender As Object, e As EventArgs) Handles btncancelar.Click
        Me.Close()
    End Sub
End Class
