.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    :array_0
    .array-data 0x4
        0xdet 0x0t 0x4t 0x1t
        0xdft 0x0t 0x4t 0x1t
        0xebt 0x0t 0x4t 0x1t
        0xedt 0x0t 0x4t 0x1t
        0xe0t 0x0t 0x4t 0x1t
        0xe2t 0x0t 0x4t 0x1t
        0xe4t 0x0t 0x4t 0x1t
        0xe6t 0x0t 0x4t 0x1t
        0xd0t 0x0t 0x4t 0x1t
        0xd1t 0x0t 0x4t 0x1t
        0xd2t 0x0t 0x4t 0x1t
        0xd3t 0x0t 0x4t 0x1t
        0xd5t 0x0t 0x4t 0x1t
        0xd6t 0x0t 0x4t 0x1t
        0xd7t 0x0t 0x4t 0x1t
        0xd4t 0x0t 0x4t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0xe9t 0x0t 0x4t 0x1t
        0xeat 0x0t 0x4t 0x1t
        0xect 0x0t 0x4t 0x1t
        0xe8t 0x0t 0x4t 0x1t
        0xe1t 0x0t 0x4t 0x1t
        0xe3t 0x0t 0x4t 0x1t
        0xe5t 0x0t 0x4t 0x1t
        0xe7t 0x0t 0x4t 0x1t
        0xd0t 0x0t 0x4t 0x1t
        0xd1t 0x0t 0x4t 0x1t
        0xd2t 0x0t 0x4t 0x1t
        0xd3t 0x0t 0x4t 0x1t
        0xd5t 0x0t 0x4t 0x1t
        0xd6t 0x0t 0x4t 0x1t
        0xd7t 0x0t 0x4t 0x1t
        0xd4t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 70
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v40

    .local v40, res:Landroid/content/res/Resources;
    and-int/lit8 v66, p6, 0x1

    if-eqz v66, :cond_5

    const/16 v43, 0x1

    .local v43, showTime:Z
    :goto_0
    and-int/lit8 v66, p6, 0x2

    if-eqz v66, :cond_6

    const/16 v44, 0x1

    .local v44, showWeekDay:Z
    :goto_1
    and-int/lit8 v66, p6, 0x4

    if-eqz v66, :cond_7

    const/16 v45, 0x1

    .local v45, showYear:Z
    :goto_2
    and-int/lit8 v66, p6, 0x8

    if-eqz v66, :cond_8

    const/16 v38, 0x1

    .local v38, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v66, v0

    if-eqz v66, :cond_9

    const/16 v64, 0x1

    .local v64, useUTC:Z
    :goto_4
    const v66, 0x88000

    and-int v66, v66, p6

    if-eqz v66, :cond_a

    const/4 v6, 0x1

    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v66, 0x9

    and-int v66, v66, p6

    if-eqz v66, :cond_b

    const/4 v4, 0x1

    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v66, p6, 0x20

    if-eqz v66, :cond_c

    const/16 v36, 0x1

    .local v36, noMonthDay:Z
    :goto_7
    const/high16 v66, 0x2

    and-int v66, v66, p6

    if-eqz v66, :cond_d

    const/16 v39, 0x1

    .local v39, numericDate:Z
    :goto_8
    cmp-long v66, p2, p4

    if-nez v66, :cond_e

    const/16 v33, 0x1

    .local v33, isInstant:Z
    :goto_9
    new-instance v47, Landroid/text/format/Time;

    invoke-direct/range {v47 .. v47}, Landroid/text/format/Time;-><init>()V

    .local v47, startDate:Landroid/text/format/Time;
    if-eqz p7, :cond_f

    invoke-static/range {p7 .. p7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v46

    .local v46, startCalendar:Ljava/util/Calendar;
    :goto_a
    move-object/from16 v0, v46

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->setTimeFromCalendar(Landroid/text/format/Time;Ljava/util/Calendar;)V

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .local v15, endDate:Landroid/text/format/Time;
    if-eqz v33, :cond_11

    move-object/from16 v15, v47

    const/4 v12, 0x0

    .local v12, dayDistance:I
    :goto_b
    if-nez v33, :cond_1

    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v67, v0

    or-int v66, v66, v67

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v67, v0

    or-int v66, v66, v67

    if-nez v66, :cond_1

    if-eqz v43, :cond_0

    const/16 v66, 0x1

    move/from16 v0, v66

    if-gt v12, v0, :cond_1

    :cond_0
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v66, v0

    add-int/lit8 v66, v66, -0x1

    move/from16 v0, v66

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    const/16 v66, 0x1

    move/from16 v0, v66

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    :cond_1
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v49, v0

    .local v49, startDay:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v52, v0

    .local v52, startMonthNum:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v59, v0

    .local v59, startYear:I
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    .local v17, endDay:I
    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    .local v20, endMonthNum:I
    iget v0, v15, Landroid/text/format/Time;->year:I

    move/from16 v27, v0

    .local v27, endYear:I
    const-string v58, ""

    .local v58, startWeekDayString:Ljava/lang/String;
    const-string v26, ""

    .local v26, endWeekDayString:Ljava/lang/String;
    if-eqz v44, :cond_2

    const-string v65, ""

    .local v65, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_14

    const-string v65, "%a"

    :goto_c
    move-object/from16 v0, v47

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    if-eqz v33, :cond_15

    move-object/from16 v26, v58

    .end local v65           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_d
    const-string v57, ""

    .local v57, startTimeString:Ljava/lang/String;
    const-string v25, ""

    .local v25, endTimeString:Ljava/lang/String;
    if-eqz v43, :cond_4

    const-string v56, ""

    .local v56, startTimeFormat:Ljava/lang/String;
    const-string v24, ""

    .local v24, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v66, v0

    if-eqz v66, :cond_16

    const/16 v30, 0x1

    .local v30, force24Hour:Z
    :goto_e
    and-int/lit8 v66, p6, 0x40

    if-eqz v66, :cond_17

    const/16 v29, 0x1

    .local v29, force12Hour:Z
    :goto_f
    if-eqz v30, :cond_18

    const/16 v63, 0x1

    .local v63, use24Hour:Z
    :goto_10
    if-eqz v63, :cond_1a

    const v66, 0x10400bc

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v56, v24

    :cond_3
    :goto_11
    move-object/from16 v0, v47

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    if-eqz v33, :cond_2e

    move-object/from16 v25, v57

    .end local v24           #endTimeFormat:Ljava/lang/String;
    .end local v29           #force12Hour:Z
    .end local v30           #force24Hour:Z
    .end local v56           #startTimeFormat:Ljava/lang/String;
    .end local v63           #use24Hour:Z
    :cond_4
    :goto_12
    if-eqz v45, :cond_2f

    :goto_13
    if-eqz v39, :cond_33

    const v66, 0x10400bf

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_14
    if-eqz v44, :cond_3c

    if-eqz v43, :cond_3b

    const v66, 0x10400d8

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .local v31, fullFormat:Ljava/lang/String;
    :goto_15
    if-eqz v36, :cond_3e

    move/from16 v0, v52

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e

    move/from16 v0, v59

    move/from16 v1, v27

    if-ne v0, v1, :cond_3e

    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    aput-object v69, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    :goto_16
    return-object v66

    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    .end local v15           #endDate:Landroid/text/format/Time;
    .end local v17           #endDay:I
    .end local v20           #endMonthNum:I
    .end local v25           #endTimeString:Ljava/lang/String;
    .end local v26           #endWeekDayString:Ljava/lang/String;
    .end local v27           #endYear:I
    .end local v31           #fullFormat:Ljava/lang/String;
    .end local v33           #isInstant:Z
    .end local v36           #noMonthDay:Z
    .end local v38           #noYear:Z
    .end local v39           #numericDate:Z
    .end local v43           #showTime:Z
    .end local v44           #showWeekDay:Z
    .end local v45           #showYear:Z
    .end local v46           #startCalendar:Ljava/util/Calendar;
    .end local v47           #startDate:Landroid/text/format/Time;
    .end local v49           #startDay:I
    .end local v52           #startMonthNum:I
    .end local v57           #startTimeString:Ljava/lang/String;
    .end local v58           #startWeekDayString:Ljava/lang/String;
    .end local v59           #startYear:I
    .end local v64           #useUTC:Z
    :cond_5
    const/16 v43, 0x0

    goto/16 :goto_0

    .restart local v43       #showTime:Z
    :cond_6
    const/16 v44, 0x0

    goto/16 :goto_1

    .restart local v44       #showWeekDay:Z
    :cond_7
    const/16 v45, 0x0

    goto/16 :goto_2

    .restart local v45       #showYear:Z
    :cond_8
    const/16 v38, 0x0

    goto/16 :goto_3

    .restart local v38       #noYear:Z
    :cond_9
    const/16 v64, 0x0

    goto/16 :goto_4

    .restart local v64       #useUTC:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    .restart local v6       #abbrevWeekDay:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .restart local v4       #abbrevMonth:Z
    :cond_c
    const/16 v36, 0x0

    goto/16 :goto_7

    .restart local v36       #noMonthDay:Z
    :cond_d
    const/16 v39, 0x0

    goto/16 :goto_8

    .restart local v39       #numericDate:Z
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_9

    .restart local v33       #isInstant:Z
    .restart local v47       #startDate:Landroid/text/format/Time;
    :cond_f
    if-eqz v64, :cond_10

    const-string v66, "UTC"

    invoke-static/range {v66 .. v66}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v46

    .restart local v46       #startCalendar:Ljava/util/Calendar;
    goto/16 :goto_a

    .end local v46           #startCalendar:Ljava/util/Calendar;
    :cond_10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v46

    .restart local v46       #startCalendar:Ljava/util/Calendar;
    goto/16 :goto_a

    .restart local v15       #endDate:Landroid/text/format/Time;
    :cond_11
    if-eqz p7, :cond_12

    invoke-static/range {p7 .. p7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v14

    .local v14, endCalendar:Ljava/util/Calendar;
    :goto_17
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v15, v14}, Landroid/text/format/DateUtils;->setTimeFromCalendar(Landroid/text/format/Time;Ljava/util/Calendar;)V

    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v66, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v50

    .local v50, startJulianDay:I
    iget-wide v0, v15, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v66, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    .local v18, endJulianDay:I
    sub-int v12, v18, v50

    .restart local v12       #dayDistance:I
    goto/16 :goto_b

    .end local v12           #dayDistance:I
    .end local v14           #endCalendar:Ljava/util/Calendar;
    .end local v18           #endJulianDay:I
    .end local v50           #startJulianDay:I
    :cond_12
    if-eqz v64, :cond_13

    const-string v66, "UTC"

    invoke-static/range {v66 .. v66}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v14

    .restart local v14       #endCalendar:Ljava/util/Calendar;
    goto :goto_17

    .end local v14           #endCalendar:Ljava/util/Calendar;
    :cond_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .restart local v14       #endCalendar:Ljava/util/Calendar;
    goto :goto_17

    .end local v14           #endCalendar:Ljava/util/Calendar;
    .restart local v12       #dayDistance:I
    .restart local v17       #endDay:I
    .restart local v20       #endMonthNum:I
    .restart local v26       #endWeekDayString:Ljava/lang/String;
    .restart local v27       #endYear:I
    .restart local v49       #startDay:I
    .restart local v52       #startMonthNum:I
    .restart local v58       #startWeekDayString:Ljava/lang/String;
    .restart local v59       #startYear:I
    .restart local v65       #weekDayFormat:Ljava/lang/String;
    :cond_14
    const-string v65, "%A"

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, v65

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_d

    .end local v65           #weekDayFormat:Ljava/lang/String;
    .restart local v24       #endTimeFormat:Ljava/lang/String;
    .restart local v25       #endTimeString:Ljava/lang/String;
    .restart local v56       #startTimeFormat:Ljava/lang/String;
    .restart local v57       #startTimeString:Ljava/lang/String;
    :cond_16
    const/16 v30, 0x0

    goto/16 :goto_e

    .restart local v30       #force24Hour:Z
    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_f

    .restart local v29       #force12Hour:Z
    :cond_18
    if-eqz v29, :cond_19

    const/16 v63, 0x0

    .restart local v63       #use24Hour:Z
    goto/16 :goto_10

    .end local v63           #use24Hour:Z
    :cond_19
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v63

    .restart local v63       #use24Hour:Z
    goto/16 :goto_10

    :cond_1a
    const v66, 0x84000

    and-int v66, v66, p6

    if-eqz v66, :cond_1c

    const/4 v5, 0x1

    .local v5, abbrevTime:Z
    :goto_18
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v66, v0

    if-eqz v66, :cond_1d

    const/4 v7, 0x1

    .local v7, capAMPM:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v66, v0

    if-eqz v66, :cond_1e

    const/16 v37, 0x1

    .local v37, noNoon:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v66, v0

    if-eqz v66, :cond_1f

    const/4 v9, 0x1

    .local v9, capNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v66, v0

    if-eqz v66, :cond_20

    const/16 v35, 0x1

    .local v35, noMidnight:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v66, v0

    if-eqz v66, :cond_21

    const/4 v8, 0x1

    .local v8, capMidnight:Z
    :goto_1d
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v66, v0

    if-nez v66, :cond_22

    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v66, v0

    if-nez v66, :cond_22

    const/16 v54, 0x1

    .local v54, startOnTheHour:Z
    :goto_1e
    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v66, v0

    if-nez v66, :cond_23

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v66, v0

    if-nez v66, :cond_23

    const/16 v22, 0x1

    .local v22, endOnTheHour:Z
    :goto_1f
    if-eqz v5, :cond_25

    if-eqz v54, :cond_25

    if-eqz v7, :cond_24

    const v66, 0x10403e2

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    :goto_20
    if-nez v33, :cond_1b

    if-eqz v5, :cond_28

    if-eqz v22, :cond_28

    if-eqz v7, :cond_27

    const v66, 0x10403e2

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    :goto_21
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    const/16 v67, 0xc

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_2b

    if-eqz v22, :cond_2b

    if-nez v37, :cond_2b

    if-eqz v9, :cond_2a

    const v66, 0x1040467

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_1b
    :goto_22
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    const/16 v67, 0xc

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_3

    if-eqz v54, :cond_3

    if-nez v37, :cond_3

    if-eqz v9, :cond_2d

    const v66, 0x1040467

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_11

    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v54           #startOnTheHour:Z
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_18

    .restart local v5       #abbrevTime:Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_19

    .restart local v7       #capAMPM:Z
    :cond_1e
    const/16 v37, 0x0

    goto/16 :goto_1a

    .restart local v37       #noNoon:Z
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_1b

    .restart local v9       #capNoon:Z
    :cond_20
    const/16 v35, 0x0

    goto/16 :goto_1c

    .restart local v35       #noMidnight:Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_1d

    .restart local v8       #capMidnight:Z
    :cond_22
    const/16 v54, 0x0

    goto/16 :goto_1e

    .restart local v54       #startOnTheHour:Z
    :cond_23
    const/16 v22, 0x0

    goto :goto_1f

    .restart local v22       #endOnTheHour:Z
    :cond_24
    const v66, 0x10403e1

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto :goto_20

    :cond_25
    if-eqz v7, :cond_26

    const v66, 0x10400be

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_20

    :cond_26
    const v66, 0x10400bd

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_20

    :cond_27
    const v66, 0x10403e1

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_21

    :cond_28
    if-eqz v7, :cond_29

    const v66, 0x10400be

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_21

    :cond_29
    const v66, 0x10400bd

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_21

    :cond_2a
    const v66, 0x1040466

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_22

    :cond_2b
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    if-nez v66, :cond_1b

    if-eqz v22, :cond_1b

    if-nez v35, :cond_1b

    if-eqz v8, :cond_2c

    const v66, 0x1040469

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_22

    :cond_2c
    const v66, 0x1040468

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_22

    :cond_2d
    const v66, 0x1040466

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_11

    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v54           #startOnTheHour:Z
    :cond_2e
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_12

    .end local v24           #endTimeFormat:Ljava/lang/String;
    .end local v29           #force12Hour:Z
    .end local v30           #force24Hour:Z
    .end local v56           #startTimeFormat:Ljava/lang/String;
    .end local v63           #use24Hour:Z
    :cond_2f
    if-eqz v38, :cond_30

    const/16 v45, 0x0

    goto/16 :goto_13

    :cond_30
    move/from16 v0, v59

    move/from16 v1, v27

    if-eq v0, v1, :cond_31

    const/16 v45, 0x1

    goto/16 :goto_13

    :cond_31
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v66, v0

    move/from16 v0, v59

    move/from16 v1, v66

    if-eq v0, v1, :cond_32

    const/16 v45, 0x1

    :goto_23
    goto/16 :goto_13

    :cond_32
    const/16 v45, 0x0

    goto :goto_23

    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_33
    if-eqz v45, :cond_37

    if-eqz v4, :cond_35

    if-eqz v36, :cond_34

    const v66, 0x10400cd

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    const v66, 0x10400c7

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    if-eqz v36, :cond_36

    const v66, 0x10400ca

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const v66, 0x10400c2

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v4, :cond_39

    if-eqz v36, :cond_38

    const v66, 0x10400cc

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const v66, 0x10400cb

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v36, :cond_3a

    const v66, 0x10400c9

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const v66, 0x10400c8

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    :cond_3b
    const v66, 0x10400d9

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .restart local v31       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .end local v31           #fullFormat:Ljava/lang/String;
    :cond_3c
    if-eqz v43, :cond_3d

    const v66, 0x10400da

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .restart local v31       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .end local v31           #fullFormat:Ljava/lang/String;
    :cond_3d
    const v66, 0x10400cf

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .restart local v31       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    :cond_3e
    move/from16 v0, v59

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f

    if-eqz v36, :cond_40

    :cond_3f
    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .local v48, startDateString:Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, endDateString:Ljava/lang/String;
    const/16 v66, 0x6

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v58, v66, v67

    const/16 v67, 0x1

    aput-object v48, v66, v67

    const/16 v67, 0x2

    aput-object v57, v66, v67

    const/16 v67, 0x3

    aput-object v26, v66, v67

    const/16 v67, 0x4

    aput-object v16, v66, v67

    const/16 v67, 0x5

    aput-object v25, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    .end local v16           #endDateString:Ljava/lang/String;
    .end local v48           #startDateString:Ljava/lang/String;
    :cond_40
    if-eqz v39, :cond_46

    const-string v34, "%m"

    .local v34, monthFormat:Ljava/lang/String;
    :goto_24
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .local v53, startMonthString:Ljava/lang/String;
    const-string v66, "%-d"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .local v51, startMonthDayString:Ljava/lang/String;
    const-string v66, "%Y"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .local v60, startYearString:Ljava/lang/String;
    if-eqz v33, :cond_48

    const/16 v21, 0x0

    .local v21, endMonthString:Ljava/lang/String;
    :goto_25
    if-eqz v33, :cond_49

    const/16 v19, 0x0

    .local v19, endMonthDayString:Ljava/lang/String;
    :goto_26
    if-eqz v33, :cond_4a

    const/16 v28, 0x0

    .local v28, endYearString:Ljava/lang/String;
    :goto_27
    move-object/from16 v55, v53

    .local v55, startStandaloneMonthString:Ljava/lang/String;
    move-object/from16 v23, v21

    .local v23, endStandaloneMonthString:Ljava/lang/String;
    if-nez v39, :cond_41

    if-nez v4, :cond_41

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v66

    const-string v67, "fa"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_41

    const-string v66, "%-B"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string v66, "%-B"

    move-object/from16 v0, v66

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :cond_41
    move/from16 v0, v52

    move/from16 v1, v20

    if-eq v0, v1, :cond_4b

    const/16 v32, 0x0

    .local v32, index:I
    if-eqz v44, :cond_42

    const/16 v32, 0x1

    :cond_42
    if-eqz v45, :cond_43

    add-int/lit8 v32, v32, 0x2

    :cond_43
    if-eqz v43, :cond_44

    add-int/lit8 v32, v32, 0x4

    :cond_44
    if-eqz v39, :cond_45

    add-int/lit8 v32, v32, 0x8

    :cond_45
    sget-object v66, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v41, v66, v32

    .local v41, resId:I
    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v66, 0xc

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v58, v66, v67

    const/16 v67, 0x1

    aput-object v53, v66, v67

    const/16 v67, 0x2

    aput-object v51, v66, v67

    const/16 v67, 0x3

    aput-object v60, v66, v67

    const/16 v67, 0x4

    aput-object v57, v66, v67

    const/16 v67, 0x5

    aput-object v26, v66, v67

    const/16 v67, 0x6

    aput-object v21, v66, v67

    const/16 v67, 0x7

    aput-object v19, v66, v67

    const/16 v67, 0x8

    aput-object v28, v66, v67

    const/16 v67, 0x9

    aput-object v25, v66, v67

    const/16 v67, 0xa

    aput-object v55, v66, v67

    const/16 v67, 0xb

    aput-object v23, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v23           #endStandaloneMonthString:Ljava/lang/String;
    .end local v28           #endYearString:Ljava/lang/String;
    .end local v32           #index:I
    .end local v34           #monthFormat:Ljava/lang/String;
    .end local v41           #resId:I
    .end local v51           #startMonthDayString:Ljava/lang/String;
    .end local v53           #startMonthString:Ljava/lang/String;
    .end local v55           #startStandaloneMonthString:Ljava/lang/String;
    .end local v60           #startYearString:Ljava/lang/String;
    :cond_46
    if-eqz v4, :cond_47

    const v66, 0x10400ee

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .end local v34           #monthFormat:Ljava/lang/String;
    :cond_47
    const-string v34, "%B"

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .restart local v51       #startMonthDayString:Ljava/lang/String;
    .restart local v53       #startMonthString:Ljava/lang/String;
    .restart local v60       #startYearString:Ljava/lang/String;
    :cond_48
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_25

    .restart local v21       #endMonthString:Ljava/lang/String;
    :cond_49
    const-string v66, "%-d"

    move-object/from16 v0, v66

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_26

    .restart local v19       #endMonthDayString:Ljava/lang/String;
    :cond_4a
    const-string v66, "%Y"

    move-object/from16 v0, v66

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_27

    .restart local v23       #endStandaloneMonthString:Ljava/lang/String;
    .restart local v28       #endYearString:Ljava/lang/String;
    .restart local v55       #startStandaloneMonthString:Ljava/lang/String;
    :cond_4b
    move/from16 v0, v49

    move/from16 v1, v17

    if-eq v0, v1, :cond_50

    const/16 v32, 0x0

    .restart local v32       #index:I
    if-eqz v44, :cond_4c

    const/16 v32, 0x1

    :cond_4c
    if-eqz v45, :cond_4d

    add-int/lit8 v32, v32, 0x2

    :cond_4d
    if-eqz v43, :cond_4e

    add-int/lit8 v32, v32, 0x4

    :cond_4e
    if-eqz v39, :cond_4f

    add-int/lit8 v32, v32, 0x8

    :cond_4f
    sget-object v66, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v41, v66, v32

    .restart local v41       #resId:I
    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v66, 0xc

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v58, v66, v67

    const/16 v67, 0x1

    aput-object v53, v66, v67

    const/16 v67, 0x2

    aput-object v51, v66, v67

    const/16 v67, 0x3

    aput-object v60, v66, v67

    const/16 v67, 0x4

    aput-object v57, v66, v67

    const/16 v67, 0x5

    aput-object v26, v66, v67

    const/16 v67, 0x6

    aput-object v21, v66, v67

    const/16 v67, 0x7

    aput-object v19, v66, v67

    const/16 v67, 0x8

    aput-object v28, v66, v67

    const/16 v67, 0x9

    aput-object v25, v66, v67

    const/16 v67, 0xa

    aput-object v55, v66, v67

    const/16 v67, 0xb

    aput-object v23, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    .end local v32           #index:I
    .end local v41           #resId:I
    :cond_50
    and-int/lit8 v66, p6, 0x10

    if-eqz v66, :cond_54

    const/16 v42, 0x1

    .local v42, showDate:Z
    :goto_28
    if-nez v43, :cond_51

    if-nez v42, :cond_51

    if-nez v44, :cond_51

    const/16 v42, 0x1

    :cond_51
    const-string v62, ""

    .local v62, timeString:Ljava/lang/String;
    if-eqz v43, :cond_52

    if-eqz v33, :cond_55

    move-object/from16 v62, v57

    :cond_52
    :goto_29
    const-string v31, ""

    const-string v11, ""

    .local v11, dateString:Ljava/lang/String;
    if-eqz v42, :cond_59

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v44, :cond_57

    if-eqz v43, :cond_56

    const v66, 0x10400db

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    :cond_53
    :goto_2a
    const/16 v66, 0x3

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v62, v66, v67

    const/16 v67, 0x1

    aput-object v58, v66, v67

    const/16 v67, 0x2

    aput-object v11, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    .end local v11           #dateString:Ljava/lang/String;
    .end local v42           #showDate:Z
    .end local v62           #timeString:Ljava/lang/String;
    :cond_54
    const/16 v42, 0x0

    goto :goto_28

    .restart local v42       #showDate:Z
    .restart local v62       #timeString:Ljava/lang/String;
    :cond_55
    const v66, 0x10400ce

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v61

    .local v61, timeFormat:Ljava/lang/String;
    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v57, v66, v67

    const/16 v67, 0x1

    aput-object v25, v66, v67

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v62

    goto :goto_29

    .end local v61           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_56
    const v66, 0x10400dc

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto :goto_2a

    :cond_57
    if-eqz v43, :cond_58

    const v66, 0x10400c6

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto :goto_2a

    :cond_58
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v11, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    :cond_59
    if-eqz v44, :cond_5b

    if-eqz v43, :cond_5a

    const v66, 0x10400dd

    move-object/from16 v0, v40

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2a

    :cond_5a
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v58, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16

    :cond_5b
    if-eqz v43, :cond_53

    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v62, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_16
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "millis"

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, res:Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v10

    long-to-int v0, v4

    .local v0, hours:I
    const v4, 0x1130013

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v0           #hours:I
    :goto_0
    return-object v4

    :cond_0
    cmp-long v4, p0, v6

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v6

    long-to-int v1, v4

    .local v1, minutes:I
    const v4, 0x1130012

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1           #minutes:I
    :cond_1
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .local v3, seconds:I
    const v4, 0x1130011

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 12
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v1, 0x0

    .local v1, hours:J
    const-wide/16 v3, 0x0

    .local v3, minutes:J
    const-wide/16 v6, 0x0

    .local v6, seconds:J
    const-wide/16 v8, 0xe10

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0xe10

    div-long v1, p1, v8

    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v1

    sub-long/2addr p1, v8

    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    const-wide/16 v8, 0x3c

    div-long v3, p1, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v3

    sub-long/2addr p1, v8

    :cond_1
    move-wide v6, p1

    move-object v5, p0

    .local v5, sb:Ljava/lang/StringBuilder;
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #sb:Ljava/lang/StringBuilder;
    const/16 v8, 0x8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :goto_0
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v0, f:Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_3

    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    return-object v8

    .end local v0           #f:Ljava/util/Formatter;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .restart local v0       #f:Ljava/util/Formatter;
    :cond_3
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .parameter "ampm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    const-wide/32 p5, 0x240c8400

    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .local v16, relativeClause:Ljava/lang/CharSequence;
    const v3, 0x1040465

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x10400c5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 14
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v6, locale:Ljava/util/Locale;
    if-nez v6, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    :cond_0
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .local v10, startTime:Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .local v9, startDay:I
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .local v2, currentDay:I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .local v4, days:I
    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    .local v7, past:Z
    :goto_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    if-eqz v7, :cond_2

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    :goto_1
    return-object v11

    .end local v7           #past:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7       #past:Z
    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    const v8, 0x1130004

    .local v8, resId:I
    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .local v5, format:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .end local v5           #format:Ljava/lang/String;
    .end local v8           #resId:I
    :cond_5
    const v8, 0x1130008

    .restart local v8       #resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 20
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    .local v18, r:Landroid/content/res/Resources;
    const/high16 v5, 0xc

    and-int v5, v5, p6

    if-eqz v5, :cond_0

    const/4 v11, 0x1

    .local v11, abbrevRelative:Z
    :goto_0
    cmp-long v5, p2, p0

    if-ltz v5, :cond_1

    const/16 v17, 0x1

    .local v17, past:Z
    :goto_1
    sub-long v5, p2, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .local v14, duration:J
    const-wide/32 v5, 0xea60

    cmp-long v5, v14, v5

    if-gez v5, :cond_5

    const-wide/32 v5, 0xea60

    cmp-long v5, p4, v5

    if-gez v5, :cond_5

    const-wide/16 v5, 0x3e8

    div-long v12, v14, v5

    .local v12, count:J
    if-eqz v17, :cond_3

    if-eqz v11, :cond_2

    const v19, 0x1130009

    .local v19, resId:I
    :goto_2
    long-to-int v5, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v16

    .local v16, format:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .end local v12           #count:J
    .end local v16           #format:Ljava/lang/String;
    .end local v19           #resId:I
    :goto_3
    return-object v5

    .end local v11           #abbrevRelative:Z
    .end local v14           #duration:J
    .end local v17           #past:Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11       #abbrevRelative:Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .restart local v12       #count:J
    .restart local v14       #duration:J
    .restart local v17       #past:Z
    :cond_2
    const/high16 v19, 0x113

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_3
    if-eqz v11, :cond_4

    const v19, 0x113000d

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_4
    const v19, 0x1130005

    .restart local v19       #resId:I
    goto :goto_2

    .end local v12           #count:J
    .end local v19           #resId:I
    :cond_5
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v14, v5

    if-gez v5, :cond_9

    const-wide/32 v5, 0x36ee80

    cmp-long v5, p4, v5

    if-gez v5, :cond_9

    const-wide/32 v5, 0xea60

    div-long v12, v14, v5

    .restart local v12       #count:J
    if-eqz v17, :cond_7

    if-eqz v11, :cond_6

    const v19, 0x113000a

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_6
    const v19, 0x1130001

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_7
    if-eqz v11, :cond_8

    const v19, 0x113000e

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_8
    const v19, 0x1130006

    .restart local v19       #resId:I
    goto :goto_2

    .end local v12           #count:J
    .end local v19           #resId:I
    :cond_9
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v14, v5

    if-gez v5, :cond_d

    const-wide/32 v5, 0x5265c00

    cmp-long v5, p4, v5

    if-gez v5, :cond_d

    const-wide/32 v5, 0x36ee80

    div-long v12, v14, v5

    .restart local v12       #count:J
    if-eqz v17, :cond_b

    if-eqz v11, :cond_a

    const v19, 0x113000b

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_a
    const v19, 0x1130002

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_b
    if-eqz v11, :cond_c

    const v19, 0x113000f

    .restart local v19       #resId:I
    goto :goto_2

    .end local v19           #resId:I
    :cond_c
    const v19, 0x1130007

    .restart local v19       #resId:I
    goto :goto_2

    .end local v12           #count:J
    .end local v19           #resId:I
    :cond_d
    const-wide/32 v5, 0x240c8400

    cmp-long v5, v14, v5

    if-gez v5, :cond_e

    const-wide/32 v5, 0x240c8400

    cmp-long v5, p4, v5

    if-gez v5, :cond_e

    move-object/from16 v0, v18

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/format/DateUtils;->getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    move-wide/from16 v6, p0

    move-wide/from16 v8, p0

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, now:J
    sub-long v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .local v13, span:J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    const/4 v7, 0x1

    .local v7, flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .local v12, result:Ljava/lang/String;
    const v10, 0x1040457

    .local v10, prepositionId:I
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    return-object v12

    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    const v7, 0x20014

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x1040456

    .restart local v10       #prepositionId:I
    goto :goto_0

    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x1040456

    .restart local v10       #prepositionId:I
    goto :goto_0

    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    const v2, 0x104046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const v2, 0x104046b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    iget v2, v3, Landroid/text/format/Time;->year:I

    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static setTimeFromCalendar(Landroid/text/format/Time;Ljava/util/Calendar;)V
    .locals 3
    .parameter "t"
    .parameter "c"

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->hour:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->minute:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->month:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->second:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->year:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
