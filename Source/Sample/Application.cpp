#include "Source/Sample/Application.h"
#include <QApplication>
#include "Source/Content/MainWindow.h"
#include "Utils/Exception.h"
#include "View/Qu.h"

namespace Rt2::Samples
{
    bool Application::parse(int argc, char** argv)
    {
        return true;
    }

    int Application::go()
    {
        int argc = 0;

        QApplication app(argc, nullptr);
        View::Qu::initResources(app);

        View::QtTemplate win{};
        win.showMaximized();

        return QApplication::exec();
    }

}  // namespace Rt2::Samples

int main(int argc, char* argv[])
{
    int rc = 1;
    try
    {
        Rt2::Samples::Application app;
        if (app.parse(argc, argv))
            rc = app.go();
    }
    catch (Rt2::Exception& ex)
    {
        Rt2::Console::println(ex.what());
        rc = 1;
    }
    return rc;
}
