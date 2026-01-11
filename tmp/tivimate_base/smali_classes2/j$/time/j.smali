.class public final Lj$/time/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lj$/time/j;

.field public static final f:Lj$/time/j;

.field public static final g:Lj$/time/j;

.field public static final h:[Lj$/time/j;

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x18

    new-array v0, v0, [Lj$/time/j;

    sput-object v0, Lj$/time/j;->h:[Lj$/time/j;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lj$/time/j;->h:[Lj$/time/j;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lj$/time/j;

    invoke-direct {v3, v1, v0, v0, v0}, Lj$/time/j;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, v2, v0

    sput-object v0, Lj$/time/j;->g:Lj$/time/j;

    const/16 v1, 0xc

    aget-object v1, v2, v1

    sput-object v0, Lj$/time/j;->e:Lj$/time/j;

    new-instance v0, Lj$/time/j;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lj$/time/j;-><init>(IIII)V

    sput-object v0, Lj$/time/j;->f:Lj$/time/j;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    iput-byte p1, p0, Lj$/time/j;->a:B

    int-to-byte p1, p2

    iput-byte p1, p0, Lj$/time/j;->b:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lj$/time/j;->c:B

    iput p4, p0, Lj$/time/j;->d:I

    return-void
.end method

.method public static T(IIII)Lj$/time/j;
    .locals 1

    .prologue
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    sget-object p1, Lj$/time/j;->h:[Lj$/time/j;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/j;-><init>(IIII)V

    return-object v0
.end method

.method public static U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/j;
    .locals 4

    .prologue
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/temporal/p;->g:Lj$/time/f;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->w(Lj$/time/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static W(IIII)Lj$/time/j;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    invoke-static {p0, p1, p2, p3}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p0

    return-object p0
.end method

.method public static X(J)Lj$/time/j;
    .locals 7

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, p0, p1}, Lj$/time/temporal/a;->F(J)V

    const-wide v0, 0x34630b8a000L

    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide v0, 0xdf8475800L

    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {v2, v3, v4, p0}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/io/DataInput;)Lj$/time/j;
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    not-int v0, v0

    move p0, v1

    move v2, p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_1

    not-int p0, v2

    move v2, v1

    move v1, p0

    move p0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_2

    not-int p0, v3

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    move p0, v2

    move v2, v1

    move v1, p0

    move p0, v3

    :goto_0
    invoke-static {v0, v1, p0, v2}, Lj$/time/j;->W(IIII)Lj$/time/j;

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

    const/4 v1, 0x4

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

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->Y(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/j;->Y(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->Y(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/o;)J
    .locals 4

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lj$/time/j;->V(Lj$/time/temporal/o;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->w(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final S(Lj$/time/j;)I
    .locals 2

    .prologue
    iget-byte v0, p0, Lj$/time/j;->a:B

    iget-byte v1, p1, Lj$/time/j;->a:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lj$/time/j;->b:B

    iget-byte v1, p1, Lj$/time/j;->b:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lj$/time/j;->c:B

    iget-byte v1, p1, Lj$/time/j;->c:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/j;->d:I

    iget p1, p1, Lj$/time/j;->d:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final V(Lj$/time/temporal/o;)I
    .locals 4

    .prologue
    sget-object v0, Lj$/time/i;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/q;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte p1, p0, Lj$/time/j;->a:B

    div-int/2addr p1, v1

    return p1

    :pswitch_1
    iget-byte p1, p0, Lj$/time/j;->a:B

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    return p1

    :pswitch_2
    iget-byte p1, p0, Lj$/time/j;->a:B

    return p1

    :pswitch_3
    iget-byte p1, p0, Lj$/time/j;->a:B

    rem-int/2addr p1, v1

    rem-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_1

    return v1

    :cond_1
    return p1

    :pswitch_4
    iget-byte p1, p0, Lj$/time/j;->a:B

    rem-int/2addr p1, v1

    return p1

    :pswitch_5
    iget-byte p1, p0, Lj$/time/j;->a:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lj$/time/j;->b:B

    add-int/2addr p1, v0

    return p1

    :pswitch_6
    iget-byte p1, p0, Lj$/time/j;->b:B

    return p1

    :pswitch_7
    invoke-virtual {p0}, Lj$/time/j;->f0()I

    move-result p1

    return p1

    :pswitch_8
    iget-byte p1, p0, Lj$/time/j;->c:B

    return p1

    :pswitch_9
    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    :pswitch_a
    iget p1, p0, Lj$/time/j;->d:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    :pswitch_b
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_c
    iget p1, p0, Lj$/time/j;->d:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :pswitch_d
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    iget p1, p0, Lj$/time/j;->d:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public final Y(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;
    .locals 2

    .prologue
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/i;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

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
    const-wide/16 v0, 0x2

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->Z(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj$/time/j;->Z(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lj$/time/j;->a0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lj$/time/j;->c0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->b0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->b0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/j;->b0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/j;

    return-object p1

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

.method public final Z(J)Lj$/time/j;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x18

    rem-long/2addr p1, v0

    long-to-int p1, p1

    iget-byte p2, p0, Lj$/time/j;->a:B

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x18

    rem-int/lit8 p1, p1, 0x18

    iget-byte p2, p0, Lj$/time/j;->b:B

    iget-byte v0, p0, Lj$/time/j;->c:B

    iget v1, p0, Lj$/time/j;->d:I

    invoke-static {p1, p2, v0, v1}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final a0(J)Lj$/time/j;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lj$/time/j;->a:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lj$/time/j;->b:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    rem-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x5a0

    rem-int/lit16 p1, p1, 0x5a0

    if-ne v0, p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lj$/time/j;->c:B

    iget v1, p0, Lj$/time/j;->d:I

    invoke-static {p2, p1, v0, v1}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final b0(J)Lj$/time/j;
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    rem-long/2addr p1, v2

    add-long/2addr p1, v0

    add-long/2addr p1, v2

    rem-long/2addr p1, v2

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xdf8475800L

    div-long v1, p1, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/32 v5, 0x3b9aca00

    div-long v7, p1, v5

    rem-long/2addr v7, v3

    long-to-int v2, v7

    rem-long/2addr p1, v5

    long-to-int p1, p1

    invoke-static {v0, v1, v2, p1}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->g0(JLj$/time/temporal/o;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final c0(J)Lj$/time/j;
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lj$/time/j;->a:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lj$/time/j;->b:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    iget-byte v0, p0, Lj$/time/j;->c:B

    add-int/2addr v1, v0

    const-wide/32 v2, 0x15180

    rem-long/2addr p1, v2

    long-to-int p1, p1

    add-int/2addr p1, v1

    const p2, 0x15180

    add-int/2addr p1, p2

    rem-int/2addr p1, p2

    if-ne v1, p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    div-int/lit16 p2, p1, 0xe10

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget v1, p0, Lj$/time/j;->d:I

    invoke-static {p2, v0, p1, v1}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/j;

    invoke-virtual {p0, p1}, Lj$/time/j;->S(Lj$/time/j;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->Y(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->S()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->k(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e0()J
    .locals 6

    iget-byte v0, p0, Lj$/time/j;->a:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long/2addr v0, v2

    iget-byte v2, p0, Lj$/time/j;->b:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-byte v0, p0, Lj$/time/j;->c:B

    int-to-long v0, v0

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    iget v2, p0, Lj$/time/j;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/j;

    iget-byte v1, p0, Lj$/time/j;->a:B

    iget-byte v3, p1, Lj$/time/j;->a:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lj$/time/j;->b:B

    iget-byte v3, p1, Lj$/time/j;->b:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lj$/time/j;->c:B

    iget-byte v3, p1, Lj$/time/j;->c:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/j;->d:I

    iget p1, p1, Lj$/time/j;->d:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f0()I
    .locals 2

    iget-byte v0, p0, Lj$/time/j;->a:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lj$/time/j;->b:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    iget-byte v0, p0, Lj$/time/j;->c:B

    add-int/2addr v1, v0

    return v1
.end method

.method public final g0(JLj$/time/temporal/o;)Lj$/time/j;
    .locals 5

    .prologue
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->F(J)V

    sget-object v1, Lj$/time/i;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xc

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    const-string p2, "Unsupported field: "

    invoke-static {p2, p3}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-byte p3, p0, Lj$/time/j;->a:B

    div-int/lit8 p3, p3, 0xc

    int-to-long v0, p3

    sub-long/2addr p1, v0

    mul-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->Z(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v3, 0x18

    cmp-long p3, p1, v3

    if-nez p3, :cond_0

    move-wide p1, v1

    :cond_0
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lj$/time/j;->h0(I)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_2
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lj$/time/j;->h0(I)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_3
    cmp-long p3, p1, v3

    if-nez p3, :cond_1

    move-wide p1, v1

    :cond_1
    iget-byte p3, p0, Lj$/time/j;->a:B

    rem-int/lit8 p3, p3, 0xc

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->Z(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-byte p3, p0, Lj$/time/j;->a:B

    rem-int/lit8 p3, p3, 0xc

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->Z(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-byte p3, p0, Lj$/time/j;->a:B

    mul-int/lit8 p3, p3, 0x3c

    iget-byte v0, p0, Lj$/time/j;->b:B

    add-int/2addr p3, v0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->a0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_6
    long-to-int p1, p1

    iget-byte p2, p0, Lj$/time/j;->b:B

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lj$/time/temporal/a;->F(J)V

    iget-byte p2, p0, Lj$/time/j;->a:B

    iget-byte p3, p0, Lj$/time/j;->c:B

    iget v0, p0, Lj$/time/j;->d:I

    invoke-static {p2, p1, p3, v0}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lj$/time/j;->f0()I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/j;->c0(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_8
    long-to-int p1, p1

    iget-byte p2, p0, Lj$/time/j;->c:B

    if-ne p2, p1, :cond_3

    :goto_0
    return-object p0

    :cond_3
    sget-object p2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lj$/time/temporal/a;->F(J)V

    iget-byte p2, p0, Lj$/time/j;->a:B

    iget-byte p3, p0, Lj$/time/j;->b:B

    iget v0, p0, Lj$/time/j;->d:I

    invoke-static {p2, p3, p1, v0}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_a
    long-to-int p1, p1

    const p2, 0xf4240

    mul-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lj$/time/j;->i0(I)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lj$/time/j;->i0(I)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p1, p2}, Lj$/time/j;->X(J)Lj$/time/j;

    move-result-object p1

    return-object p1

    :pswitch_e
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lj$/time/j;->i0(I)Lj$/time/j;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/o;->B(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/j;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public final h0(I)Lj$/time/j;
    .locals 3

    .prologue
    iget-byte v0, p0, Lj$/time/j;->a:B

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    iget-byte v0, p0, Lj$/time/j;->b:B

    iget-byte v1, p0, Lj$/time/j;->c:B

    iget v2, p0, Lj$/time/j;->d:I

    invoke-static {p1, v0, v1, v2}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final i0(I)Lj$/time/j;
    .locals 3

    .prologue
    iget v0, p0, Lj$/time/j;->d:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)V

    iget-byte v0, p0, Lj$/time/j;->a:B

    iget-byte v1, p0, Lj$/time/j;->b:B

    iget-byte v2, p0, Lj$/time/j;->c:B

    invoke-static {v0, v1, v2, p1}, Lj$/time/j;->T(IIII)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final j0(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    iget v0, p0, Lj$/time/j;->d:I

    if-nez v0, :cond_2

    iget-byte v0, p0, Lj$/time/j;->c:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lj$/time/j;->b:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lj$/time/j;->a:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_0
    iget-byte v0, p0, Lj$/time/j;->a:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lj$/time/j;->b:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_1
    iget-byte v0, p0, Lj$/time/j;->a:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lj$/time/j;->b:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lj$/time/j;->c:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_2
    iget-byte v0, p0, Lj$/time/j;->a:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lj$/time/j;->b:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lj$/time/j;->c:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lj$/time/j;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public final k(Lj$/time/temporal/o;)I
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lj$/time/j;->V(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/p;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/LocalDate;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/j;

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

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-byte v1, p0, Lj$/time/j;->a:B

    iget-byte v2, p0, Lj$/time/j;->b:B

    iget-byte v3, p0, Lj$/time/j;->c:B

    iget v4, p0, Lj$/time/j;->d:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    const-string v6, ":0"

    if-ge v2, v5, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gtz v3, :cond_2

    if-lez v4, :cond_6

    :cond_2
    if-ge v3, v5, :cond_3

    move-object v1, v6

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v4, :cond_6

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xf4240

    rem-int v2, v4, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    div-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    rem-int/lit16 v2, v4, 0x3e8

    if-nez v2, :cond_5

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const v1, 0x3b9aca00

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 4

    .prologue
    invoke-static {p1}, Lj$/time/j;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/j;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/j;->e0()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/j;->e0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lj$/time/i;->b:[I

    move-object v2, p2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

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
    const-wide p1, 0x274a48a78000L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    const-wide p1, 0x34630b8a000L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_2
    const-wide p1, 0xdf8475800L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_4
    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_5
    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    :pswitch_6
    return-wide v0

    :cond_0
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

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

.method public final w(Lj$/time/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/p;->b:Lj$/time/f;

    if-eq p1, v0, :cond_4

    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/f;

    if-eq p1, v0, :cond_4

    sget-object v0, Lj$/time/temporal/p;->e:Lj$/time/f;

    if-eq p1, v0, :cond_4

    sget-object v0, Lj$/time/temporal/p;->d:Lj$/time/f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/temporal/p;->g:Lj$/time/f;

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lj$/time/temporal/p;->f:Lj$/time/f;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lj$/time/temporal/p;->c:Lj$/time/f;

    if-ne p1, v0, :cond_3

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_3
    invoke-virtual {p1, p0}, Lj$/time/f;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
