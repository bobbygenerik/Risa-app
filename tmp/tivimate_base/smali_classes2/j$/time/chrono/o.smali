.class public final Lj$/time/chrono/o;
.super Lj$/time/chrono/c;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field public final transient a:Lj$/time/chrono/m;

.field public final transient b:I

.field public final transient c:I

.field public final transient d:I


# direct methods
.method public constructor <init>(Lj$/time/chrono/m;III)V
    .locals 0

    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    invoke-virtual {p1, p2, p3, p4}, Lj$/time/chrono/m;->V(III)J

    iput-object p1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iput p2, p0, Lj$/time/chrono/o;->b:I

    iput p3, p0, Lj$/time/chrono/o;->c:I

    iput p4, p0, Lj$/time/chrono/o;->d:I

    return-void
.end method

.method public constructor <init>(Lj$/time/chrono/m;J)V
    .locals 4

    .prologue
    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    long-to-int p2, p2

    invoke-virtual {p1}, Lj$/time/chrono/m;->S()V

    iget p3, p1, Lj$/time/chrono/m;->e:I

    if-lt p2, p3, :cond_1

    iget p3, p1, Lj$/time/chrono/m;->f:I

    if-ge p2, p3, :cond_1

    iget-object p3, p1, Lj$/time/chrono/m;->d:[I

    invoke-static {p3, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p3

    const/4 v0, 0x2

    if-gez p3, :cond_0

    neg-int p3, p3

    sub-int/2addr p3, v0

    :cond_0
    invoke-virtual {p1, p3}, Lj$/time/chrono/m;->U(I)I

    move-result v1

    iget v2, p1, Lj$/time/chrono/m;->g:I

    add-int/2addr v2, p3

    rem-int/lit8 v2, v2, 0xc

    iget-object v3, p1, Lj$/time/chrono/m;->d:[I

    aget p3, v3, p3

    sub-int/2addr p2, p3

    const/4 p3, 0x1

    add-int/2addr v2, p3

    add-int/2addr p2, p3

    filled-new-array {v1, v2, p2}, [I

    move-result-object p2

    iput-object p1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    const/4 p1, 0x0

    aget p1, p2, p1

    iput p1, p0, Lj$/time/chrono/o;->b:I

    aget p1, p2, p3

    iput p1, p0, Lj$/time/chrono/o;->c:I

    aget p1, p2, v0

    iput p1, p0, Lj$/time/chrono/o;->d:I

    return-void

    :cond_1
    new-instance p1, Lj$/time/b;

    const-string p2, "Hijrah date out of range"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method

.method public final B(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 7

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/chrono/n;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p1, p0, Lj$/time/chrono/o;->b:I

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    :pswitch_1
    iget p1, p0, Lj$/time/chrono/o;->b:I

    int-to-long v0, p1

    return-wide v0

    :pswitch_2
    iget p1, p0, Lj$/time/chrono/o;->b:I

    int-to-long v0, p1

    return-wide v0

    :pswitch_3
    iget p1, p0, Lj$/time/chrono/o;->b:I

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget p1, p0, Lj$/time/chrono/o;->c:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    :pswitch_4
    iget p1, p0, Lj$/time/chrono/o;->c:I

    int-to-long v0, p1

    return-wide v0

    :pswitch_5
    invoke-virtual {p0}, Lj$/time/chrono/o;->X()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_6
    invoke-virtual {p0}, Lj$/time/chrono/o;->G()J

    move-result-wide v0

    return-wide v0

    :pswitch_7
    invoke-virtual {p0}, Lj$/time/chrono/o;->X()I

    move-result p1

    sub-int/2addr p1, v2

    rem-int/2addr p1, v1

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_8
    iget p1, p0, Lj$/time/chrono/o;->d:I

    sub-int/2addr p1, v2

    rem-int/2addr p1, v1

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_9
    invoke-virtual {p0}, Lj$/time/chrono/o;->G()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    int-to-long v0, v1

    invoke-static {v3, v4, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_a
    iget p1, p0, Lj$/time/chrono/o;->d:I

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/chrono/o;->X()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :pswitch_c
    iget p1, p0, Lj$/time/chrono/o;->d:I

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G()J
    .locals 4

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget v1, p0, Lj$/time/chrono/o;->b:I

    iget v2, p0, Lj$/time/chrono/o;->c:I

    iget v3, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/chrono/m;->V(III)J

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
    .locals 1

    sget-object v0, Lj$/time/chrono/p;->AH:Lj$/time/chrono/p;

    return-object v0
.end method

.method public final M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method

.method public final P()I
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget v1, p0, Lj$/time/chrono/o;->b:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/m;->Y(II)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic U(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic V(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Z(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1
.end method

.method public final W(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/chrono/o;->b:I

    long-to-int p1, p1

    int-to-long v0, v0

    int-to-long p1, p1

    add-long/2addr v0, p1

    long-to-int p1, v0

    int-to-long v2, p1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget p2, p0, Lj$/time/chrono/o;->c:I

    iget v0, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, p1, p2, v0}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method public final X()I
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget v1, p0, Lj$/time/chrono/o;->b:I

    iget v2, p0, Lj$/time/chrono/o;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/m;->Y(II)I

    move-result v0

    iget v1, p0, Lj$/time/chrono/o;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final Y(J)Lj$/time/chrono/o;
    .locals 4

    new-instance v0, Lj$/time/chrono/o;

    iget-object v1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {p0}, Lj$/time/chrono/o;->G()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Lj$/time/chrono/o;-><init>(Lj$/time/chrono/m;J)V

    return-object v0
.end method

.method public final Z(J)Lj$/time/chrono/o;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/chrono/o;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v4, p0, Lj$/time/chrono/o;->c:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    iget-object p1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v4

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj$/time/chrono/m;->U(I)I

    move-result p2

    int-to-long v6, p2

    cmp-long p2, v4, v6

    if-ltz p2, :cond_1

    iget-object p2, p1, Lj$/time/chrono/m;->d:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lj$/time/chrono/m;->U(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long p1, p1

    cmp-long p1, v4, p1

    if-gtz p1, :cond_1

    long-to-int p1, v4

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, p1, p2, v0}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lj$/time/b;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Hijrah year: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lj$/time/chrono/j;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    return-object v0
.end method

.method public final a0(III)Lj$/time/chrono/o;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/m;->W(II)I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    new-instance v1, Lj$/time/chrono/o;

    invoke-direct {v1, v0, p1, p2, p3}, Lj$/time/chrono/o;-><init>(Lj$/time/chrono/m;III)V

    return-object v1
.end method

.method public final b0(JLj$/time/temporal/o;)Lj$/time/chrono/o;
    .locals 5

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {v1, v0}, Lj$/time/chrono/m;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/o;)V

    long-to-int v1, p1

    sget-object v2, Lj$/time/chrono/n;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide/16 v2, 0x7

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    const-string p2, "Unsupported field: "

    invoke-static {p2, p3}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lj$/time/chrono/o;->b:I

    sub-int/2addr v4, p1

    iget p1, p0, Lj$/time/chrono/o;->c:I

    iget p2, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, v4, p1, p2}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget p1, p0, Lj$/time/chrono/o;->c:I

    iget p2, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, v1, p1, p2}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget p1, p0, Lj$/time/chrono/o;->b:I

    if-lt p1, v4, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    :goto_0
    iget p1, p0, Lj$/time/chrono/o;->c:I

    iget p2, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, v1, p1, p2}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget p3, p0, Lj$/time/chrono/o;->b:I

    int-to-long v0, p3

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget p3, p0, Lj$/time/chrono/o;->c:I

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Z(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget p1, p0, Lj$/time/chrono/o;->b:I

    iget p2, p0, Lj$/time/chrono/o;->d:I

    invoke-virtual {p0, p1, v1, p2}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_5
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/o;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-instance p3, Lj$/time/chrono/o;

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-direct {p3, v0, p1, p2}, Lj$/time/chrono/o;-><init>(Lj$/time/chrono/m;J)V

    return-object p3

    :pswitch_7
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/o;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_8
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/o;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lj$/time/chrono/o;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 p3, 0x7

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    add-int/2addr p3, v4

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_a
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/o;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/chrono/o;->P()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Lj$/time/chrono/o;->X()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/o;->Y(J)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :pswitch_c
    iget p1, p0, Lj$/time/chrono/o;->b:I

    iget p2, p0, Lj$/time/chrono/o;->c:I

    invoke-virtual {p0, p1, p2, v1}, Lj$/time/chrono/o;->a0(III)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/o;->b0(JLj$/time/temporal/o;)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/o;->b0(JLj$/time/temporal/o;)Lj$/time/chrono/o;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/chrono/o;

    iget v1, p0, Lj$/time/chrono/o;->b:I

    iget v3, p1, Lj$/time/chrono/o;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/chrono/o;->c:I

    iget v3, p1, Lj$/time/chrono/o;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/chrono/o;->d:I

    iget v3, p1, Lj$/time/chrono/o;->d:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget-object p1, p1, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {v1, p1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lj$/time/chrono/o;->b:I

    iget v1, p0, Lj$/time/chrono/o;->c:I

    iget v2, p0, Lj$/time/chrono/o;->d:I

    iget-object v3, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v3, v0, -0x800

    const v4, 0x7d2cfbb3

    xor-int/2addr v3, v4

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

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

    check-cast p1, Lj$/time/temporal/a;

    sget-object v0, Lj$/time/chrono/n;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    invoke-virtual {v0, p1}, Lj$/time/chrono/m;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x5

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lj$/time/chrono/o;->P()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget v0, p0, Lj$/time/chrono/o;->b:I

    iget v1, p0, Lj$/time/chrono/o;->c:I

    invoke-virtual {p1, v0, v1}, Lj$/time/chrono/m;->W(II)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

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

.method public final s()Z
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/o;->a:Lj$/time/chrono/m;

    iget v1, p0, Lj$/time/chrono/o;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/m;->R(J)Z

    move-result v0

    return v0
.end method

.method public final u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/o;

    return-object p1
.end method
