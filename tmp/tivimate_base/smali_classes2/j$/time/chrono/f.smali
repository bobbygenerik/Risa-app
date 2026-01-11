.class public final Lj$/time/chrono/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:I = 0x0

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field public final a:Lj$/time/chrono/j;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->Q([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lj$/time/chrono/j;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chrono"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    iput p2, p0, Lj$/time/chrono/f;->b:I

    iput p3, p0, Lj$/time/chrono/f;->c:I

    iput p4, p0, Lj$/time/chrono/f;->d:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/chrono/f;

    iget v1, p0, Lj$/time/chrono/f;->b:I

    iget v3, p1, Lj$/time/chrono/f;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/chrono/f;->c:I

    iget v3, p1, Lj$/time/chrono/f;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/chrono/f;->d:I

    iget v3, p1, Lj$/time/chrono/f;->d:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    iget-object p1, p1, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v1, p1}, Lj$/time/chrono/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lj$/time/chrono/f;->b:I

    iget v1, p0, Lj$/time/chrono/f;->c:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lj$/time/chrono/f;->d:I

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v1}, Lj$/time/chrono/j;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5

    .prologue
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/temporal/p;->b:Lj$/time/f;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->w(Lj$/time/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v1, v0}, Lj$/time/chrono/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/b;

    iget-object v1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v1}, Lj$/time/chrono/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lj$/time/chrono/j;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Chronology mismatch, expected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actual: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/chrono/f;->c:I

    if-nez v0, :cond_2

    iget v0, p0, Lj$/time/chrono/f;->b:I

    if-eqz v0, :cond_6

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Lj$/time/chrono/j;->t(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object v0

    iget-wide v1, v0, Lj$/time/temporal/r;->a:J

    iget-wide v3, v0, Lj$/time/temporal/r;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-wide v1, v0, Lj$/time/temporal/r;->c:J

    iget-wide v3, v0, Lj$/time/temporal/r;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lj$/time/temporal/r;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lj$/time/temporal/r;->d:J

    iget-wide v3, v0, Lj$/time/temporal/r;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_1

    :cond_3
    const-wide/16 v1, -0x1

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    iget v0, p0, Lj$/time/chrono/f;->b:I

    int-to-long v3, v0

    mul-long/2addr v3, v1

    iget v0, p0, Lj$/time/chrono/f;->c:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v3, v4, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget v0, p0, Lj$/time/chrono/f;->b:I

    if-eqz v0, :cond_5

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :cond_5
    iget v0, p0, Lj$/time/chrono/f;->c:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :cond_6
    :goto_2
    iget v0, p0, Lj$/time/chrono/f;->d:I

    if-eqz v0, :cond_7

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lj$/time/chrono/f;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/f;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/f;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v0}, Lj$/time/chrono/j;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " P0D"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/chrono/f;->a:Lj$/time/chrono/j;

    invoke-interface {v1}, Lj$/time/chrono/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/chrono/f;->b:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lj$/time/chrono/f;->c:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lj$/time/chrono/f;->d:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/chrono/C;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/C;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
