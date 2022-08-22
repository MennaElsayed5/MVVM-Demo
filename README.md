# MVVM-Demo
MVVM (Model View ViewModel) is an architectural pattern based on MVC and MVP, which attempts to more clearly separate the development of user-interfaces (UI) from that of the business logic and behaviour in an application.

Model: It is simillar to model layer in MVC (contains data business logic)
View: UIViews + UIViewControllers (We treat both layout view and controllers as View)
ViewModel: A mediator to glue two above layer together.
An important point in MVVM is that it uses a binder as communication tool between View and ViewModel layers. A technique named Data Binding is used.

Demo
A simple app which shows the list of movies from api using MVVM architecture
