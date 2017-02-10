<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit0c42d25637fbe21ecd97e717dbac20e5
{
    public static $files = array (
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
            'Symfony\\Component\\Translation\\' => 30,
        ),
        'R' => 
        array (
            'RRule\\' => 6,
        ),
        'C' => 
        array (
            'Carbon\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Symfony\\Component\\Translation\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/translation',
        ),
        'RRule\\' => 
        array (
            0 => __DIR__ . '/..' . '/rlanvin/php-rrule/src',
        ),
        'Carbon\\' => 
        array (
            0 => __DIR__ . '/..' . '/nesbot/carbon/src/Carbon',
        ),
    );

    public static $classMap = array (
        'Calendar\\Library\\Attributes\\AbstractAttributes' => __DIR__ . '/../..' . '/Library/Attributes/AbstractAttributes.php',
        'Calendar\\Library\\Attributes\\CalendarAttributes' => __DIR__ . '/../..' . '/Library/Attributes/CalendarAttributes.php',
        'Calendar\\Library\\Carbon' => __DIR__ . '/../..' . '/Library/Carbon.php',
        'Calendar\\Library\\CodePack\\CodePack' => __DIR__ . '/../..' . '/Library/CodePack/CodePack.php',
        'Calendar\\Library\\CodePack\\Components\\AbstractFileComponent' => __DIR__ . '/../..' . '/Library/CodePack/Components/AbstractFileComponent.php',
        'Calendar\\Library\\CodePack\\Components\\AbstractJsonComponent' => __DIR__ . '/../..' . '/Library/CodePack/Components/AbstractJsonComponent.php',
        'Calendar\\Library\\CodePack\\Components\\AssetsFileComponent' => __DIR__ . '/../..' . '/Library/CodePack/Components/AssetsComponent.php',
        'Calendar\\Library\\CodePack\\Components\\ComponentInterface' => __DIR__ . '/../..' . '/Library/CodePack/Components/ComponentInterface.php',
        'Calendar\\Library\\CodePack\\Components\\FileObject\\File' => __DIR__ . '/../..' . '/Library/CodePack/Components/FileObject/File.php',
        'Calendar\\Library\\CodePack\\Components\\FileObject\\FileObject' => __DIR__ . '/../..' . '/Library/CodePack/Components/FileObject/FileObject.php',
        'Calendar\\Library\\CodePack\\Components\\FileObject\\Folder' => __DIR__ . '/../..' . '/Library/CodePack/Components/FileObject/Folder.php',
        'Calendar\\Library\\CodePack\\Components\\RoutesComponent' => __DIR__ . '/../..' . '/Library/CodePack/Components/RoutesComponent.php',
        'Calendar\\Library\\CodePack\\Components\\TemplatesFileComponent' => __DIR__ . '/../..' . '/Library/CodePack/Components/TemplatesComponent.php',
        'Calendar\\Library\\CodePack\\Exceptions\\CodePackException' => __DIR__ . '/../..' . '/Library/CodePack/Exceptions/CodePackException.php',
        'Calendar\\Library\\CodePack\\Exceptions\\FileObject\\FileNotFoundException' => __DIR__ . '/../..' . '/Library/CodePack/Exceptions/FileObject/FileNotFoundException.php',
        'Calendar\\Library\\CodePack\\Exceptions\\FileObject\\FileObjectException' => __DIR__ . '/../..' . '/Library/CodePack/Exceptions/FileObject/FileObjectException.php',
        'Calendar\\Library\\CodePack\\Exceptions\\Manifest\\ManifestException' => __DIR__ . '/../..' . '/Library/CodePack/Exceptions/Manifest/ManifestException.php',
        'Calendar\\Library\\CodePack\\Exceptions\\Manifest\\ManifestNotPresentException' => __DIR__ . '/../..' . '/Library/CodePack/Exceptions/Manifest/ManifestNotPresentException.php',
        'Calendar\\Library\\CodePack\\Manifest' => __DIR__ . '/../..' . '/Library/CodePack/Manifest.php',
        'Calendar\\Library\\ColorHelper' => __DIR__ . '/../..' . '/Library/ColorHelper.php',
        'Calendar\\Library\\ColorJizz\\ColorJizz' => __DIR__ . '/../..' . '/Library/ColorJizz/ColorJizz.php',
        'Calendar\\Library\\ColorJizz\\Exceptions\\InvalidArgumentException' => __DIR__ . '/../..' . '/Library/ColorJizz/Exceptions/InvalidArgumentException.php',
        'Calendar\\Library\\ColorJizz\\Formats\\CIELCh' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/CIELCh.php',
        'Calendar\\Library\\ColorJizz\\Formats\\CIELab' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/CIELab.php',
        'Calendar\\Library\\ColorJizz\\Formats\\CMY' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/CMY.php',
        'Calendar\\Library\\ColorJizz\\Formats\\CMYK' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/CMYK.php',
        'Calendar\\Library\\ColorJizz\\Formats\\HSV' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/HSV.php',
        'Calendar\\Library\\ColorJizz\\Formats\\Hex' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/Hex.php',
        'Calendar\\Library\\ColorJizz\\Formats\\RGB' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/RGB.php',
        'Calendar\\Library\\ColorJizz\\Formats\\XYZ' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/XYZ.php',
        'Calendar\\Library\\ColorJizz\\Formats\\Yxy' => __DIR__ . '/../..' . '/Library/ColorJizz/Formats/Yxy.php',
        'Calendar\\Library\\DataObjects\\EventListOptions' => __DIR__ . '/../..' . '/Library/DataObjects/EventListOptions.php',
        'Calendar\\Library\\DataObjects\\OccurrenceLoader' => __DIR__ . '/../..' . '/Library/DataObjects/OccurrenceLoader.php',
        'Calendar\\Library\\DatabaseHelper' => __DIR__ . '/../..' . '/Library/DatabaseHelper.php',
        'Calendar\\Library\\DateHelper' => __DIR__ . '/../..' . '/Library/DateHelper.php',
        'Calendar\\Library\\DateTimeUTC' => __DIR__ . '/../..' . '/Library/DateTimeUTC.php',
        'Calendar\\Library\\Duration\\AbstractDuration' => __DIR__ . '/../..' . '/Library/Duration/AbstractDuration.php',
        'Calendar\\Library\\Duration\\DayDuration' => __DIR__ . '/../..' . '/Library/Duration/DayDuration.php',
        'Calendar\\Library\\Duration\\DurationInterface' => __DIR__ . '/../..' . '/Library/Duration/DurationInterface.php',
        'Calendar\\Library\\Duration\\EventDuration' => __DIR__ . '/../..' . '/Library/Duration/EventDuration.php',
        'Calendar\\Library\\Duration\\HourDuration' => __DIR__ . '/../..' . '/Library/Duration/HourDuration.php',
        'Calendar\\Library\\Duration\\MonthDuration' => __DIR__ . '/../..' . '/Library/Duration/MonthDuration.php',
        'Calendar\\Library\\Duration\\WeekDuration' => __DIR__ . '/../..' . '/Library/Duration/WeekDuration.php',
        'Calendar\\Library\\Events\\AbstractEventCollection' => __DIR__ . '/../..' . '/Library/Events/AbstractEventCollection.php',
        'Calendar\\Library\\Events\\Calendar' => __DIR__ . '/../..' . '/Library/Events/Calendar.php',
        'Calendar\\Library\\Events\\Event' => __DIR__ . '/../..' . '/Library/Events/Event.php',
        'Calendar\\Library\\Events\\EventCollectionInterface' => __DIR__ . '/../..' . '/Library/Events/EventCollectionInterface.php',
        'Calendar\\Library\\Events\\EventDay' => __DIR__ . '/../..' . '/Library/Events/EventDay.php',
        'Calendar\\Library\\Events\\EventHour' => __DIR__ . '/../..' . '/Library/Events/EventHour.php',
        'Calendar\\Library\\Events\\EventList' => __DIR__ . '/../..' . '/Library/Events/EventList.php',
        'Calendar\\Library\\Events\\EventMonth' => __DIR__ . '/../..' . '/Library/Events/EventMonth.php',
        'Calendar\\Library\\Events\\EventWeek' => __DIR__ . '/../..' . '/Library/Events/EventWeek.php',
        'Calendar\\Library\\Exceptions\\AttributeException' => __DIR__ . '/../..' . '/Library/Exceptions/AttributeException.php',
        'Calendar\\Library\\Exceptions\\CalendarException' => __DIR__ . '/../..' . '/Library/Exceptions/CalendarException.php',
        'Calendar\\Library\\Exceptions\\DateHelperException' => __DIR__ . '/../..' . '/Library/Exceptions/DateHelperException.php',
        'Calendar\\Library\\Exceptions\\DurationException' => __DIR__ . '/../..' . '/Library/Exceptions/DurationException.php',
        'Calendar\\Library\\Exceptions\\EventException' => __DIR__ . '/../..' . '/Library/Exceptions/EventException.php',
        'Calendar\\Library\\Export\\AbstractExportCalendar' => __DIR__ . '/../..' . '/Library/Export/AbstractExportCalendar.php',
        'Calendar\\Library\\Export\\ExportCalendarInterface' => __DIR__ . '/../..' . '/Library/Export/ExportCalendarInterface.php',
        'Calendar\\Library\\Export\\ExportCalendarToIcs' => __DIR__ . '/../..' . '/Library/Export/ExportCalendarToIcs.php',
        'Calendar\\Library\\PermissionsHelper' => __DIR__ . '/../..' . '/Library/PermissionsHelper.php',
        'Calendar\\Library\\RecurrenceHelper' => __DIR__ . '/../..' . '/Library/RecurrenceHelper.php',
        'Library\\Events\\TinyBaseModel' => __DIR__ . '/../..' . '/Library/Events/TinyBaseModel.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit0c42d25637fbe21ecd97e717dbac20e5::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit0c42d25637fbe21ecd97e717dbac20e5::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit0c42d25637fbe21ecd97e717dbac20e5::$classMap;

        }, null, ClassLoader::class);
    }
}