#include "MainWindow.h"
#include <QBoxLayout>
#include <QLabel>
#include <QWidget>
#include "View/Colors.h"
#include "View/Metrics.h"
#include "View/Qu.h"

namespace Rt2::View
{
    QtTemplate::QtTemplate(QWidget* parent) :
        LayoutView(parent)
    {
        construct();
    }

    QtTemplate::~QtTemplate() = default;

    void QtTemplate::construct()
    {
        const auto layout = Qu::vertical();
        constructView(layout);

        layout->addWidget(
            Qu::text("Hello World", Colors::ForegroundLight),
            1,
            Qt::AlignCenter);

        layout->invalidate();
    }

}  // namespace Rt2::View
