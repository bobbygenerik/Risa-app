.class public final Lj$/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/l;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Instant;

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lj$/time/Instant;-><init>(JI)V

    sput-object v0, Lj$/time/Instant;->c:Lj$/time/Instant;

    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/Instant;->a:J

    iput p3, p0, Lj$/time/Instant;->b:I

    return-void
.end method

.method public static S(JI)Lj$/time/Instant;
    .locals 4

    .prologue
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    return-object p0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    new-instance v0, Lj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Instant;-><init>(JI)V

    return-object v0

    :cond_1
    new-instance p0, Lj$/time/b;

    const-string p1, "Instant exceeds minimum or maximum instant"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;
    .locals 5

    .prologue
    instance-of v0, p0, Lj$/time/Instant;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/time/Instant;

    return-object p0

    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/o;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lj$/time/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to obtain Instant from TemporalAccessor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static U(JJ)Lj$/time/Instant;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p0, p1, p2}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochMilli(J)Lj$/time/Instant;
    .locals 4

    const/16 v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v1}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    const p1, 0xf4240

    mul-int/2addr p0, p1

    invoke-static {v2, v3, p0}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochSecond(J)Lj$/time/Instant;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lj$/time/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final B(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->W(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/Instant;->W(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->W(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 2

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/e;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    return-wide v0

    :cond_0
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lj$/time/Instant;->b:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_2
    iget p1, p0, Lj$/time/Instant;->b:I

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lj$/time/Instant;->b:I

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final V(JJ)Lj$/time/Instant;
    .locals 4

    .prologue
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    rem-long/2addr p3, v0

    iget v0, p0, Lj$/time/Instant;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/time/Instant;->U(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final W(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;
    .locals 7

    .prologue
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/e;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const-wide/32 v3, 0xf4240

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const p3, 0x15180

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v5, v6}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p3, 0xa8c0

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v5, v6}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xe10

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v5, v6}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0x3c

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v5, v6}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v5, v6}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_5
    div-long v5, p1, v1

    rem-long/2addr p1, v1

    mul-long/2addr p1, v3

    invoke-virtual {p0, v5, v6, p1, p2}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_6
    div-long v5, p1, v3

    rem-long/2addr p1, v3

    mul-long/2addr p1, v1

    invoke-virtual {p0, v5, v6, p1, p2}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, v5, v6, p1, p2}, Lj$/time/Instant;->V(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final X(Lj$/time/Instant;)J
    .locals 9

    .prologue
    iget-wide v0, p1, Lj$/time/Instant;->a:J

    iget-wide v2, p0, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v0

    iget p1, p1, Lj$/time/Instant;->b:I

    iget v2, p0, Lj$/time/Instant;->b:I

    sub-int/2addr p1, v2

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    const-wide/16 v6, 0x1

    if-lez p1, :cond_0

    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    sub-long/2addr v0, v6

    return-wide v0

    :cond_0
    if-gez p1, :cond_1

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    add-long/2addr v0, v6

    :cond_1
    return-wide v0
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->T(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 2

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->F(J)V

    sget-object v1, Lj$/time/e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_4

    iget p3, p0, Lj$/time/Instant;->b:I

    invoke-static {p1, p2, p3}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lj$/time/temporal/q;

    const-string p2, "Unsupported field: "

    invoke-static {p2, p3}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    long-to-int p1, p1

    const p2, 0xf4240

    mul-int/2addr p1, p2

    iget p2, p0, Lj$/time/Instant;->b:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lj$/time/Instant;->a:J

    invoke-static {p2, p3, p1}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_2
    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    iget p2, p0, Lj$/time/Instant;->b:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lj$/time/Instant;->a:J

    invoke-static {p2, p3, p1}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_3
    iget p3, p0, Lj$/time/Instant;->b:I

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-eqz p3, :cond_4

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    long-to-int p1, p1

    invoke-static {v0, v1, p1}, Lj$/time/Instant;->S(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p0

    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/o;->B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    check-cast p1, Lj$/time/Instant;

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    iget-wide v2, p1, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->W(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/Instant;

    iget-wide v3, p0, Lj$/time/Instant;->a:J

    iget-wide v5, p1, Lj$/time/Instant;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Instant;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public final k(Lj$/time/temporal/o;)I
    .locals 4

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/e;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    iget-object v3, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v3, v1, v2, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    :goto_0
    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lj$/time/Instant;->b:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    :cond_2
    iget p1, p0, Lj$/time/Instant;->b:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_3
    iget p1, p0, Lj$/time/Instant;->b:I

    return p1

    :cond_4
    invoke-static {p0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object v0

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/r;->a(JLj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/Instant;->b:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public toEpochMilli()J
    .locals 7

    .prologue
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const v3, 0xf4240

    const/16 v4, 0x3e8

    if-gez v2, :cond_0

    iget v2, p0, Lj$/time/Instant;->b:I

    if-lez v2, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    int-to-long v5, v4

    invoke-static {v0, v1, v5, v6}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v0

    iget v2, p0, Lj$/time/Instant;->b:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v0

    iget v2, p0, Lj$/time/Instant;->b:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    invoke-static {p1}, Lj$/time/Instant;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/e;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-wide/32 v1, 0x3b9aca00

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p1}, Lj$/time/Instant;->X(Lj$/time/Instant;)J

    move-result-wide p1

    const-wide/32 v0, 0x15180

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_1
    invoke-virtual {p0, p1}, Lj$/time/Instant;->X(Lj$/time/Instant;)J

    move-result-wide p1

    const-wide/32 v0, 0xa8c0

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_2
    invoke-virtual {p0, p1}, Lj$/time/Instant;->X(Lj$/time/Instant;)J

    move-result-wide p1

    const-wide/16 v0, 0xe10

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_3
    invoke-virtual {p0, p1}, Lj$/time/Instant;->X(Lj$/time/Instant;)J

    move-result-wide p1

    const-wide/16 v0, 0x3c

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_4
    invoke-virtual {p0, p1}, Lj$/time/Instant;->X(Lj$/time/Instant;)J

    move-result-wide p1

    return-wide p1

    :pswitch_5
    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide p1

    invoke-virtual {p0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_6
    iget-wide v3, p1, Lj$/time/Instant;->a:J

    iget-wide v5, p0, Lj$/time/Instant;->a:J

    invoke-static {v3, v4, v5, v6}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v0

    iget p1, p1, Lj$/time/Instant;->b:I

    iget p2, p0, Lj$/time/Instant;->b:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_7
    iget-wide v3, p1, Lj$/time/Instant;->a:J

    iget-wide v5, p0, Lj$/time/Instant;->a:J

    invoke-static {v3, v4, v5, v6}, Lj$/com/android/tools/r8/a;->W(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v0

    iget p1, p1, Lj$/time/Instant;->b:I

    iget p2, p0, Lj$/time/Instant;->b:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final w(Lj$/time/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/p;->c:Lj$/time/f;

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/p;->b:Lj$/time/f;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/f;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/p;->e:Lj$/time/f;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/p;->d:Lj$/time/f;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/p;->f:Lj$/time/f;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/p;->g:Lj$/time/f;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lj$/time/f;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
