#pragma once
#include <QLineEdit>
#include <QWidget>
#include "View/LayoutView.h"

namespace Rt2::View
{
    class QtTemplate final : public LayoutView
    {
        Q_OBJECT
    public:
        explicit QtTemplate(QWidget* parent = nullptr);
        ~QtTemplate() override;

    private:
        void construct();
    };

}  // namespace Rt2::View
