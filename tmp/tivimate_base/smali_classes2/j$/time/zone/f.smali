.class public final Lj$/time/zone/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final i:[J

.field public static final j:[Lj$/time/zone/e;

.field public static final k:[Lj$/time/LocalDateTime;

.field public static final l:[Lj$/time/zone/b;

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field public final a:[J

.field public final b:[Lj$/time/ZoneOffset;

.field public final c:[J

.field public final d:[Lj$/time/LocalDateTime;

.field public final e:[Lj$/time/ZoneOffset;

.field public final f:[Lj$/time/zone/e;

.field public final g:Ljava/util/TimeZone;

.field public final transient h:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Lj$/time/zone/f;->i:[J

    new-array v1, v0, [Lj$/time/zone/e;

    sput-object v1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    new-array v1, v0, [Lj$/time/LocalDateTime;

    sput-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    new-array v0, v0, [Lj$/time/zone/b;

    sput-object v0, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    return-void
.end method

.method public constructor <init>(Lj$/time/ZoneOffset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lj$/time/zone/f;->i:[J

    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    iput-object p1, p0, Lj$/time/zone/f;->c:[J

    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    sget-object p1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/zone/f;->i:[J

    iput-object v1, p0, Lj$/time/zone/f;->a:[J

    iput-object v1, p0, Lj$/time/zone/f;->c:[J

    sget-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object v1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    sget-object v0, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object v0, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/e;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    iput-object p2, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    iput-object p3, p0, Lj$/time/zone/f;->c:[J

    iput-object p4, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    iput-object p5, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length p1, p3

    if-nez p1, :cond_0

    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_2

    aget-object p5, p4, p2

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p4, v0

    new-instance v2, Lj$/time/zone/b;

    aget-wide v3, p3, p2

    invoke-direct {v2, v3, v4, p5, v1}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    invoke-virtual {v2}, Lj$/time/zone/b;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v2, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v2, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    iget-object p5, v2, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget p5, p5, Lj$/time/ZoneOffset;->b:I

    iget-object v1, v2, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr p5, v1

    int-to-long v1, p5

    invoke-virtual {p2, v1, v2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p2, v2, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    iget-object p5, v2, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget p5, p5, Lj$/time/ZoneOffset;->b:I

    iget-object v1, v2, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr p5, v1

    int-to-long v3, p5

    invoke-virtual {p2, v3, v4}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v2, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lj$/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p1, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    invoke-virtual {p1}, Lj$/time/zone/b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->U(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    return-object p0

    :cond_0
    iget-object v0, p1, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    iget-object v1, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    iget-object v2, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v2, v2, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->U(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->U(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    return-object p0

    :cond_3
    iget-object v0, p1, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    iget-object v1, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget v1, v1, Lj$/time/ZoneOffset;->b:I

    iget-object v2, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v2, v2, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->U(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    return-object p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static c(JLj$/time/ZoneOffset;)I
    .locals 2

    iget p2, p2, Lj$/time/ZoneOffset;->b:I

    int-to-long v0, p2

    add-long/2addr p0, v0

    const p2, 0x15180

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lj$/time/LocalDate;->d0(J)Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result p0

    return p0
.end method

.method public static h(I)Lj$/time/ZoneOffset;
    .locals 0

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Lj$/time/ZoneOffset;->b0(I)Lj$/time/ZoneOffset;

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

    .prologue
    new-instance v0, Lj$/time/zone/a;

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1, p0}, Lj$/time/zone/a;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final b(I)[Lj$/time/zone/b;
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lj$/time/zone/b;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    iget-object v4, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    const/16 v5, 0x834

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_9

    const/16 v4, 0x708

    if-ge v1, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v4, v1, -0x1

    sget-object v10, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    const/16 v10, 0xc

    const/16 v11, 0x1f

    invoke-static {v4, v10, v11}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v4

    sget-object v10, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v11, v8

    invoke-virtual {v10, v11, v12}, Lj$/time/temporal/a;->F(J)V

    sget-object v10, Lj$/time/j;->h:[Lj$/time/j;

    aget-object v10, v10, v8

    new-instance v11, Lj$/time/LocalDateTime;

    invoke-direct {v11, v4, v10}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/j;)V

    iget-object v4, v0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object v4, v4, v8

    invoke-static {v11, v4}, Lj$/com/android/tools/r8/a;->u(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v10

    iget-object v4, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    const-wide/16 v12, 0x3e8

    mul-long v14, v10, v12

    invoke-virtual {v4, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    const-wide/32 v14, 0x1e7cb00

    add-long/2addr v14, v10

    :goto_0
    cmp-long v8, v10, v14

    if-gez v8, :cond_7

    const-wide/32 v16, 0x76a700

    add-long v16, v10, v16

    iget-object v8, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    move-wide/from16 v18, v12

    mul-long v12, v16, v18

    invoke-virtual {v8, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-eq v4, v8, :cond_6

    :goto_1
    sub-long v12, v16, v10

    cmp-long v8, v12, v6

    if-lez v8, :cond_3

    add-long v12, v16, v10

    const-wide/16 v6, 0x2

    invoke-static {v12, v13, v6, v7}, Lj$/com/android/tools/r8/a;->U(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    mul-long v12, v6, v18

    invoke-virtual {v8, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, v4, :cond_2

    move-wide v10, v6

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v6

    :goto_2
    const-wide/16 v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    mul-long v12, v10, v18

    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    if-eq v6, v4, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v10, v16

    :goto_3
    invoke-static {v4}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v4

    iget-object v6, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    mul-long v12, v10, v18

    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    invoke-static {v6}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result v8

    if-ne v8, v1, :cond_5

    array-length v8, v2

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/time/zone/b;

    array-length v8, v2

    sub-int/2addr v8, v9

    new-instance v12, Lj$/time/zone/b;

    invoke-direct {v12, v10, v11, v4, v7}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v12, v2, v8

    :cond_5
    move v4, v6

    goto :goto_4

    :cond_6
    move-wide/from16 v10, v16

    :goto_4
    move-wide/from16 v12, v18

    const-wide/16 v6, 0x1

    goto :goto_0

    :cond_7
    const/16 v4, 0x77c

    if-gt v4, v1, :cond_8

    if-ge v1, v5, :cond_8

    iget-object v1, v0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v2

    :cond_9
    iget-object v2, v0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v4, v2

    new-array v4, v4, [Lj$/time/zone/b;

    move v6, v8

    :goto_5
    array-length v7, v2

    if-ge v6, v7, :cond_f

    aget-object v7, v2, v6

    iget-byte v10, v7, Lj$/time/zone/e;->b:B

    const-string v11, "month"

    if-gez v10, :cond_a

    iget-object v10, v7, Lj$/time/zone/e;->a:Lj$/time/l;

    sget-object v12, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    int-to-long v13, v1

    invoke-virtual {v12, v13, v14}, Lj$/time/chrono/q;->R(J)Z

    move-result v12

    invoke-virtual {v10, v12}, Lj$/time/l;->T(Z)I

    move-result v12

    add-int/2addr v12, v9

    iget-byte v15, v7, Lj$/time/zone/e;->b:B

    add-int/2addr v12, v15

    sget-object v15, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    sget-object v15, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v15, v13, v14}, Lj$/time/temporal/a;->F(J)V

    invoke-static {v10, v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v11, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v13, v12

    invoke-virtual {v11, v13, v14}, Lj$/time/temporal/a;->F(J)V

    invoke-virtual {v10}, Lj$/time/l;->getValue()I

    move-result v10

    invoke-static {v1, v10, v12}, Lj$/time/LocalDate;->T(III)Lj$/time/LocalDate;

    move-result-object v10

    iget-object v11, v7, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lj$/time/DayOfWeek;->getValue()I

    move-result v11

    new-instance v12, Lj$/time/temporal/m;

    invoke-direct {v12, v11, v9}, Lj$/time/temporal/m;-><init>(II)V

    invoke-virtual {v10, v12}, Lj$/time/LocalDate;->l0(Lj$/time/temporal/l;)Lj$/time/LocalDate;

    move-result-object v10

    goto :goto_6

    :cond_a
    iget-object v12, v7, Lj$/time/zone/e;->a:Lj$/time/l;

    sget-object v13, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v14, v1

    invoke-virtual {v13, v14, v15}, Lj$/time/temporal/a;->F(J)V

    invoke-static {v12, v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v11, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v13, v10

    invoke-virtual {v11, v13, v14}, Lj$/time/temporal/a;->F(J)V

    invoke-virtual {v12}, Lj$/time/l;->getValue()I

    move-result v11

    invoke-static {v1, v11, v10}, Lj$/time/LocalDate;->T(III)Lj$/time/LocalDate;

    move-result-object v10

    iget-object v11, v7, Lj$/time/zone/e;->c:Lj$/time/DayOfWeek;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lj$/time/DayOfWeek;->getValue()I

    move-result v11

    new-instance v12, Lj$/time/temporal/m;

    invoke-direct {v12, v11, v8}, Lj$/time/temporal/m;-><init>(II)V

    invoke-virtual {v10, v12}, Lj$/time/LocalDate;->l0(Lj$/time/temporal/l;)Lj$/time/LocalDate;

    move-result-object v10

    :cond_b
    :goto_6
    iget-boolean v11, v7, Lj$/time/zone/e;->e:Z

    if-eqz v11, :cond_c

    const-wide/16 v11, 0x1

    invoke-virtual {v10, v11, v12}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v10

    goto :goto_7

    :cond_c
    const-wide/16 v11, 0x1

    :goto_7
    iget-object v13, v7, Lj$/time/zone/e;->d:Lj$/time/j;

    invoke-static {v10, v13}, Lj$/time/LocalDateTime;->V(Lj$/time/LocalDate;Lj$/time/j;)Lj$/time/LocalDateTime;

    move-result-object v10

    iget-object v13, v7, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    iget-object v14, v7, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    iget-object v15, v7, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lj$/time/zone/c;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v16, v13

    if-eq v13, v9, :cond_e

    const/4 v8, 0x2

    if-eq v13, v8, :cond_d

    goto :goto_8

    :cond_d
    iget v8, v15, Lj$/time/ZoneOffset;->b:I

    iget v13, v14, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v8, v13

    int-to-long v13, v8

    invoke-virtual {v10, v13, v14}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v10

    goto :goto_8

    :cond_e
    iget v8, v15, Lj$/time/ZoneOffset;->b:I

    sget-object v13, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    iget v13, v13, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v8, v13

    int-to-long v13, v8

    invoke-virtual {v10, v13, v14}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v10

    :goto_8
    new-instance v8, Lj$/time/zone/b;

    iget-object v13, v7, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    iget-object v7, v7, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-direct {v8, v10, v13, v7}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_f
    if-ge v1, v5, :cond_10

    iget-object v1, v0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v4
.end method

.method public final d(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .locals 7

    .prologue
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    :cond_1
    iget-wide v3, p1, Lj$/time/Instant;->a:J

    iget-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length p1, p1

    if-lez p1, :cond_4

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-wide v5, v0, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    iget-object p1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {v3, v4, p1}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result p1

    invoke-virtual {p0, p1}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_3

    aget-object v0, p1, v2

    iget-wide v5, v0, Lj$/time/zone/b;->a:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    iget-object p1, v0, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, v0, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    return-object p1

    :cond_4
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_5
    iget-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e(Lj$/time/LocalDateTime;)Ljava/lang/Object;
    .locals 7

    .prologue
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_0

    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lj$/com/android/tools/r8/a;->u(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    invoke-static {p1, v1}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/time/zone/b;

    if-nez v5, :cond_2

    iget-object v1, v1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v0, v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    :cond_5
    iget-object v0, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->S(Lj$/time/LocalDateTime;)I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalDate;->G()J

    move-result-wide v3

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalDate;->G()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_7

    if-nez v3, :cond_b

    iget-object v3, p1, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v3}, Lj$/time/j;->e0()J

    move-result-wide v3

    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/j;

    invoke-virtual {v0}, Lj$/time/j;->e0()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_b

    :cond_7
    :goto_2
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v0

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    invoke-static {p1, v1}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/time/zone/b;

    if-nez v5, :cond_9

    iget-object v1, v1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_3

    :cond_9
    :goto_4
    return-object v4

    :cond_a
    return-object v1

    :cond_b
    iget-object v0, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    :cond_c
    if-gez p1, :cond_d

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_e

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move p1, v2

    :cond_e
    :goto_5
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    div-int/lit8 p1, p1, 0x2

    aget-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v2, p1

    iget v2, p1, Lj$/time/ZoneOffset;->b:I

    iget v4, v3, Lj$/time/ZoneOffset;->b:I

    if-le v2, v4, :cond_f

    new-instance v0, Lj$/time/zone/b;

    invoke-direct {v0, v1, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0

    :cond_f
    new-instance v1, Lj$/time/zone/b;

    invoke-direct {v1, v0, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v1

    :cond_10
    iget-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/zone/f;

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    iget-object v3, p1, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    iget-object v3, p1, Lj$/time/zone/f;->a:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    iget-object v3, p1, Lj$/time/zone/f;->c:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    iget-object p1, p1, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f(Lj$/time/LocalDateTime;)Ljava/util/List;
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Lj$/time/zone/f;->e(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lj$/time/zone/b;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/zone/b;

    invoke-virtual {p1}, Lj$/time/zone/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lj$/com/android/tools/r8/a;->Q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/Instant;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lj$/time/Instant;->a:J

    iget-object v2, p0, Lj$/time/zone/f;->a:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    :cond_2
    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    const-string v1, "]"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[timeZone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[currentStandardOffset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
