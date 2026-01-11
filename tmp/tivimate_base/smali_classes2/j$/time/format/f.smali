.class public final Lj$/time/format/f;
.super Lj$/time/format/i;
.source "SourceFile"


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Lj$/time/temporal/o;IIZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/o;IIZI)V

    const-string p1, "field"

    invoke-static {v1, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1}, Lj$/time/temporal/o;->q()Lj$/time/temporal/r;

    move-result-object p1

    iget-wide p2, p1, Lj$/time/temporal/r;->a:J

    iget-wide v4, p1, Lj$/time/temporal/r;->b:J

    cmp-long p2, p2, v4

    if-nez p2, :cond_3

    iget-wide p2, p1, Lj$/time/temporal/r;->c:J

    iget-wide v4, p1, Lj$/time/temporal/r;->d:J

    cmp-long p1, p2, v4

    if-nez p1, :cond_3

    if-ltz v2, :cond_2

    const/16 p1, 0x9

    if-gt v2, p1, :cond_2

    const/4 p2, 0x1

    if-lt v3, p2, :cond_1

    if-gt v3, p1, :cond_1

    if-lt v3, v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must have a fixed set of values: "

    invoke-static {p2, v1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lj$/time/temporal/o;IIZI)V
    .locals 6

    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;I)V

    iput-boolean p4, v0, Lj$/time/format/f;->g:Z

    return-void
.end method


# virtual methods
.method public final b(Lj$/time/format/v;)Z
    .locals 1

    .prologue
    iget-boolean p1, p1, Lj$/time/format/v;->c:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lj$/time/format/i;->b:I

    iget v0, p0, Lj$/time/format/i;->c:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lj$/time/format/f;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lj$/time/format/i;
    .locals 8

    .prologue
    iget v0, p0, Lj$/time/format/i;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lj$/time/format/f;

    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    iget v4, p0, Lj$/time/format/i;->b:I

    iget v5, p0, Lj$/time/format/i;->c:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/f;-><init>(Lj$/time/temporal/o;IIZI)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/i;
    .locals 6

    new-instance v0, Lj$/time/format/f;

    iget v1, p0, Lj$/time/format/i;->e:I

    add-int v5, v1, p1

    iget-object v1, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    iget v2, p0, Lj$/time/format/i;->b:I

    iget v3, p0, Lj$/time/format/i;->c:I

    iget-boolean v4, p0, Lj$/time/format/f;->g:Z

    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/o;IIZI)V

    return-object v0
.end method

.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    iget-object v0, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/C;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0}, Lj$/time/temporal/o;->q()Lj$/time/temporal/r;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/o;)V

    iget-wide v5, v1, Lj$/time/temporal/r;->a:J

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget-wide v5, v1, Lj$/time/temporal/r;->d:J

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0x2e

    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    iget v7, p0, Lj$/time/format/i;->b:I

    if-nez v0, :cond_5

    if-lez v7, :cond_4

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    if-ge v2, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lj$/time/format/i;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method

.method public final l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    iget-boolean v0, p1, Lj$/time/format/v;->c:Z

    iget-object v1, p1, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/format/i;->b:I

    :goto_1
    iget-boolean v3, p1, Lj$/time/format/v;->c:Z

    const/16 v4, 0x9

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/v;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_3

    :cond_3
    :goto_2
    iget v3, p0, Lj$/time/format/i;->c:I

    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne p3, v5, :cond_4

    if-lez v0, :cond_5

    not-int p1, p3

    return p1

    :cond_4
    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    if-eqz v6, :cond_7

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, v1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/C;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_6

    if-lez v0, :cond_5

    not-int p1, p3

    return p1

    :cond_5
    return p3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    :cond_7
    move v10, p3

    add-int/2addr v0, v10

    if-le v0, v5, :cond_8

    not-int p1, v10

    return p1

    :cond_8
    add-int/2addr v3, v10

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v3, v2

    move v11, v10

    :goto_4
    if-ge v11, p3, :cond_b

    add-int/lit8 v5, v11, 0x1

    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, v1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/C;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, -0x30

    if-ltz v6, :cond_9

    if-gt v6, v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v6, -0x1

    :goto_5
    if-gez v6, :cond_a

    if-ge v5, v0, :cond_b

    not-int p1, v10

    return p1

    :cond_a
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    move v11, v5

    goto :goto_4

    :cond_b
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int p3, v11, v10

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p2

    iget-object p3, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-interface {p3}, Lj$/time/temporal/o;->q()Lj$/time/temporal/r;

    move-result-object p3

    iget-wide v0, p3, Lj$/time/temporal/r;->a:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget-wide v3, p3, Lj$/time/temporal/r;->d:J

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p2, v2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v8

    iget-object v7, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lj$/time/format/v;->f(Lj$/time/temporal/o;JII)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget-boolean v0, p0, Lj$/time/format/f;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fraction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/i;->a:Lj$/time/temporal/o;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/i;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/i;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
