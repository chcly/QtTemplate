#include "MainWindow.h"
#include <QLabel>
#include <QVBoxLayout>
#include <QWidget>
#include "View/Style.h"


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
        const auto layout = Style::Layout::v5();
        constructView(layout);

        layout->addWidget(
            Style::Widget::label("Hello World"),
            1,
            Qt::AlignCenter);
    }

}  // namespace Rt2::View
