.class public final Lj$/time/chrono/v;
.super Lj$/time/chrono/c;
.source "SourceFile"


# static fields
.field public static final d:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field public final transient a:Lj$/time/LocalDate;

.field public final transient b:Lj$/time/chrono/w;

.field public final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDate;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lj$/time/chrono/w;->i(Lj$/time/LocalDate;)Lj$/time/chrono/w;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    iget-object v0, v0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/time/chrono/v;->c:I

    iput-object p1, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    return-void

    :cond_0
    new-instance p1, Lj$/time/b;

    const-string v0, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lj$/time/chrono/w;ILj$/time/LocalDate;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lj$/time/chrono/c;-><init>()V

    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    invoke-virtual {p3, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    iput p2, p0, Lj$/time/chrono/v;->c:I

    iput-object p3, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    return-void

    :cond_0
    new-instance p1, Lj$/time/b;

    const-string p2, "JapaneseDate before Meiji 6 is not supported"

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

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final B(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 2

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/chrono/u;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-object p1, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    iget p1, p1, Lj$/time/chrono/w;->a:I

    int-to-long v0, p1

    return-wide v0

    :pswitch_1
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget p1, p0, Lj$/time/chrono/v;->c:I

    int-to-long v0, p1

    return-wide v0

    :pswitch_3
    iget p1, p0, Lj$/time/chrono/v;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->X()I

    move-result p1

    iget-object v1, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    iget-object v1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->X()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0

    :cond_0
    iget-object p1, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->X()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

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
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    return-object v0
.end method

.method public final M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->M(Lj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final P()I
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    invoke-virtual {v0}, Lj$/time/chrono/w;->j()Lj$/time/chrono/w;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v2}, Lj$/time/LocalDate;->getYear()I

    move-result v2

    iget-object v3, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v3}, Lj$/time/LocalDate;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->X()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->P()I

    move-result v0

    :goto_0
    iget v2, p0, Lj$/time/chrono/v;->c:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    iget-object v2, v2, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v2}, Lj$/time/LocalDate;->X()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    :cond_1
    return v0
.end method

.method public final U(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1
.end method

.method public final V(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->g0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1
.end method

.method public final W(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->i0(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1
.end method

.method public final X(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/v;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final Y(JLj$/time/temporal/o;)Lj$/time/chrono/v;
    .locals 7

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/v;->F(Lj$/time/temporal/o;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lj$/time/chrono/u;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {v2, v0}, Lj$/time/chrono/t;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object v6

    invoke-virtual {v6, p1, p2, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/o;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v6}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v6}, Lj$/time/chrono/w;->n(I)Lj$/time/chrono/w;

    move-result-object p1

    iget p2, p0, Lj$/time/chrono/v;->c:I

    invoke-virtual {v2, p1, p2}, Lj$/time/chrono/t;->y(Lj$/time/chrono/k;I)I

    move-result p1

    iget-object p2, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p2, p1}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    invoke-virtual {v2, p1, v6}, Lj$/time/chrono/t;->y(Lj$/time/chrono/k;I)I

    move-result p1

    iget-object p2, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p2, p1}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final Z(Lj$/time/f;)Lj$/time/chrono/v;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final a()Lj$/time/chrono/j;
    .locals 1

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    return-object v0
.end method

.method public final a0(Lj$/time/LocalDate;)Lj$/time/chrono/v;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/chrono/v;

    invoke-direct {v0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/v;->Y(JLj$/time/temporal/o;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/v;->Y(JLj$/time/temporal/o;)Lj$/time/chrono/v;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->isDateBased()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/chrono/v;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/chrono/v;

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, -0x29035c2f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/c;->A(Lj$/time/temporal/l;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 5

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->e(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lj$/time/temporal/a;

    sget-object v0, Lj$/time/chrono/u;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {v0, p1}, Lj$/time/chrono/t;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    iget-object p1, p1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    iget-object v0, p0, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    invoke-virtual {v0}, Lj$/time/chrono/w;->j()Lj$/time/chrono/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x3b9ac9ff

    sub-int/2addr v0, p1

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/v;->P()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lj$/time/chrono/v;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->Z()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->f(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/c;->u(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/v;

    return-object p1
.end method
