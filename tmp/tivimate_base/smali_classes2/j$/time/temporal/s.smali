.class public final Lj$/time/temporal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/o;


# static fields
.field public static final f:Lj$/time/temporal/r;

.field public static final g:Lj$/time/temporal/r;

.field public static final h:Lj$/time/temporal/r;

.field public static final i:Lj$/time/temporal/r;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/WeekFields;

.field public final c:Lj$/time/temporal/TemporalUnit;

.field public final d:Lj$/time/temporal/TemporalUnit;

.field public final e:Lj$/time/temporal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x6

    const-wide/16 v1, 0x0

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->g:Lj$/time/temporal/r;

    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x36

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/r;

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->g(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->i:Lj$/time/temporal/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj$/time/temporal/WeekFields;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/temporal/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iput-object p3, p0, Lj$/time/temporal/s;->c:Lj$/time/temporal/TemporalUnit;

    iput-object p4, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    iput-object p5, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-void
.end method

.method public static a(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x7

    return p1
.end method


# virtual methods
.method public final B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v2, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget-object v1, v0, Lj$/time/temporal/WeekFields;->c:Lj$/time/temporal/s;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v1

    iget-object v0, v0, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v0

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object p1

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lj$/time/temporal/s;->e(Lj$/time/chrono/j;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr v0, v1

    int-to-long p2, v0

    iget-object v0, p0, Lj$/time/temporal/s;->c:Lj$/time/temporal/TemporalUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/time/temporal/TemporalAccessor;)I
    .locals 2

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Lj$/time/temporal/p;->e(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(Lj$/time/temporal/TemporalAccessor;)I
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lj$/time/temporal/s;->h(II)I

    move-result v0

    invoke-static {v0, v3}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    iget-wide v4, p1, Lj$/time/temporal/r;->d:J

    long-to-int p1, v4

    iget-object v2, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget v2, v2, Lj$/time/temporal/WeekFields;->b:I

    add-int/2addr p1, v2

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public final d(Lj$/time/temporal/TemporalAccessor;)I
    .locals 4

    .prologue
    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lj$/time/temporal/s;->h(II)I

    move-result v0

    invoke-static {v0, v2}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/j;->D(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    int-to-long v0, v2

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->d(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x32

    if-le v3, v2, :cond_1

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    iget-wide v1, p1, Lj$/time/temporal/r;->d:J

    long-to-int p1, v1

    iget-object v1, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget v1, v1, Lj$/time/temporal/WeekFields;->b:I

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    return v3
.end method

.method public final e(Lj$/time/chrono/j;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lj$/time/chrono/j;->L(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lj$/time/temporal/s;->h(II)I

    move-result p2

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->P()I

    move-result v1

    iget-object v2, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget v2, v2, Lj$/time/temporal/WeekFields;->b:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Lj$/time/temporal/s;->a(II)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    neg-int p2, p2

    sub-int/2addr p4, v0

    add-int/2addr p4, p2

    sub-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr p3, p4

    int-to-long p2, p3

    sget-object p4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, p4}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;
    .locals 3

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lj$/time/temporal/s;->h(II)I

    move-result v0

    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    iget-wide v1, p1, Lj$/time/temporal/r;->a:J

    long-to-int p2, v1

    invoke-static {v0, p2}, Lj$/time/temporal/s;->a(II)I

    move-result p2

    int-to-long v1, p2

    iget-wide p1, p1, Lj$/time/temporal/r;->d:J

    long-to-int p1, p1

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    int-to-long p1, p1

    invoke-static {v1, v2, p1, p2}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 6

    .prologue
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lj$/time/temporal/s;->h:Lj$/time/temporal/r;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v1

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lj$/time/temporal/s;->h(II)I

    move-result v1

    invoke-static {v1, v2}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/j;->D(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    add-int/lit8 v2, v2, 0x7

    int-to-long v0, v2

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object v0

    iget-wide v4, v0, Lj$/time/temporal/r;->d:J

    long-to-int v0, v4

    iget-object v4, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget v4, v4, Lj$/time/temporal/WeekFields;->b:I

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Lj$/time/temporal/s;->a(II)I

    move-result v1

    if-lt v3, v1, :cond_2

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lj$/time/chrono/j;->D(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    int-to-long v0, v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final h(II)I
    .locals 2

    .prologue
    sub-int/2addr p1, p2

    invoke-static {p1}, Lj$/time/temporal/p;->e(I)I

    move-result p1

    neg-int p2, p1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    iget v1, v1, Lj$/time/temporal/WeekFields;->b:I

    if-le v0, v1, :cond_0

    rsub-int/lit8 p1, p1, 0x7

    return p1

    :cond_0
    return p2
.end method

.method public final isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 2

    .prologue
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lj$/time/temporal/WeekFields;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_4

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 3

    .prologue
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    iget-object p1, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/s;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/s;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lj$/time/temporal/WeekFields;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, p1, :cond_4

    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unreachable, rangeUnit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/util/Map;Lj$/time/format/D;Lj$/time/format/E;)Lj$/time/temporal/TemporalAccessor;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/com/android/tools/r8/a;->O(J)I

    move-result v5

    sget-object v6, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const/4 v7, 0x0

    iget-object v8, v0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    iget-object v9, v0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    const/4 v10, 0x1

    iget-object v11, v0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v11, v6, :cond_0

    invoke-virtual {v8, v3, v4, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v2

    invoke-virtual {v9}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/DayOfWeek;->getValue()I

    move-result v3

    sub-int/2addr v3, v10

    sub-int/2addr v2, v10

    add-int/2addr v2, v3

    invoke-static {v2}, Lj$/time/temporal/p;->e(I)I

    move-result v2

    add-int/2addr v2, v10

    int-to-long v2, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_0
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v15, v7

    goto/16 :goto_6

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v4, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v4, v12, v13, v3}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v4

    invoke-virtual {v9}, Lj$/time/temporal/WeekFields;->getFirstDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v12

    invoke-virtual {v12}, Lj$/time/DayOfWeek;->getValue()I

    move-result v12

    sub-int/2addr v4, v12

    invoke-static {v4}, Lj$/time/temporal/p;->e(I)I

    move-result v4

    add-int/2addr v4, v10

    invoke-static/range {p2 .. p2}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object v12

    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    move-object v15, v7

    move-object/from16 v16, v8

    if-eqz v14, :cond_9

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v6, v13, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v6, v7, v8, v13}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v6

    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v7, :cond_5

    sget-object v9, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v17, v9

    int-to-long v8, v5

    sget-object v5, Lj$/time/format/E;->LENIENT:Lj$/time/format/E;

    if-ne v2, v5, :cond_2

    invoke-interface {v12, v6, v10, v10}, Lj$/time/chrono/j;->L(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    const-wide/16 v5, 0x1

    invoke-static {v14, v15, v5, v6}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v5

    invoke-interface {v2, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v5

    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v2, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Lj$/time/temporal/s;->h(II)I

    move-result v5

    invoke-static {v5, v6}, Lj$/time/temporal/s;->a(II)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v8, v9, v5, v6}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v2}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v5

    int-to-long v7, v4

    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    move-object/from16 v5, v17

    goto :goto_1

    :cond_2
    move-object/from16 v5, v17

    iget-object v7, v5, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v7, v14, v15, v5}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v7

    invoke-interface {v12, v6, v7, v10}, Lj$/time/chrono/j;->L(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    move-object/from16 v7, v16

    invoke-virtual {v7, v8, v9, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v6}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v9

    sget-object v10, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v6, v10}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v10

    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/s;->h(II)I

    move-result v9

    invoke-static {v9, v10}, Lj$/time/temporal/s;->a(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v0, v6}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int/2addr v4, v8

    const/4 v8, 0x7

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    int-to-long v7, v7

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v7, v8, v4}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v6, Lj$/time/format/E;->STRICT:Lj$/time/format/E;

    if-ne v2, v6, :cond_4

    invoke-interface {v4, v5}, Lj$/time/temporal/TemporalAccessor;->F(Lj$/time/temporal/o;)J

    move-result-wide v6

    cmp-long v2, v6, v14

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lj$/time/b;

    const-string v2, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    move-object v2, v4

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_5
    move-object/from16 v7, v16

    sget-object v8, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v8, :cond_e

    int-to-long v8, v5

    invoke-interface {v12, v6, v10, v10}, Lj$/time/chrono/j;->L(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v5

    sget-object v10, Lj$/time/format/E;->LENIENT:Lj$/time/format/E;

    if-ne v2, v10, :cond_6

    invoke-virtual {v0, v5}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    sget-object v6, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v6

    invoke-virtual {v0, v6, v2}, Lj$/time/temporal/s;->h(II)I

    move-result v2

    invoke-static {v2, v6}, Lj$/time/temporal/s;->a(II)I

    move-result v2

    int-to-long v6, v2

    invoke-static {v8, v9, v6, v7}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v5}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    sub-int/2addr v4, v2

    const/4 v8, 0x7

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v6

    int-to-long v8, v4

    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v6

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v6, v7, v2}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v8, v9, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v5}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v9

    sget-object v10, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v5, v10}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v10

    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/s;->h(II)I

    move-result v9

    invoke-static {v9, v10}, Lj$/time/temporal/s;->a(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v0, v5}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int/2addr v4, v8

    const/4 v8, 0x7

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    int-to-long v7, v7

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v5, v7, v8, v4}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v5, Lj$/time/format/E;->STRICT:Lj$/time/format/E;

    if-ne v2, v5, :cond_8

    invoke-interface {v4, v13}, Lj$/time/temporal/TemporalAccessor;->F(Lj$/time/temporal/o;)J

    move-result-wide v7

    int-to-long v5, v6

    cmp-long v2, v7, v5

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Lj$/time/b;

    const-string v2, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    move-object v2, v4

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_9
    sget-object v5, Lj$/time/temporal/WeekFields;->h:Lj$/time/temporal/h;

    if-eq v11, v5, :cond_a

    sget-object v5, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v11, v5, :cond_e

    :cond_a
    iget-object v5, v9, Lj$/time/temporal/WeekFields;->f:Lj$/time/temporal/s;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v9, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v9, Lj$/time/temporal/WeekFields;->f:Lj$/time/temporal/s;

    iget-object v7, v5, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v5, v9, Lj$/time/temporal/WeekFields;->f:Lj$/time/temporal/s;

    invoke-virtual {v7, v13, v14, v5}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v5

    sget-object v7, Lj$/time/format/E;->LENIENT:Lj$/time/format/E;

    if-ne v2, v7, :cond_b

    invoke-virtual {v0, v12, v5, v10, v4}, Lj$/time/temporal/s;->e(Lj$/time/chrono/j;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v4, v9, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    invoke-static {v4, v5, v7, v8}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    goto :goto_5

    :cond_b
    iget-object v6, v9, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    iget-object v7, v6, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v6, v9, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    invoke-virtual {v7, v10, v11, v6}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v6

    invoke-virtual {v0, v12, v5, v6, v4}, Lj$/time/temporal/s;->e(Lj$/time/chrono/j;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v6, Lj$/time/format/E;->STRICT:Lj$/time/format/E;

    if-ne v2, v6, :cond_d

    invoke-virtual {v0, v4}, Lj$/time/temporal/s;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result v2

    if-ne v2, v5, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Lj$/time/b;

    const-string v2, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_4
    move-object v2, v4

    :goto_5
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v9, Lj$/time/temporal/WeekFields;->f:Lj$/time/temporal/s;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v9, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_e
    :goto_6
    return-object v15
.end method

.method public final q()Lj$/time/temporal/r;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lj$/time/temporal/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lj$/time/temporal/TemporalAccessor;)J
    .locals 3

    .prologue
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/s;->h(II)I

    move-result v0

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/s;->h(II)I

    move-result v0

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    goto :goto_0

    :cond_2
    sget-object v0, Lj$/time/temporal/WeekFields;->h:Lj$/time/temporal/h;

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->d(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    goto :goto_0

    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_4

    invoke-virtual {p0, p1}, Lj$/time/temporal/s;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unreachable, rangeUnit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
