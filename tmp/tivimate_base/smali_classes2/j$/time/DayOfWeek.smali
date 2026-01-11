.class public final enum Lj$/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/DayOfWeek;",
        ">;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/temporal/l;"
    }
.end annotation


# static fields
.field public static final enum FRIDAY:Lj$/time/DayOfWeek;

.field public static final enum MONDAY:Lj$/time/DayOfWeek;

.field public static final enum SATURDAY:Lj$/time/DayOfWeek;

.field public static final enum SUNDAY:Lj$/time/DayOfWeek;

.field public static final enum THURSDAY:Lj$/time/DayOfWeek;

.field public static final enum TUESDAY:Lj$/time/DayOfWeek;

.field public static final enum WEDNESDAY:Lj$/time/DayOfWeek;

.field public static final a:[Lj$/time/DayOfWeek;

.field public static final synthetic b:[Lj$/time/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lj$/time/DayOfWeek;

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/DayOfWeek;->MONDAY:Lj$/time/DayOfWeek;

    new-instance v1, Lj$/time/DayOfWeek;

    const-string v3, "TUESDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/DayOfWeek;->TUESDAY:Lj$/time/DayOfWeek;

    new-instance v3, Lj$/time/DayOfWeek;

    const-string v5, "WEDNESDAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/DayOfWeek;->WEDNESDAY:Lj$/time/DayOfWeek;

    new-instance v5, Lj$/time/DayOfWeek;

    const-string v7, "THURSDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/DayOfWeek;->THURSDAY:Lj$/time/DayOfWeek;

    new-instance v7, Lj$/time/DayOfWeek;

    const-string v9, "FRIDAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/time/DayOfWeek;->FRIDAY:Lj$/time/DayOfWeek;

    new-instance v9, Lj$/time/DayOfWeek;

    const-string v11, "SATURDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lj$/time/DayOfWeek;->SATURDAY:Lj$/time/DayOfWeek;

    new-instance v11, Lj$/time/DayOfWeek;

    const-string v13, "SUNDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    const/4 v13, 0x7

    new-array v13, v13, [Lj$/time/DayOfWeek;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lj$/time/DayOfWeek;->b:[Lj$/time/DayOfWeek;

    invoke-static {}, Lj$/time/DayOfWeek;->values()[Lj$/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    return-void
.end method

.method public static of(I)Lj$/time/DayOfWeek;
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    sget-object v1, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/DayOfWeek;
    .locals 1

    const-class v0, Lj$/time/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/DayOfWeek;

    return-object p0
.end method

.method public static values()[Lj$/time/DayOfWeek;
    .locals 1

    sget-object v0, Lj$/time/DayOfWeek;->b:[Lj$/time/DayOfWeek;

    invoke-virtual {v0}, [Lj$/time/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public final F(Lj$/time/temporal/o;)J
    .locals 2

    .prologue
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, p1}, Lj$/time/format/u;->i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V

    sget-object p1, Lj$/time/format/E;->SMART:Lj$/time/format/E;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lj$/time/format/u;->q(Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k(Lj$/time/temporal/o;)I
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/p;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/o;->q()Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public plus(J)Lj$/time/DayOfWeek;
    .locals 2

    const-wide/16 v0, 0x7

    rem-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/lit8 p1, p1, 0x7

    add-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x7

    sget-object p2, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public final q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lj$/time/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/p;->c:Lj$/time/f;

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/p;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
