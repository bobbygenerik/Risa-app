.class public final Lj$/time/format/o;
.super Lj$/time/format/i;
.source "SourceFile"


# static fields
.field public static final h:Lj$/time/LocalDate;


# instance fields
.field public final g:Lj$/time/chrono/ChronoLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/format/o;->h:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/o;IILj$/time/chrono/ChronoLocalDate;I)V
    .locals 6

    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;I)V

    iput-object p4, v0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/y;J)J
    .locals 7

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    move-result-object p1

    invoke-interface {p1, v2}, Lj$/time/chrono/j;->D(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    cmp-long p1, p2, v2

    sget-object v4, Lj$/time/format/i;->f:[J

    if-ltz p1, :cond_1

    iget p1, p0, Lj$/time/format/i;->b:I

    aget-wide v5, v4, p1

    add-long/2addr v2, v5

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    rem-long/2addr v0, v5

    return-wide v0

    :cond_1
    iget p1, p0, Lj$/time/format/i;->c:I

    aget-wide p1, v4, p1

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method public final b(Lj$/time/format/v;)Z
    .locals 1

    .prologue
    iget-boolean v0, p1, Lj$/time/format/v;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lj$/time/format/i;->b(Lj$/time/format/v;)Z

    move-result p1

    return p1
.end method

.method public final c(Lj$/time/format/v;JII)I
    .locals 10

    .prologue
    iget-object v0, p0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v1

    iget-object v1, v1, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    if-nez v1, :cond_0

    iget-object v1, p1, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    if-nez v1, :cond_0

    sget-object v1, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    :cond_0
    invoke-interface {v1, v0}, Lj$/time/chrono/j;->D(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-interface {v0, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v0

    new-instance v1, Lj$/time/format/n;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lj$/time/format/n;-><init>(Lj$/time/format/o;Lj$/time/format/v;JII)V

    iget-object p1, v3, Lj$/time/format/v;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v3, Lj$/time/format/v;->e:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, v3, Lj$/time/format/v;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    const/4 v0, 0x0

    :goto_0
    sub-int p5, v7, v6

    iget p1, v2, Lj$/time/format/i;->b:I

    if-ne p5, p1, :cond_5

    const-wide/16 p2, 0x0

    cmp-long p2, v4, p2

    if-ltz p2, :cond_5

    sget-object p2, Lj$/time/format/i;->f:[J

    aget-wide p1, p2, p1

    int-to-long p3, v0

    rem-long v8, p3, p1

    sub-long v8, p3, v8

    if-lez v0, :cond_3

    add-long/2addr v8, v4

    goto :goto_1

    :cond_3
    sub-long/2addr v8, v4

    :goto_1
    cmp-long p3, v8, p3

    if-gez p3, :cond_4

    add-long/2addr p1, v8

    move-wide p2, p1

    goto :goto_2

    :cond_4
    move-wide p2, v8

    goto :goto_2

    :cond_5
    move-wide p2, v4

    :goto_2
    iget-object v4, v2, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    move v8, v7

    move v7, v6

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lj$/time/format/v;->f(Lj$/time/temporal/o;JII)I

    move-result p1

    return p1
.end method

.method public final d()Lj$/time/format/i;
    .locals 8

    .prologue
    iget v0, p0, Lj$/time/format/i;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lj$/time/format/o;

    iget-object v6, p0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    iget v4, p0, Lj$/time/format/i;->b:I

    iget v5, p0, Lj$/time/format/i;->c:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/o;-><init>(Lj$/time/temporal/o;IILj$/time/chrono/ChronoLocalDate;I)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/i;
    .locals 6

    new-instance v0, Lj$/time/format/o;

    iget v1, p0, Lj$/time/format/i;->e:I

    add-int v5, v1, p1

    iget-object v1, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    iget v2, p0, Lj$/time/format/i;->b:I

    iget v3, p0, Lj$/time/format/i;->c:I

    iget-object v4, p0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    invoke-direct/range {v0 .. v5}, Lj$/time/format/o;-><init>(Lj$/time/temporal/o;IILj$/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/o;->g:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "defaultObj"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ReducedValue("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/i;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/i;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
