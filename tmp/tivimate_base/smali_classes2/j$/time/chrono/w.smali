.class public final Lj$/time/chrono/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/k;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/w;

.field public static final e:[Lj$/time/chrono/w;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field public final transient a:I

.field public final transient b:Lj$/time/LocalDate;

.field public final transient c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lj$/time/chrono/w;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Meiji"

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v3}, Lj$/time/chrono/w;-><init>(ILj$/time/LocalDate;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/w;->d:Lj$/time/chrono/w;

    new-instance v1, Lj$/time/chrono/w;

    const/4 v3, 0x7

    const/16 v4, 0x1e

    const/16 v5, 0x778

    invoke-static {v5, v3, v4}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v3

    const-string v4, "Taisho"

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Lj$/time/chrono/w;-><init>(ILj$/time/LocalDate;Ljava/lang/String;)V

    new-instance v3, Lj$/time/chrono/w;

    const/16 v4, 0xc

    const/16 v6, 0x19

    const/16 v7, 0x786

    invoke-static {v7, v4, v6}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v4

    const-string v6, "Showa"

    invoke-direct {v3, v2, v4, v6}, Lj$/time/chrono/w;-><init>(ILj$/time/LocalDate;Ljava/lang/String;)V

    new-instance v4, Lj$/time/chrono/w;

    const/16 v6, 0x7c5

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v6

    const-string v7, "Heisei"

    const/4 v8, 0x2

    invoke-direct {v4, v8, v6, v7}, Lj$/time/chrono/w;-><init>(ILj$/time/LocalDate;Ljava/lang/String;)V

    new-instance v6, Lj$/time/chrono/w;

    const/16 v7, 0x7e3

    const/4 v9, 0x5

    invoke-static {v7, v9, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v7

    const-string v10, "Reiwa"

    const/4 v11, 0x3

    invoke-direct {v6, v11, v7, v10}, Lj$/time/chrono/w;-><init>(ILj$/time/LocalDate;Ljava/lang/String;)V

    new-array v7, v9, [Lj$/time/chrono/w;

    sput-object v7, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    aput-object v0, v7, v5

    aput-object v1, v7, v2

    aput-object v3, v7, v8

    aput-object v4, v7, v11

    const/4 v0, 0x4

    aput-object v6, v7, v0

    return-void
.end method

.method public constructor <init>(ILj$/time/LocalDate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/chrono/w;->a:I

    iput-object p2, p0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    iput-object p3, p0, Lj$/time/chrono/w;->c:Ljava/lang/String;

    return-void
.end method

.method public static i(Lj$/time/LocalDate;)Lj$/time/chrono/w;
    .locals 3

    .prologue
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    aget-object v1, v1, v0

    iget-object v2, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->Q(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Lj$/time/b;

    const-string v0, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(I)Lj$/time/chrono/w;
    .locals 3

    .prologue
    add-int/lit8 v0, p0, 0x1

    if-ltz v0, :cond_0

    sget-object v1, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic F(Lj$/time/temporal/o;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->m(Lj$/time/chrono/k;Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic e(Lj$/time/temporal/o;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->p(Lj$/time/chrono/k;Lj$/time/temporal/o;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    iget v0, p0, Lj$/time/chrono/w;->a:I

    return v0
.end method

.method public final j()Lj$/time/chrono/w;
    .locals 2

    .prologue
    sget-object v0, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lj$/time/chrono/w;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/time/chrono/w;->n(I)Lj$/time/chrono/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k(Lj$/time/temporal/o;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/time/chrono/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {p1, v0}, Lj$/time/chrono/t;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/w;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic w(Lj$/time/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->t(Lj$/time/chrono/k;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
