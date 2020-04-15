/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "backend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_backend_t {
    QByteArrayData data[19];
    char stringdata0[187];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_backend_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_backend_t qt_meta_stringdata_backend = {
    {
QT_MOC_LITERAL(0, 0, 7), // "backend"
QT_MOC_LITERAL(1, 8, 13), // "activeChanged"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 17), // "linPhone_finished"
QT_MOC_LITERAL(4, 41, 9), // "stop_call"
QT_MOC_LITERAL(5, 51, 11), // "door_unlock"
QT_MOC_LITERAL(6, 63, 8), // "call_end"
QT_MOC_LITERAL(7, 72, 10), // "call_start"
QT_MOC_LITERAL(8, 83, 12), // "sip_addresse"
QT_MOC_LITERAL(9, 96, 10), // "bell_sound"
QT_MOC_LITERAL(10, 107, 17), // "close_application"
QT_MOC_LITERAL(11, 125, 6), // "unlock"
QT_MOC_LITERAL(12, 132, 8), // "passcode"
QT_MOC_LITERAL(13, 141, 6), // "active"
QT_MOC_LITERAL(14, 148, 4), // "name"
QT_MOC_LITERAL(15, 153, 14), // "QList<QString>"
QT_MOC_LITERAL(16, 168, 7), // "strasse"
QT_MOC_LITERAL(17, 176, 6), // "height"
QT_MOC_LITERAL(18, 183, 3) // "sip"

    },
    "backend\0activeChanged\0\0linPhone_finished\0"
    "stop_call\0door_unlock\0call_end\0"
    "call_start\0sip_addresse\0bell_sound\0"
    "close_application\0unlock\0passcode\0"
    "active\0name\0QList<QString>\0strasse\0"
    "height\0sip"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_backend[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       5,   72, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   60,    2, 0x0a /* Public */,
       4,    0,   61,    2, 0x0a /* Public */,
       5,    0,   62,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       6,    0,   63,    2, 0x02 /* Public */,
       7,    1,   64,    2, 0x02 /* Public */,
       9,    0,   67,    2, 0x02 /* Public */,
      10,    0,   68,    2, 0x02 /* Public */,
      11,    1,   69,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Bool, QMetaType::QString,   12,

 // properties: name, type, flags
      13, QMetaType::Bool, 0x00495103,
      14, 0x80000000 | 15, 0x00095009,
      16, 0x80000000 | 15, 0x00095009,
      17, 0x80000000 | 15, 0x00095009,
      18, 0x80000000 | 15, 0x00095009,

 // properties: notify_signal_id
       0,
       0,
       0,
       0,
       0,

       0        // eod
};

void backend::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        backend *_t = static_cast<backend *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->activeChanged(); break;
        case 1: _t->linPhone_finished(); break;
        case 2: _t->stop_call(); break;
        case 3: _t->door_unlock(); break;
        case 4: _t->call_end(); break;
        case 5: _t->call_start((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: _t->bell_sound(); break;
        case 7: _t->close_application(); break;
        case 8: { bool _r = _t->unlock((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (backend::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&backend::activeChanged)) {
                *result = 0;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 4:
        case 3:
        case 2:
        case 1:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<QString> >(); break;
        }
    }

#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        backend *_t = static_cast<backend *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->active(); break;
        case 1: *reinterpret_cast< QList<QString>*>(_v) = _t->name(); break;
        case 2: *reinterpret_cast< QList<QString>*>(_v) = _t->strasse(); break;
        case 3: *reinterpret_cast< QList<QString>*>(_v) = _t->height(); break;
        case 4: *reinterpret_cast< QList<QString>*>(_v) = _t->sip(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        backend *_t = static_cast<backend *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setActive(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject backend::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_backend.data,
      qt_meta_data_backend,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *backend::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *backend::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_backend.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int backend::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void backend::activeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
