.class public final Lj$/time/chrono/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field public final transient a:Lj$/time/chrono/e;

.field public final transient b:Lj$/time/ZoneOffset;

.field public final transient c:Lj$/time/ZoneId;


# direct methods
.method public constructor <init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj$/time/chrono/e;

    iput-object p3, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    const-string p3, "offset"

    invoke-static {p2, p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/ZoneOffset;

    iput-object p2, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    const-string p2, "zone"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    iput-object p1, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    return-void
.end method

.method public static S(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)Lj$/time/chrono/i;
    .locals 11

    .prologue
    const-string v0, "localDateTime"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    new-instance p1, Lj$/time/chrono/i;

    move-object v0, p0

    check-cast v0, Lj$/time/ZoneOffset;

    invoke-direct {p1, p0, v0, p2}, Lj$/time/chrono/i;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-static {p2}, Lj$/time/LocalDateTime;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->f(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->e(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lj$/time/zone/b;

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/zone/b;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget v0, v0, Lj$/time/ZoneOffset;->b:I

    iget-object v1, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, v5}, Lj$/time/d;->l(JI)Lj$/time/d;

    move-result-object v0

    iget-wide v7, v0, Lj$/time/d;->a:J

    iget-object v2, p2, Lj$/time/chrono/e;->a:Lj$/time/chrono/ChronoLocalDate;

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v10}, Lj$/time/chrono/e;->U(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/e;

    move-result-object p2

    iget-object p1, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    goto :goto_2

    :cond_3
    move-object v1, p2

    if-eqz p1, :cond_4

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    move-object p2, v1

    goto :goto_2

    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    goto :goto_1

    :goto_2
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/chrono/i;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/i;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)V

    return-object v0
.end method

.method public static T(Lj$/time/chrono/j;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/i;
    .locals 3

    invoke-virtual {p2}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v1, p1, Lj$/time/Instant;->a:J

    iget p1, p1, Lj$/time/Instant;->b:I

    invoke-static {v1, v2, p1, v0}, Lj$/time/LocalDateTime;->W(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/time/chrono/j;->I(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/e;

    new-instance p1, Lj$/time/chrono/i;

    invoke-direct {p1, p2, v0, p0}, Lj$/time/chrono/i;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)V

    return-object p1
.end method

.method public static q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;
    .locals 3

    .prologue
    check-cast p1, Lj$/time/chrono/i;

    invoke-virtual {p1}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/j;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/j;->j()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chronology mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final B(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/p;->b(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/i;->q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final E()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    return-object v0
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 2

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/chrono/g;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/chrono/i;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    invoke-virtual {v0, p1}, Lj$/time/chrono/e;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/i;->g()Lj$/time/ZoneOffset;

    move-result-object p1

    iget p1, p1, Lj$/time/ZoneOffset;->b:I

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/chrono/i;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final U(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/i;
    .locals 1

    .prologue
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/e;->T(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/e;

    move-result-object p1

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object p2

    invoke-virtual {p1, p0}, Lj$/time/chrono/e;->q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {p2, p1}, Lj$/time/chrono/i;->q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/i;->q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/j;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/i;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->a()Lj$/time/chrono/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/j;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/i;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    invoke-virtual {v0}, Lj$/time/chrono/e;->b()Lj$/time/j;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 3

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/chrono/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/e;->V(JLj$/time/temporal/o;)Lj$/time/chrono/e;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    iget-object p3, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    invoke-static {p2, p3, p1}, Lj$/time/chrono/i;->S(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->b0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lj$/com/android/tools/r8/a;->u(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    iget-object p1, p2, Lj$/time/chrono/e;->b:Lj$/time/j;

    iget p1, p1, Lj$/time/j;->d:I

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lj$/time/chrono/i;->T(Lj$/time/chrono/j;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->v(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    sget-object p3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/i;->U(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/o;->B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/i;->q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->e(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/i;->U(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->e(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/i;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    invoke-virtual {v0}, Lj$/time/chrono/e;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final h(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 5

    .prologue
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    iget-object v1, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/com/android/tools/r8/a;->u(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v1

    iget-object v0, v0, Lj$/time/chrono/e;->b:Lj$/time/j;

    iget v0, v0, Lj$/time/j;->d:I

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lj$/time/chrono/i;->T(Lj$/time/chrono/j;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-virtual {v0}, Lj$/time/chrono/e;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final synthetic k(Lj$/time/temporal/o;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-virtual {p1, p0}, Lj$/time/LocalDate;->q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/i;->q(Lj$/time/chrono/j;Lj$/time/temporal/Temporal;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/i;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/e;

    invoke-virtual {v0, p1}, Lj$/time/chrono/e;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    return-object v0
.end method

.method public final synthetic toEpochSecond()J
    .locals 2

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->v(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toInstant()Lj$/time/Instant;
    .locals 4

    invoke-virtual {p0}, Lj$/time/chrono/i;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/chrono/i;->b()Lj$/time/j;

    move-result-object v2

    iget v2, v2, Lj$/time/j;->d:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-virtual {v0}, Lj$/time/chrono/e;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    iget-object v1, v1, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/chrono/i;->c:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    invoke-virtual {v2}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 1

    .prologue
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/chrono/i;->a()Lj$/time/chrono/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/j;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Lj$/time/chrono/ChronoZonedDateTime;->h(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->r()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/e;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "unit"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic w(Lj$/time/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->s(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/i;->a:Lj$/time/chrono/e;

    iget-object v1, p0, Lj$/time/chrono/i;->b:Lj$/time/ZoneOffset;

    invoke-static {p1, v1, v0}, Lj$/time/chrono/i;->S(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)Lj$/time/chrono/i;

    move-result-object p1

    return-object p1
.end method
