.class public final enum Lj$/time/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/o;


# static fields
.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum AMPM_OF_DAY:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum DAY_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum DAY_OF_WEEK:Lj$/time/temporal/a;

.field public static final enum DAY_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum EPOCH_DAY:Lj$/time/temporal/a;

.field public static final enum ERA:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum INSTANT_SECONDS:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lj$/time/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum NANO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum NANO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum OFFSET_SECONDS:Lj$/time/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_DAY:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lj$/time/temporal/a;

.field public static final enum YEAR:Lj$/time/temporal/a;

.field public static final enum YEAR_OF_ERA:Lj$/time/temporal/a;

.field public static final synthetic c:[Lj$/time/temporal/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 59

    new-instance v0, Lj$/time/temporal/a;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v13, 0x0

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v13, v14, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v1, Lj$/time/temporal/a;

    sget-object v19, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide v2, 0x4e94914effffL

    invoke-static {v13, v14, v2, v3}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v7

    const-string v2, "NANO_OF_DAY"

    const/4 v3, 0x1

    move-object v5, v4

    const-string v4, "NanoOfDay"

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v7}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v1, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    move-wide v2, v10

    move-object v10, v9

    sget-object v9, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    const-wide/32 v6, 0xf423f

    invoke-static {v13, v14, v6, v7}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const-string v6, "MICRO_OF_SECOND"

    const/4 v7, 0x2

    const-string v8, "MicroOfSecond"

    invoke-direct/range {v5 .. v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object v4, v5

    move-object/from16 v20, v19

    move-object/from16 v19, v9

    move-object v9, v10

    sput-object v4, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide v5, 0x141dd75fffL

    invoke-static {v13, v14, v5, v6}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "MICRO_OF_DAY"

    const/16 v17, 0x3

    const-string v18, "MicroOfDay"

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v23, v15

    move-object/from16 v19, v20

    sput-object v23, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x3e7

    invoke-static {v13, v14, v6, v7}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const-string v6, "MILLI_OF_SECOND"

    const/4 v7, 0x4

    const-string v8, "MilliOfSecond"

    invoke-direct/range {v5 .. v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v24, v5

    move-object/from16 v19, v9

    move-object v9, v10

    sput-object v24, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide/32 v5, 0x5265bff

    invoke-static {v13, v14, v5, v6}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "MILLI_OF_DAY"

    const/16 v17, 0x5

    const-string v18, "MilliOfDay"

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v25, v15

    move-object/from16 v19, v20

    sput-object v25, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    sget-object v10, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x3b

    invoke-static {v13, v14, v6, v7}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const/4 v12, 0x0

    move-wide v7, v6

    const-string v6, "SECOND_OF_MINUTE"

    move-wide v15, v7

    const/4 v7, 0x6

    const-string v8, "SecondOfMinute"

    move-wide v2, v15

    invoke-direct/range {v5 .. v12}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object v12, v5

    move-object/from16 v30, v10

    sput-object v12, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    const-wide/32 v6, 0x1517f

    invoke-static {v13, v14, v6, v7}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const-string v6, "SECOND_OF_DAY"

    const/4 v7, 0x7

    const-string v8, "SecondOfDay"

    move-object/from16 v10, v19

    invoke-direct/range {v5 .. v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v34, v5

    sput-object v34, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    new-instance v26, Lj$/time/temporal/a;

    sget-object v39, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v13, v14, v2, v3}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v32

    const/16 v33, 0x0

    const-string v27, "MINUTE_OF_HOUR"

    const/16 v28, 0x8

    const-string v29, "MinuteOfHour"

    move-object/from16 v31, v39

    invoke-direct/range {v26 .. v33}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v26, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide/16 v2, 0x59f

    invoke-static {v13, v14, v2, v3}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "MINUTE_OF_DAY"

    const/16 v17, 0x9

    const-string v18, "MinuteOfDay"

    move-object/from16 v19, v30

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object v2, v15

    move-object/from16 v19, v20

    sput-object v2, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    new-instance v35, Lj$/time/temporal/a;

    sget-object v40, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v5, 0xb

    invoke-static {v13, v14, v5, v6}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v41

    const-string v36, "HOUR_OF_AMPM"

    const/16 v37, 0xa

    const-string v38, "HourOfAmPm"

    invoke-direct/range {v35 .. v41}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v3, v35

    sput-object v3, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v35, Lj$/time/temporal/a;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0xc

    invoke-static {v5, v6, v7, v8}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v41

    const-string v36, "CLOCK_HOUR_OF_AMPM"

    const/16 v37, 0xb

    const-string v38, "ClockHourOfAmPm"

    invoke-direct/range {v35 .. v41}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v35, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide/16 v10, 0x17

    invoke-static {v13, v14, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const/16 v22, 0x0

    const-string v16, "HOUR_OF_DAY"

    const/16 v17, 0xc

    const-string v18, "HourOfDay"

    move-object/from16 v19, v39

    invoke-direct/range {v15 .. v22}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v27, v15

    move-object/from16 v19, v20

    sput-object v27, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide/16 v10, 0x18

    invoke-static {v5, v6, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "CLOCK_HOUR_OF_DAY"

    const/16 v17, 0xd

    const-string v18, "ClockHourOfDay"

    move-object/from16 v19, v39

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v28, v15

    move-object/from16 v19, v20

    sput-object v28, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    invoke-static {v13, v14, v5, v6}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "AMPM_OF_DAY"

    const/16 v17, 0xe

    const-string v18, "AmPmOfDay"

    move-object/from16 v19, v40

    invoke-direct/range {v15 .. v22}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v29, v15

    move-object/from16 v19, v20

    sput-object v29, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    sget-object v20, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v10, 0x7

    invoke-static {v5, v6, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "DAY_OF_WEEK"

    const/16 v17, 0xf

    const-string v18, "DayOfWeek"

    invoke-direct/range {v15 .. v22}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v30, v15

    sput-object v30, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-string v18, "AlignedDayOfWeekInMonth"

    invoke-static {v5, v6, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v17, 0x10

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v31, v15

    sput-object v31, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-string v18, "AlignedDayOfWeekInYear"

    invoke-static {v5, v6, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v17, 0x11

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v32, v15

    move-object/from16 v40, v20

    sput-object v32, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    sget-object v45, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v48, 0x1c

    const-wide/16 v50, 0x1f

    const-wide/16 v46, 0x1

    invoke-static/range {v46 .. v51}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "DAY_OF_MONTH"

    const/16 v17, 0x12

    const-string v18, "DayOfMonth"

    move-object/from16 v20, v45

    invoke-direct/range {v15 .. v22}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v22, v15

    sput-object v22, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    sget-object v50, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v53, 0x16d

    const-wide/16 v55, 0x16e

    const-wide/16 v51, 0x1

    invoke-static/range {v51 .. v56}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "DAY_OF_YEAR"

    const/16 v17, 0x13

    const-string v18, "DayOfYear"

    move-object/from16 v20, v50

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v33, v15

    sput-object v33, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    sget-object v51, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    const-wide v10, -0x550a313cdaL

    const-wide v13, 0x550a1b48f7L

    invoke-static {v10, v11, v13, v14}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v21

    const-string v16, "EPOCH_DAY"

    const/16 v17, 0x14

    const-string v18, "EpochDay"

    move-object/from16 v20, v51

    invoke-direct/range {v15 .. v21}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v15, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    new-instance v36, Lj$/time/temporal/a;

    const-wide/16 v18, 0x4

    const-wide/16 v20, 0x5

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v21}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v42

    const-string v37, "ALIGNED_WEEK_OF_MONTH"

    const/16 v38, 0x15

    const-string v39, "AlignedWeekOfMonth"

    move-object/from16 v41, v45

    invoke-direct/range {v36 .. v42}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v13, v36

    move-object/from16 v20, v40

    sput-object v13, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    new-instance v36, Lj$/time/temporal/a;

    const-wide/16 v10, 0x35

    invoke-static {v5, v6, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v42

    const-string v37, "ALIGNED_WEEK_OF_YEAR"

    const/16 v38, 0x16

    const-string v39, "AlignedWeekOfYear"

    move-object/from16 v41, v50

    invoke-direct/range {v36 .. v42}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v36, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    new-instance v41, Lj$/time/temporal/a;

    invoke-static {v5, v6, v7, v8}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v47

    const/16 v48, 0x0

    const-string v42, "MONTH_OF_YEAR"

    const/16 v43, 0x17

    const-string v44, "MonthOfYear"

    move-object/from16 v46, v50

    invoke-direct/range {v41 .. v48}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v14, v41

    sput-object v14, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    new-instance v41, Lj$/time/temporal/a;

    const-wide v7, -0x2cb4177f4L

    const-wide v10, 0x2cb4177ffL

    invoke-static {v7, v8, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v47

    const-string v42, "PROLEPTIC_MONTH"

    const/16 v43, 0x18

    const-string v44, "ProlepticMonth"

    move-object/from16 v46, v51

    invoke-direct/range {v41 .. v47}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v41, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    new-instance v46, Lj$/time/temporal/a;

    const-wide/32 v18, 0x3b9ac9ff

    const-wide/32 v20, 0x3b9aca00

    invoke-static/range {v16 .. v21}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v52

    const-string v47, "YEAR_OF_ERA"

    const/16 v48, 0x19

    const-string v49, "YearOfEra"

    invoke-direct/range {v46 .. v52}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v16, v46

    sput-object v16, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    new-instance v46, Lj$/time/temporal/a;

    const-wide/32 v7, -0x3b9ac9ff

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v7, v8, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v52

    const/16 v53, 0x0

    const-string v47, "YEAR"

    const/16 v48, 0x1a

    const-string v49, "Year"

    invoke-direct/range {v46 .. v53}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v46, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    move-object/from16 v10, v51

    new-instance v51, Lj$/time/temporal/a;

    const-wide/16 v7, 0x0

    sget-object v55, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v5, v6}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v57

    const/16 v58, 0x0

    const-string v52, "ERA"

    const/16 v53, 0x1b

    const-string v54, "Era"

    move-object/from16 v56, v10

    invoke-direct/range {v51 .. v58}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    move-object/from16 v17, v51

    move-object/from16 v51, v56

    sput-object v17, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v6, v7, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const-string v6, "INSTANT_SECONDS"

    const/16 v7, 0x1c

    const-string v8, "InstantSeconds"

    move-object/from16 v10, v51

    invoke-direct/range {v5 .. v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    move-object/from16 v18, v5

    sput-object v18, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    new-instance v5, Lj$/time/temporal/a;

    const-wide/32 v6, -0xfd20

    const-wide/32 v10, 0xfd20

    invoke-static {v6, v7, v10, v11}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v11

    const-string v6, "OFFSET_SECONDS"

    const/16 v7, 0x1d

    const-string v8, "OffsetSeconds"

    move-object/from16 v10, v51

    invoke-direct/range {v5 .. v11}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v5, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const/16 v6, 0x1e

    new-array v6, v6, [Lj$/time/temporal/a;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v23, v6, v0

    const/4 v0, 0x4

    aput-object v24, v6, v0

    const/4 v0, 0x5

    aput-object v25, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v34, v6, v0

    const/16 v0, 0x8

    aput-object v26, v6, v0

    const/16 v0, 0x9

    aput-object v2, v6, v0

    const/16 v0, 0xa

    aput-object v3, v6, v0

    const/16 v0, 0xb

    aput-object v35, v6, v0

    const/16 v0, 0xc

    aput-object v27, v6, v0

    const/16 v0, 0xd

    aput-object v28, v6, v0

    const/16 v0, 0xe

    aput-object v29, v6, v0

    const/16 v0, 0xf

    aput-object v30, v6, v0

    const/16 v0, 0x10

    aput-object v31, v6, v0

    const/16 v0, 0x11

    aput-object v32, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v33, v6, v0

    const/16 v0, 0x14

    aput-object v15, v6, v0

    const/16 v0, 0x15

    aput-object v13, v6, v0

    const/16 v0, 0x16

    aput-object v36, v6, v0

    const/16 v0, 0x17

    aput-object v14, v6, v0

    const/16 v0, 0x18

    aput-object v41, v6, v0

    const/16 v0, 0x19

    aput-object v16, v6, v0

    const/16 v0, 0x1a

    aput-object v46, v6, v0

    const/16 v0, 0x1b

    aput-object v17, v6, v0

    const/16 v0, 0x1c

    aput-object v18, v6, v0

    const/16 v0, 0x1d

    aput-object v5, v6, v0

    sput-object v6, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p6, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p6, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/a;
    .locals 1

    const-class v0, Lj$/time/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/a;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/a;
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    invoke-virtual {v0}, [Lj$/time/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final F(J)V
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/o;)V

    return-void
.end method

.method public final S()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDateBased()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic m(Ljava/util/Map;Lj$/time/format/D;Lj$/time/format/E;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final q()Lj$/time/temporal/r;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final w(Lj$/time/temporal/TemporalAccessor;)J
    .locals 2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0
.end method
