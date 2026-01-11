.class public final Lj$/time/chrono/A;
.super Lj$/time/chrono/c;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x120bd9be64a3de1eL


# instance fields
.field public final transient a:Lj$/time/LocalDate;


# direct methods
.method public constructor <init>(Lj$/time/LocalDate;)V
    .locals 1

    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    const-string v0, "isoDate"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/chrono/C;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final B(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 4

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_6

    sget-object v0, Lj$/time/chrono/z;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_3
    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object p1, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    iget-short p1, p1, Lj$/time/LocalDate;->b:S

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_4
    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    :cond_6
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H(Lj$/time/j;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1

    new-instance v0, Lj$/time/chrono/e;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/e;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/j;)V

    return-object v0
.end method

.method public final J()Lj$/time/chrono/k;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/B;->ROC:Lj$/time/chrono/B;

    return-object v0

    :cond_0
    sget-object v0, Lj$/time/chrono/B;->BEFORE_ROC:Lj$/time/chrono/B;

    return-object v0
.end method

.method public final M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final U(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final V(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final W(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final X()I
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method public final Y(JLj$/time/temporal/o;)Lj$/time/chrono/A;
    .locals 7

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/A;->F(Lj$/time/temporal/o;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lj$/time/chrono/z;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_1
    sget-object p3, Lj$/time/chrono/y;->c:Lj$/time/chrono/y;

    invoke-virtual {p3, v0}, Lj$/time/chrono/y;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/o;)V

    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object p3, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    iget-short v2, p3, Lj$/time/LocalDate;->b:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v2, Lj$/time/chrono/y;->c:Lj$/time/chrono/y;

    invoke-virtual {v2, v0}, Lj$/time/chrono/y;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    :goto_0
    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/o;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p2

    rsub-int p2, p2, 0x778

    invoke-virtual {p1, p2}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    add-int/lit16 v2, v2, 0x777

    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_6

    add-int/lit16 v2, v2, 0x777

    goto :goto_1

    :cond_6
    rsub-int v2, v2, 0x778

    :goto_1
    invoke-virtual {p1, v2}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/A;->Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final Z(Lj$/time/LocalDate;)Lj$/time/chrono/A;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/chrono/A;

    invoke-direct {v0, p1}, Lj$/time/chrono/A;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final a()Lj$/time/chrono/j;
    .locals 1

    sget-object v0, Lj$/time/chrono/y;->c:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/A;->Y(JLj$/time/temporal/o;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/A;->Y(JLj$/time/temporal/o;)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/chrono/A;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/chrono/A;

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lj$/time/chrono/y;->c:Lj$/time/chrono/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, -0x769fa231

    xor-int/2addr v0, v1

    return v0
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 4

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->o(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/chrono/z;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    sget-object p1, Lj$/time/chrono/y;->c:Lj$/time/chrono/y;

    invoke-virtual {p1, v0}, Lj$/time/chrono/y;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {p0}, Lj$/time/chrono/A;->X()I

    move-result v0

    if-gtz v0, :cond_1

    iget-wide v0, p1, Lj$/time/temporal/r;->a:J

    neg-long v0, v0

    const-wide/16 v2, 0x778

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lj$/time/temporal/r;->d:J

    const-wide/16 v2, 0x777

    sub-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lj$/time/chrono/A;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/A;

    return-object p1
.end method
