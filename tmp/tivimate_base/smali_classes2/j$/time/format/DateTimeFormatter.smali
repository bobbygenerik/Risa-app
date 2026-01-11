.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final f:Lj$/time/format/DateTimeFormatter;


# instance fields
.field public final a:Lj$/time/format/d;

.field public final b:Ljava/util/Locale;

.field public final c:Lj$/time/format/C;

.field public final d:Lj$/time/format/E;

.field public final e:Lj$/time/chrono/j;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/F;->EXCEEDS_PAD:Lj$/time/format/F;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Lj$/time/format/u;->d(C)V

    sget-object v6, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v0, v5}, Lj$/time/format/u;->d(C)V

    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v8, v7}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    sget-object v9, Lj$/time/format/E;->STRICT:Lj$/time/format/E;

    sget-object v10, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    invoke-virtual {v0, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    new-instance v11, Lj$/time/format/u;

    invoke-direct {v11}, Lj$/time/format/u;-><init>()V

    sget-object v12, Lj$/time/format/p;->INSENSITIVE:Lj$/time/format/p;

    invoke-virtual {v11, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v11, v0}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    sget-object v13, Lj$/time/format/j;->e:Lj$/time/format/j;

    invoke-virtual {v11, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v11, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v11, Lj$/time/format/u;

    invoke-direct {v11}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v11, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v11, v0}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v11}, Lj$/time/format/u;->o()V

    invoke-virtual {v11, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v11, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v11, Lj$/time/format/u;

    invoke-direct {v11}, Lj$/time/format/u;-><init>()V

    sget-object v14, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v11, v14, v7}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Lj$/time/format/u;->d(C)V

    sget-object v5, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v11, v5, v7}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v11}, Lj$/time/format/u;->o()V

    invoke-virtual {v11, v15}, Lj$/time/format/u;->d(C)V

    sget-object v15, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v11, v15, v7}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v11}, Lj$/time/format/u;->o()V

    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    const/4 v3, 0x0

    const/16 v4, 0x9

    move-object/from16 v17, v15

    const/4 v15, 0x1

    invoke-virtual {v11, v7, v3, v4, v15}, Lj$/time/format/u;->b(Lj$/time/temporal/a;IIZ)V

    const/4 v3, 0x0

    invoke-virtual {v11, v9, v3}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v4

    new-instance v7, Lj$/time/format/u;

    invoke-direct {v7}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v7, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v7, v4}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v7, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v7, v9, v3}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v7, Lj$/time/format/u;

    invoke-direct {v7}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v7, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v7, v4}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v7}, Lj$/time/format/u;->o()V

    invoke-virtual {v7, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v7, v9, v3}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v7, Lj$/time/format/u;

    invoke-direct {v7}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v7, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v7, v0}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    const/16 v0, 0x54

    invoke-virtual {v7, v0}, Lj$/time/format/u;->d(C)V

    invoke-virtual {v7, v4}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v7, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    new-instance v4, Lj$/time/format/u;

    invoke-direct {v4}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v4, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v4, v0}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    sget-object v7, Lj$/time/format/p;->LENIENT:Lj$/time/format/p;

    invoke-virtual {v4, v7}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v4, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    sget-object v11, Lj$/time/format/p;->STRICT:Lj$/time/format/p;

    invoke-virtual {v4, v11}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v4, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v4

    new-instance v3, Lj$/time/format/u;

    invoke-direct {v3}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v3, v4}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v3}, Lj$/time/format/u;->o()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lj$/time/format/u;->d(C)V

    sget-object v15, Lj$/time/format/p;->SENSITIVE:Lj$/time/format/p;

    invoke-virtual {v3, v15}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    new-instance v4, Lj$/time/format/s;

    move-object/from16 v18, v5

    sget-object v5, Lj$/time/format/u;->h:Lj$/time/f;

    move-object/from16 v19, v14

    const-string v14, "ZoneRegionId()"

    invoke-direct {v4, v5, v14}, Lj$/time/format/s;-><init>(Lj$/time/f;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lj$/time/format/u;->d(C)V

    invoke-virtual {v3, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v3, Lj$/time/format/u;

    invoke-direct {v3}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v3, v0}, Lj$/time/format/u;->a(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v3}, Lj$/time/format/u;->o()V

    invoke-virtual {v3, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v3}, Lj$/time/format/u;->o()V

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Lj$/time/format/u;->d(C)V

    invoke-virtual {v3, v15}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0, v5, v14}, Lj$/time/format/s;-><init>(Lj$/time/f;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v3, v4}, Lj$/time/format/u;->d(C)V

    invoke-virtual {v3, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v0, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Lj$/time/format/u;->d(C)V

    sget-object v3, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v0}, Lj$/time/format/u;->o()V

    invoke-virtual {v0, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v0, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v0, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    sget-object v3, Lj$/time/temporal/i;->c:Lj$/time/temporal/g;

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {v0, v3, v4, v5, v2}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    const-string v2, "-W"

    invoke-virtual {v0, v2}, Lj$/time/format/u;->e(Ljava/lang/String;)V

    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/g;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Lj$/time/format/u;->d(C)V

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v0}, Lj$/time/format/u;->o()V

    invoke-virtual {v0, v13}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v0, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v0, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    new-instance v3, Lj$/time/format/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v0, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v6, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v0, v8, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v0}, Lj$/time/format/u;->o()V

    invoke-virtual {v0, v7}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    const-string v3, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v0, v3, v4}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v0, v9, v10}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Mon"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Tue"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "Wed"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "Thu"

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "Fri"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "Sat"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v14, 0x7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "Sun"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "Jan"

    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Feb"

    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Mar"

    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Apr"

    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "May"

    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Jun"

    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Jul"

    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Aug"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sep"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Oct"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xb

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Nov"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xc

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dec"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/time/format/u;

    invoke-direct {v3}, Lj$/time/format/u;-><init>()V

    invoke-virtual {v3, v12}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v3, v7}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    invoke-virtual {v3}, Lj$/time/format/u;->o()V

    invoke-virtual {v3, v2, v0}, Lj$/time/format/u;->h(Lj$/time/temporal/a;Ljava/util/Map;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Lj$/time/format/u;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lj$/time/format/u;->n()V

    sget-object v0, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lj$/time/format/u;->d(C)V

    invoke-virtual {v3, v6, v15}, Lj$/time/format/u;->h(Lj$/time/temporal/a;Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lj$/time/format/u;->d(C)V

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v3, v0}, Lj$/time/format/u;->d(C)V

    move-object/from16 v1, v19

    invoke-virtual {v3, v1, v2}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Lj$/time/format/u;->d(C)V

    move-object/from16 v4, v18

    invoke-virtual {v3, v4, v2}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v3}, Lj$/time/format/u;->o()V

    invoke-virtual {v3, v1}, Lj$/time/format/u;->d(C)V

    move-object/from16 v1, v17

    invoke-virtual {v3, v1, v2}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    invoke-virtual {v3}, Lj$/time/format/u;->n()V

    invoke-virtual {v3, v0}, Lj$/time/format/u;->d(C)V

    const-string v0, "+HHMM"

    const-string v1, "GMT"

    invoke-virtual {v3, v0, v1}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj$/time/format/E;->SMART:Lj$/time/format/E;

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lj$/time/format/u;->p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)V
    .locals 2

    sget-object v0, Lj$/time/format/C;->a:Lj$/time/format/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "printerParser"

    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/d;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    const-string p1, "locale"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    const-string p1, "decimalStyle"

    invoke-static {v0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/C;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/C;

    const-string p1, "resolverStyle"

    invoke-static {p3, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/format/E;

    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/E;

    iput-object p4, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    return-void
.end method

.method public static ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;
    .locals 20

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Lj$/time/format/u;

    invoke-direct {v1}, Lj$/time/format/u;-><init>()V

    const-string v2, "pattern"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_56

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7a

    const/16 v6, 0x61

    const/16 v7, 0x5a

    const/16 v8, 0x41

    const/4 v9, 0x1

    if-lt v4, v8, :cond_0

    if-le v4, v7, :cond_1

    :cond_0
    if-lt v4, v6, :cond_4c

    if-gt v4, v5, :cond_4c

    :cond_1
    add-int/lit8 v10, v3, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v4, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    sub-int v3, v10, v3

    const/16 v11, 0x70

    const/4 v12, -0x1

    if-ne v4, v11, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v8, :cond_3

    if-le v4, v7, :cond_4

    :cond_3
    if-lt v4, v6, :cond_6

    if-gt v4, v5, :cond_6

    :cond_4
    add-int/lit8 v11, v10, 0x1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    sub-int v10, v11, v10

    goto :goto_3

    :cond_6
    move v11, v10

    move v10, v3

    move v3, v2

    :goto_3
    if-eqz v3, :cond_8

    if-lt v3, v9, :cond_7

    iget-object v13, v1, Lj$/time/format/u;->a:Lj$/time/format/u;

    iput v3, v13, Lj$/time/format/u;->e:I

    const/16 v3, 0x20

    iput-char v3, v13, Lj$/time/format/u;->f:C

    iput v12, v13, Lj$/time/format/u;->g:I

    move v3, v10

    move v10, v11

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The pad width must be at least one but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    sget-object v11, Lj$/time/format/u;->i:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lj$/time/temporal/o;

    const/4 v11, 0x5

    const/4 v13, 0x2

    const-string v15, "Too many pattern letters: "

    move/from16 v19, v12

    const/4 v12, 0x4

    if-eqz v14, :cond_2e

    const/16 v5, 0x13

    if-eq v4, v8, :cond_2d

    const/16 v7, 0x51

    const/4 v8, 0x3

    if-eq v4, v7, :cond_22

    const/16 v7, 0x53

    if-eq v4, v7, :cond_21

    if-eq v4, v6, :cond_1f

    const/16 v6, 0x6b

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x71

    if-eq v4, v6, :cond_1b

    const/16 v6, 0x73

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x75

    if-eq v4, v6, :cond_15

    const/16 v6, 0x79

    if-eq v4, v6, :cond_15

    const/16 v6, 0x67

    if-eq v4, v6, :cond_14

    const/16 v6, 0x68

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x6d

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x6e

    if-eq v4, v6, :cond_2d

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    if-ne v3, v9, :cond_a

    invoke-virtual {v1, v14}, Lj$/time/format/u;->k(Lj$/time/temporal/o;)V

    goto/16 :goto_f

    :cond_a
    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    goto/16 :goto_f

    :pswitch_0
    if-ne v3, v9, :cond_b

    move v5, v3

    new-instance v3, Lj$/time/format/r;

    const/4 v8, 0x0

    move v6, v5

    move v7, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto/16 :goto_f

    :cond_b
    if-eq v3, v13, :cond_c

    goto/16 :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern \"cc\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eq v3, v9, :cond_f

    if-eq v3, v13, :cond_f

    if-eq v3, v8, :cond_f

    if-eq v3, v12, :cond_e

    if-ne v3, v11, :cond_d

    sget-object v3, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_f
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :pswitch_2
    if-ne v3, v9, :cond_10

    invoke-virtual {v1, v14}, Lj$/time/format/u;->k(Lj$/time/temporal/o;)V

    goto/16 :goto_f

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-ne v3, v9, :cond_11

    invoke-virtual {v1, v14}, Lj$/time/format/u;->k(Lj$/time/temporal/o;)V

    goto/16 :goto_f

    :cond_11
    if-eq v3, v13, :cond_13

    if-ne v3, v8, :cond_12

    goto :goto_5

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_5
    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    invoke-virtual {v1, v14, v3, v8, v4}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    goto/16 :goto_f

    :cond_14
    sget-object v4, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    invoke-virtual {v1, v14, v3, v5, v4}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    goto/16 :goto_f

    :cond_15
    if-ne v3, v13, :cond_19

    sget-object v3, Lj$/time/format/o;->h:Lj$/time/LocalDate;

    const-string v4, "field"

    invoke-static {v14, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "baseDate"

    invoke-static {v3, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v13, Lj$/time/format/o;

    const/16 v18, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v18}, Lj$/time/format/o;-><init>(Lj$/time/temporal/o;IILj$/time/chrono/ChronoLocalDate;I)V

    if-nez v17, :cond_18

    invoke-interface {v14}, Lj$/time/temporal/o;->q()Lj$/time/temporal/r;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lj$/time/temporal/r;->e(J)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lj$/time/format/i;->f:[J

    aget-wide v6, v3, v16

    add-long/2addr v4, v6

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-gtz v3, :cond_16

    goto :goto_6

    :cond_16
    new-instance v0, Lj$/time/b;

    const-string v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_6
    invoke-virtual {v1, v13}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto/16 :goto_f

    :cond_19
    if-ge v3, v12, :cond_1a

    sget-object v4, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    invoke-virtual {v1, v14, v3, v5, v4}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    goto/16 :goto_f

    :cond_1a
    sget-object v4, Lj$/time/format/F;->EXCEEDS_PAD:Lj$/time/format/F;

    invoke-virtual {v1, v14, v3, v5, v4}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    goto/16 :goto_f

    :cond_1b
    :goto_7
    :pswitch_4
    move v5, v9

    goto :goto_8

    :cond_1c
    :pswitch_5
    if-ne v3, v9, :cond_1d

    invoke-virtual {v1, v14}, Lj$/time/format/u;->k(Lj$/time/temporal/o;)V

    goto/16 :goto_f

    :cond_1d
    if-ne v3, v13, :cond_1e

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    goto/16 :goto_f

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-ne v3, v9, :cond_20

    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    sget-object v4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v1, v4, v3, v3, v2}, Lj$/time/format/u;->b(Lj$/time/temporal/a;IIZ)V

    goto/16 :goto_f

    :cond_22
    :pswitch_6
    move v5, v2

    :goto_8
    if-eq v3, v9, :cond_29

    if-eq v3, v13, :cond_29

    if-eq v3, v8, :cond_27

    if-eq v3, v12, :cond_25

    if-ne v3, v11, :cond_24

    if-eqz v5, :cond_23

    sget-object v3, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_9

    :cond_23
    sget-object v3, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    :goto_9
    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-eqz v5, :cond_26

    sget-object v3, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_a

    :cond_26
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    :goto_a
    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_27
    if-eqz v5, :cond_28

    sget-object v3, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_b

    :cond_28
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    :goto_b
    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_29
    const/16 v5, 0x65

    if-ne v4, v5, :cond_2a

    move v5, v3

    new-instance v3, Lj$/time/format/r;

    const/4 v8, 0x0

    move v6, v5

    move v7, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto/16 :goto_f

    :cond_2a
    const/16 v5, 0x45

    if-ne v4, v5, :cond_2b

    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v14, v3}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_2b
    if-ne v3, v9, :cond_2c

    invoke-virtual {v1, v14}, Lj$/time/format/u;->k(Lj$/time/temporal/o;)V

    goto/16 :goto_f

    :cond_2c
    invoke-virtual {v1, v14, v13}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    goto/16 :goto_f

    :cond_2d
    :pswitch_7
    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    invoke-virtual {v1, v14, v3, v5, v4}, Lj$/time/format/u;->m(Lj$/time/temporal/o;IILj$/time/format/F;)V

    goto/16 :goto_f

    :cond_2e
    if-ne v4, v5, :cond_31

    if-gt v3, v12, :cond_30

    if-ne v3, v12, :cond_2f

    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    new-instance v4, Lj$/time/format/t;

    invoke-direct {v4, v3, v2}, Lj$/time/format/t;-><init>(Lj$/time/format/TextStyle;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    goto/16 :goto_f

    :cond_2f
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    new-instance v4, Lj$/time/format/t;

    invoke-direct {v4, v3, v2}, Lj$/time/format/t;-><init>(Lj$/time/format/TextStyle;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    goto/16 :goto_f

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/16 v5, 0x56

    if-ne v4, v5, :cond_33

    if-ne v3, v13, :cond_32

    new-instance v3, Lj$/time/format/s;

    sget-object v4, Lj$/time/temporal/p;->a:Lj$/time/f;

    const-string v5, "ZoneId()"

    invoke-direct {v3, v4, v5}, Lj$/time/format/s;-><init>(Lj$/time/f;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    goto/16 :goto_f

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern letter count must be 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/16 v5, 0x76

    if-ne v4, v5, :cond_36

    if-ne v3, v9, :cond_34

    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    new-instance v4, Lj$/time/format/t;

    invoke-direct {v4, v3, v9}, Lj$/time/format/t;-><init>(Lj$/time/format/TextStyle;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    goto/16 :goto_f

    :cond_34
    if-ne v3, v12, :cond_35

    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    new-instance v4, Lj$/time/format/t;

    invoke-direct {v4, v3, v9}, Lj$/time/format/t;-><init>(Lj$/time/format/TextStyle;Z)V

    invoke-virtual {v1, v4}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    goto/16 :goto_f

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong number of  pattern letters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const-string v5, "Z"

    const-string v6, "+0000"

    if-ne v4, v7, :cond_3a

    if-ge v3, v12, :cond_37

    const-string v3, "+HHMM"

    invoke-virtual {v1, v3, v6}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_37
    if-ne v3, v12, :cond_38

    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v3}, Lj$/time/format/u;->f(Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_38
    if-ne v3, v11, :cond_39

    const-string v3, "+HH:MM:ss"

    invoke-virtual {v1, v3, v5}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const/16 v7, 0x4f

    if-ne v4, v7, :cond_3d

    if-ne v3, v9, :cond_3b

    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v3}, Lj$/time/format/u;->f(Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_3b
    if-ne v3, v12, :cond_3c

    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {v1, v3}, Lj$/time/format/u;->f(Lj$/time/format/TextStyle;)V

    goto/16 :goto_f

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern letter count must be 1 or 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/16 v7, 0x58

    if-ne v4, v7, :cond_40

    if-gt v3, v11, :cond_3f

    sget-object v4, Lj$/time/format/j;->d:[Ljava/lang/String;

    if-ne v3, v9, :cond_3e

    move v6, v2

    goto :goto_c

    :cond_3e
    move v6, v9

    :goto_c
    add-int/2addr v3, v6

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v5}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    const/16 v5, 0x78

    if-ne v4, v5, :cond_45

    if-gt v3, v11, :cond_44

    if-ne v3, v9, :cond_41

    const-string v6, "+00"

    goto :goto_d

    :cond_41
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_42

    goto :goto_d

    :cond_42
    const-string v6, "+00:00"

    :goto_d
    sget-object v4, Lj$/time/format/j;->d:[Ljava/lang/String;

    if-ne v3, v9, :cond_43

    move v5, v2

    goto :goto_e

    :cond_43
    move v5, v9

    :goto_e
    add-int/2addr v3, v5

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v6}, Lj$/time/format/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/16 v5, 0x57

    if-ne v4, v5, :cond_47

    if-gt v3, v9, :cond_46

    move v5, v3

    new-instance v3, Lj$/time/format/r;

    const/4 v8, 0x0

    move v6, v5

    move v7, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto :goto_f

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move v5, v3

    const/16 v3, 0x77

    if-ne v4, v3, :cond_49

    if-gt v5, v13, :cond_48

    new-instance v3, Lj$/time/format/r;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move v6, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto :goto_f

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v3, 0x59

    if-ne v4, v3, :cond_4b

    if-ne v5, v13, :cond_4a

    new-instance v3, Lj$/time/format/r;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move v6, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    goto :goto_f

    :cond_4a
    new-instance v3, Lj$/time/format/r;

    const/16 v7, 0x13

    const/4 v8, 0x0

    move v6, v5

    invoke-direct/range {v3 .. v8}, Lj$/time/format/r;-><init>(CIIII)V

    invoke-virtual {v1, v3}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    :goto_f
    add-int/lit8 v3, v10, -0x1

    goto/16 :goto_12

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown pattern letter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const-string v5, "\'"

    const/16 v6, 0x27

    if-ne v4, v6, :cond_51

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4e

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_4d

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_4e

    move v4, v7

    :cond_4d
    add-int/2addr v4, v9

    goto :goto_10

    :cond_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_50

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-virtual {v1, v6}, Lj$/time/format/u;->d(C)V

    goto :goto_11

    :cond_4f
    const-string v6, "\'\'"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj$/time/format/u;->e(Ljava/lang/String;)V

    :goto_11
    move v3, v4

    goto :goto_12

    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    const/16 v6, 0x5b

    if-ne v4, v6, :cond_52

    invoke-virtual {v1}, Lj$/time/format/u;->o()V

    goto :goto_12

    :cond_52
    const/16 v6, 0x5d

    if-ne v4, v6, :cond_54

    iget-object v4, v1, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v4, v4, Lj$/time/format/u;->b:Lj$/time/format/u;

    if-eqz v4, :cond_53

    invoke-virtual {v1}, Lj$/time/format/u;->n()V

    goto :goto_12

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/16 v6, 0x7b

    if-eq v4, v6, :cond_55

    const/16 v6, 0x7d

    if-eq v4, v6, :cond_55

    const/16 v6, 0x23

    if-eq v4, v6, :cond_55

    invoke-virtual {v1, v4}, Lj$/time/format/u;->d(C)V

    :goto_12
    add-int/2addr v3, v9

    goto/16 :goto_0

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern includes reserved character: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Lj$/time/format/E;->SMART:Lj$/time/format/E;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lj$/time/format/u;->q(Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Lj$/time/f;)Ljava/lang/Object;
    .locals 5

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "query"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatter;->b(Ljava/lang/CharSequence;)Lj$/time/format/D;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj$/time/format/D;->w(Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lj$/time/format/w; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lj$/time/format/w;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' could not be parsed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    throw v1

    :goto_2
    throw p1
.end method

.method public final b(Ljava/lang/CharSequence;)Lj$/time/format/D;
    .locals 26

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    const-string v4, "text"

    invoke-static {v1, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "position"

    invoke-static {v2, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Lj$/time/format/v;

    invoke-direct {v4, v0}, Lj$/time/format/v;-><init>(Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    iget-object v6, v0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    invoke-virtual {v6, v4, v1, v5}, Lj$/time/format/d;->l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_0

    not-int v4, v5

    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_0
    if-eqz v4, :cond_24

    iget-object v5, v4, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-gez v7, :cond_24

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    goto/16 :goto_12

    :cond_1
    invoke-virtual {v4}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v9

    invoke-virtual {v4}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v1

    iget-object v1, v1, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    if-nez v1, :cond_2

    iget-object v1, v5, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    if-nez v1, :cond_2

    sget-object v1, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    :cond_2
    iput-object v1, v9, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    iget-object v1, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    if-eqz v1, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v6, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    iget-object v1, v0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/E;

    iput-object v1, v9, Lj$/time/format/D;->e:Lj$/time/format/E;

    invoke-virtual {v9}, Lj$/time/format/D;->j()V

    iget-object v1, v9, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    iget-object v4, v9, Lj$/time/format/D;->e:Lj$/time/format/E;

    invoke-interface {v1, v2, v4}, Lj$/time/chrono/j;->N(Ljava/util/Map;Lj$/time/format/E;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v9, v1}, Lj$/time/format/D;->t(Lj$/time/chrono/ChronoLocalDate;)V

    invoke-virtual {v9}, Lj$/time/format/D;->p()V

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_e

    :goto_2
    const/16 v1, 0x32

    if-ge v3, v1, :cond_c

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/temporal/o;

    iget-object v5, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    iget-object v6, v9, Lj$/time/format/D;->e:Lj$/time/format/E;

    invoke-interface {v4, v5, v9, v6}, Lj$/time/temporal/o;->m(Ljava/util/Map;Lj$/time/format/D;Lj$/time/format/E;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v5

    if-eqz v5, :cond_b

    instance-of v1, v5, Lj$/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_7

    check-cast v5, Lj$/time/chrono/ChronoZonedDateTime;

    iget-object v1, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    if-nez v1, :cond_5

    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneId;

    move-result-object v1

    iput-object v1, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->E()Lj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    goto :goto_4

    :cond_6
    new-instance v1, Lj$/time/b;

    iget-object v2, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_4
    instance-of v1, v5, Lj$/time/chrono/ChronoLocalDateTime;

    if-eqz v1, :cond_8

    check-cast v5, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-interface {v5}, Lj$/time/chrono/ChronoLocalDateTime;->b()Lj$/time/j;

    move-result-object v1

    sget-object v2, Lj$/time/r;->d:Lj$/time/r;

    invoke-virtual {v9, v1, v2}, Lj$/time/format/D;->q(Lj$/time/j;Lj$/time/r;)V

    invoke-interface {v5}, Lj$/time/chrono/ChronoLocalDateTime;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v9, v1}, Lj$/time/format/D;->t(Lj$/time/chrono/ChronoLocalDate;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    instance-of v1, v5, Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_9

    check-cast v5, Lj$/time/chrono/ChronoLocalDate;

    invoke-virtual {v9, v5}, Lj$/time/format/D;->t(Lj$/time/chrono/ChronoLocalDate;)V

    goto :goto_5

    :cond_9
    instance-of v1, v5, Lj$/time/j;

    if-eqz v1, :cond_a

    check-cast v5, Lj$/time/j;

    sget-object v1, Lj$/time/r;->d:Lj$/time/r;

    invoke-virtual {v9, v5, v1}, Lj$/time/format/D;->q(Lj$/time/j;Lj$/time/r;)V

    goto :goto_5

    :cond_a
    new-instance v1, Lj$/time/b;

    const-string v2, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v5, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_5

    :cond_c
    if-eq v3, v1, :cond_d

    if-lez v3, :cond_e

    invoke-virtual {v9}, Lj$/time/format/D;->j()V

    iget-object v1, v9, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    iget-object v3, v9, Lj$/time/format/D;->e:Lj$/time/format/E;

    invoke-interface {v1, v2, v3}, Lj$/time/chrono/j;->N(Ljava/util/Map;Lj$/time/format/E;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v9, v1}, Lj$/time/format/D;->t(Lj$/time/chrono/ChronoLocalDate;)V

    invoke-virtual {v9}, Lj$/time/format/D;->p()V

    goto :goto_6

    :cond_d
    new-instance v1, Lj$/time/b;

    const-string v2, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_6
    iget-object v1, v9, Lj$/time/format/D;->g:Lj$/time/j;

    const-wide/32 v2, 0xf4240

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x0

    if-nez v1, :cond_18

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v12, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    mul-long/2addr v10, v4

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    rem-long/2addr v13, v4

    add-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v8, v12, v1}, Lj$/time/format/D;->v(Lj$/time/temporal/o;Lj$/time/temporal/a;Ljava/lang/Long;)V

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_7
    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v8, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_18

    iget-object v10, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v11, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    iget-object v12, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v13, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    iget-object v14, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v15, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-nez v10, :cond_13

    if-nez v12, :cond_12

    if-nez v14, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    move-wide/from16 v18, v2

    goto/16 :goto_f

    :cond_13
    :goto_9
    if-eqz v10, :cond_14

    if-nez v12, :cond_14

    if-eqz v14, :cond_14

    goto :goto_8

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_a

    :cond_15
    move-wide/from16 v16, v6

    :goto_a
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_b

    :cond_16
    move-wide/from16 v18, v6

    :goto_b
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_c

    :cond_17
    move-wide/from16 v20, v6

    :goto_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v24, v2

    move-object v3, v15

    move-wide/from16 v14, v18

    move-wide/from16 v18, v24

    move-object v1, v11

    move-object v2, v13

    move-wide/from16 v12, v16

    move-wide/from16 v16, v20

    move-wide/from16 v10, v22

    invoke-virtual/range {v9 .. v17}, Lj$/time/format/D;->o(JJJJ)V

    iget-object v10, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_18
    move-wide/from16 v18, v2

    :goto_d
    iget-object v1, v9, Lj$/time/format/D;->e:Lj$/time/format/E;

    sget-object v2, Lj$/time/format/E;->LENIENT:Lj$/time/format/E;

    if-eq v1, v2, :cond_1a

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/temporal/o;

    instance-of v8, v3, Lj$/time/temporal/a;

    if-eqz v8, :cond_19

    check-cast v3, Lj$/time/temporal/a;

    invoke-virtual {v3}, Lj$/time/temporal/a;->S()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lj$/time/temporal/a;->F(J)V

    goto :goto_e

    :cond_1a
    :goto_f
    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_1b

    invoke-virtual {v9, v1}, Lj$/time/format/D;->i(Lj$/time/temporal/TemporalAccessor;)V

    :cond_1b
    iget-object v1, v9, Lj$/time/format/D;->g:Lj$/time/j;

    if-eqz v1, :cond_1c

    invoke-virtual {v9, v1}, Lj$/time/format/D;->i(Lj$/time/temporal/TemporalAccessor;)V

    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_1c

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1c

    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    iget-object v2, v9, Lj$/time/format/D;->g:Lj$/time/j;

    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDate;->H(Lj$/time/j;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-virtual {v9, v1}, Lj$/time/format/D;->i(Lj$/time/temporal/TemporalAccessor;)V

    :cond_1c
    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_1e

    iget-object v1, v9, Lj$/time/format/D;->g:Lj$/time/j;

    if-eqz v1, :cond_1e

    iget-object v1, v9, Lj$/time/format/D;->h:Lj$/time/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lj$/time/r;->d:Lj$/time/r;

    if-ne v1, v2, :cond_1d

    goto :goto_10

    :cond_1d
    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    iget-object v3, v9, Lj$/time/format/D;->h:Lj$/time/r;

    invoke-interface {v1, v3}, Lj$/time/chrono/ChronoLocalDate;->M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iput-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    iput-object v2, v9, Lj$/time/format/D;->h:Lj$/time/r;

    :cond_1e
    :goto_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v9, Lj$/time/format/D;->g:Lj$/time/j;

    if-nez v2, :cond_21

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1f
    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v6, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    div-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v4, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    div-long v1, v1, v18

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_20
    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_11
    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_23

    iget-object v1, v9, Lj$/time/format/D;->g:Lj$/time/j;

    if-eqz v1, :cond_23

    iget-object v1, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v2, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Lj$/time/ZoneOffset;->b0(I)Lj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    iget-object v3, v9, Lj$/time/format/D;->g:Lj$/time/j;

    invoke-interface {v2, v3}, Lj$/time/chrono/ChronoLocalDate;->H(Lj$/time/j;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2, v1}, Lj$/time/chrono/ChronoLocalDateTime;->C(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    iget-object v3, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v4, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_22
    iget-object v1, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    if-eqz v1, :cond_23

    iget-object v1, v9, Lj$/time/format/D;->f:Lj$/time/chrono/ChronoLocalDate;

    iget-object v2, v9, Lj$/time/format/D;->g:Lj$/time/j;

    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDate;->H(Lj$/time/j;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    iget-object v2, v9, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDateTime;->C(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    iget-object v3, v9, Lj$/time/format/D;->a:Ljava/util/Map;

    sget-object v4, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v9

    :cond_24
    :goto_12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x40

    if-le v4, v5, :cond_25

    invoke-interface {v1, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_13
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    const-string v5, "Text \'"

    if-ltz v4, :cond_26

    new-instance v4, Lj$/time/format/w;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be parsed at index "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    invoke-direct {v4, v3, v1}, Lj$/time/format/w;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4

    :cond_26
    new-instance v4, Lj$/time/format/w;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    invoke-direct {v4, v3, v1}, Lj$/time/format/w;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4
.end method

.method public format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    const-string v2, "temporal"

    invoke-static {p1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "appendable"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v2, Lj$/time/format/y;

    invoke-direct {v2, p1, p0}, Lj$/time/format/y;-><init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V

    invoke-virtual {v1, v2, v0}, Lj$/time/format/d;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lj$/time/b;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    invoke-virtual {v0}, Lj$/time/format/d;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
