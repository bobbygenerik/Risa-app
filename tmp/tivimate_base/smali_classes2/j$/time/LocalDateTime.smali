.class public final Lj$/time/LocalDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/l;",
        "Lj$/time/chrono/ChronoLocalDateTime<",
        "Lj$/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/LocalDateTime;

.field public static final d:Lj$/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field public final a:Lj$/time/LocalDate;

.field public final b:Lj$/time/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/j;->e:Lj$/time/j;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    sget-object v0, Lj$/time/LocalDate;->e:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/j;->f:Lj$/time/j;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDateTime;->d:Lj$/time/LocalDateTime;

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDate;Lj$/time/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iput-object p2, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    return-void
.end method

.method public static T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;
    .locals 5

    .prologue
    instance-of v0, p0, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/time/LocalDateTime;

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/time/ZonedDateTime;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/time/ZonedDateTime;

    iget-object p0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/time/OffsetDateTime;

    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Lj$/time/j;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/j;

    move-result-object v1

    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/j;)V
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lj$/time/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to obtain LocalDateTime from TemporalAccessor: "

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

.method public static V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;
    .locals 1

    const-string v0, "date"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/j;)V

    return-object v0
.end method

.method public static W(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;
    .locals 5

    const-string v0, "offset"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    iget p2, p3, Lj$/time/ZoneOffset;->b:I

    int-to-long p2, p2

    add-long/2addr p0, p2

    const p2, 0x15180

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v3

    invoke-static {p0, p1, p2, p3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v3, v4}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p1

    int-to-long p2, p0

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr p2, v3

    add-long/2addr p2, v1

    invoke-static {p2, p3}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object p0

    new-instance p2, Lj$/time/LocalDateTime;

    invoke-direct {p2, p1, p0}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/j;)V

    return-object p2
.end method

.method public static now()Lj$/time/LocalDateTime;
    .locals 4

    invoke-static {}, Lj$/com/android/tools/r8/a;->e0()Lj$/time/a;

    move-result-object v0

    const-string v1, "clock"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v1

    iget-object v0, v0, Lj$/time/a;->a:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    iget-wide v2, v1, Lj$/time/Instant;->a:J

    iget v1, v1, Lj$/time/Instant;->b:I

    invoke-static {v2, v3, v1, v0}, Lj$/time/LocalDateTime;->W(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;
    .locals 2

    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lj$/time/ZoneId;->T()Lj$/time/zone/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p1

    iget-wide v0, p0, Lj$/time/Instant;->a:J

    iget p0, p0, Lj$/time/Instant;->b:I

    invoke-static {v0, v1, p0, p1}, Lj$/time/LocalDateTime;->W(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;
    .locals 2

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->a(Ljava/lang/CharSequence;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/LocalDateTime;

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

    const/4 v1, 0x5

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

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/LocalDateTime;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic C(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 2

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->F(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K(Lj$/time/chrono/ChronoLocalDateTime;)I
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->S(Lj$/time/LocalDateTime;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public final S(Lj$/time/LocalDateTime;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->S(Lj$/time/j;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final U(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 4

    .prologue
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->S(Lj$/time/LocalDateTime;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->G()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/ChronoLocalDate;->G()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->e0()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->b()Lj$/time/j;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/j;->e0()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final X(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object/from16 v1, p3

    instance-of v4, v1, Lj$/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/h;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v4, v2, v3, v1}, Lj$/time/LocalDate;->f0(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object v1

    iget-object v2, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-wide/16 v4, 0x100

    div-long v6, v2, v4

    invoke-virtual {v0, v6, v7}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v8

    rem-long v1, v2, v4

    const-wide/16 v3, 0xc

    mul-long v10, v1, v3

    iget-object v9, v8, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v8 .. v18}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_2
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_4
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v5

    rem-long v1, p1, v1

    const-wide/32 v3, 0xf4240

    mul-long v13, v1, v3

    iget-object v6, v5, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v11, 0x0

    const/4 v15, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v15}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_5
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v5

    rem-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    mul-long v13, v1, v3

    iget-object v6, v5, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v11, 0x0

    const/4 v15, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v15}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_6
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v8, p1

    invoke-virtual/range {v0 .. v10}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v1, v0, v2, v3}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDateTime;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v8, v4

    const-wide/16 v4, 0x5a0

    div-long v10, p4, v4

    add-long/2addr v10, v8

    const-wide/16 v8, 0x18

    div-long v12, p2, v8

    add-long/2addr v12, v10

    move/from16 v10, p10

    int-to-long v10, v10

    mul-long/2addr v12, v10

    rem-long v14, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v16, 0x3b9aca00

    mul-long v6, v6, v16

    add-long/2addr v6, v14

    rem-long v4, p4, v4

    const-wide v14, 0xdf8475800L

    mul-long/2addr v4, v14

    add-long/2addr v4, v6

    rem-long v6, p2, v8

    const-wide v8, 0x34630b8a000L

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    iget-object v4, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v4}, Lj$/time/j;->e0()J

    move-result-wide v4

    mul-long/2addr v6, v10

    add-long/2addr v6, v4

    invoke-static {v6, v7, v2, v3}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    invoke-static {v6, v7, v2, v3}, Lj$/com/android/tools/r8/a;->T(JJ)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget-object v2, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v8, v9}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public final Z(JLj$/time/temporal/o;)Lj$/time/LocalDateTime;
    .locals 2

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/j;->g0(JLj$/time/temporal/o;)Lj$/time/j;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDate;->k0(JLj$/time/temporal/o;)Lj$/time/LocalDate;

    move-result-object p1

    iget-object p2, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/o;->B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDateTime;

    return-object p1
.end method

.method public final a()Lj$/time/chrono/j;
    .locals 1

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->a()Lj$/time/chrono/j;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/j;)V

    return-object v0
.end method

.method public atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/ZonedDateTime;->T(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lj$/time/j;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    return-object v0
.end method

.method public final b0(Lj$/time/temporal/l;)Lj$/time/LocalDateTime;
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDate;

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, p1, v0}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lj$/time/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    check-cast p1, Lj$/time/j;

    invoke-virtual {p0, v0, p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/LocalDateTime;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/l;->q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDateTime;

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->Z(JLj$/time/temporal/o;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->K(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/a;->S()Z

    move-result p1

    if-eqz p1, :cond_2

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
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/LocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-object v3, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v1, v3}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1, p1}, Lj$/time/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final bridge synthetic f()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-short v0, v0, Lj$/time/LocalDate;->c:S

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->W()Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-byte v0, v0, Lj$/time/j;->a:B

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-byte v0, v0, Lj$/time/j;->b:B

    return v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-short v0, v0, Lj$/time/LocalDate;->b:S

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1}, Lj$/time/j;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Lj$/time/temporal/o;)I
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->k(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->k(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/p;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->b0(Lj$/time/temporal/l;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lj$/time/LocalDateTime;
    .locals 11

    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v10}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    iget-object p2, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lj$/time/LocalDateTime;
    .locals 11

    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-virtual/range {v0 .. v10}, Lj$/time/LocalDateTime;->Y(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->f()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->G()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->b()Lj$/time/j;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/j;->e0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic toEpochSecond(Lj$/time/ZoneOffset;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->u(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toLocalDate()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1}, Lj$/time/j;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;
    .locals 12

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/d;

    move-result-object p1

    iget-wide v2, p1, Lj$/time/d;->a:J

    const-wide/32 v4, 0x15180

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    iget p1, p1, Lj$/time/d;->b:I

    int-to-long v4, p1

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    const-wide/32 v8, 0x3b9aca00

    if-gez p1, :cond_1

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    sub-long/2addr v4, v8

    :cond_1
    invoke-static {v2, v3, v8, v9}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v2

    const-wide v4, 0x4e94914f0000L

    rem-long/2addr v4, v2

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lj$/time/j;->e0()J

    move-result-wide v4

    div-long/2addr v4, v2

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Unit must divide into a standard day without remainder"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Unit is too large to be used for truncation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 8

    .prologue
    invoke-static {p1}, Lj$/time/LocalDateTime;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const-wide/16 v2, 0x1

    if-gez v1, :cond_2

    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-object v4, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lj$/time/LocalDate;->G()J

    move-result-wide v4

    invoke-virtual {v1}, Lj$/time/LocalDate;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1, p2}, Lj$/time/j;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p1}, Lj$/time/j;->e0()J

    move-result-wide p1

    iget-object v6, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v6}, Lj$/time/j;->e0()J

    move-result-wide v6

    sub-long/2addr p1, v6

    const-wide v6, 0x4e94914f0000L

    if-lez v1, :cond_1

    sub-long/2addr v4, v2

    add-long/2addr p1, v6

    goto :goto_0

    :cond_1
    add-long/2addr v4, v2

    sub-long/2addr p1, v6

    :goto_0
    sget-object v1, Lj$/time/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x2

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide v0, 0x274a48a78000L

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x18

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide v0, 0x34630b8a000L

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x5a0

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide v0, 0xdf8475800L

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_3
    const v0, 0x15180

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    invoke-static {v4, v5, v0, v1}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    goto :goto_1

    :pswitch_6
    invoke-static {v4, v5, v6, v7}, Lj$/com/android/tools/r8/a;->V(JJ)J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5, p1, p2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_2
    iget-object v0, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->S(Lj$/time/LocalDate;)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lj$/time/LocalDate;->G()J

    move-result-wide v4

    invoke-virtual {v1}, Lj$/time/LocalDate;->G()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    :goto_2
    iget-object v1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-object v4, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v1, v4}, Lj$/time/j;->S(Lj$/time/j;)I

    move-result v1

    if-gez v1, :cond_4

    invoke-virtual {v0, v2, v3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-object v1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p1, v1}, Lj$/time/j;->S(Lj$/time/j;)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0, v2, v3}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    :cond_5
    :goto_3
    iget-object p1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0, p2}, Lj$/time/LocalDate;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_6
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
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
    sget-object v0, Lj$/time/temporal/p;->f:Lj$/time/f;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->r(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lj$/time/LocalDateTime;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-short v1, v0, Lj$/time/LocalDate;->c:S

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lj$/time/LocalDate;->a:I

    iget-short v0, v0, Lj$/time/LocalDate;->b:S

    invoke-static {v1, v0, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, v0, p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0, p1}, Lj$/time/j;->h0(I)Lj$/time/j;

    move-result-object p1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {p0, v0, p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lj$/time/LocalDateTime;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-byte v1, v0, Lj$/time/j;->b:B

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->F(J)V

    iget-byte v1, v0, Lj$/time/j;->a:B

    iget-byte v2, v0, Lj$/time/j;->c:B

    iget v0, v0, Lj$/time/j;->d:I

    invoke-static {v1, p1, v2, v0}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {p0, p1, v0}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lj$/time/LocalDateTime;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    iget-short v1, v0, Lj$/time/LocalDate;->b:S

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->F(J)V

    iget v1, v0, Lj$/time/LocalDate;->a:I

    iget-short v0, v0, Lj$/time/LocalDate;->c:S

    invoke-static {v1, p1, v0}, Lj$/time/LocalDate;->j0(III)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, v0, p1}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lj$/time/LocalDateTime;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    iget-byte v1, v0, Lj$/time/j;->c:B

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->F(J)V

    iget-byte v1, v0, Lj$/time/j;->a:B

    iget-byte v2, v0, Lj$/time/j;->b:B

    iget v0, v0, Lj$/time/j;->d:I

    invoke-static {v1, v2, p1, v0}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {p0, p1, v0}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->m0(I)Lj$/time/LocalDate;

    move-result-object p1

    iget-object v0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {p0, p1, v0}, Lj$/time/LocalDateTime;->a0(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method
