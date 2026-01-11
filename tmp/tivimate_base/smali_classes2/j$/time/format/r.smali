.class public final Lj$/time/format/r;
.super Lj$/time/format/i;
.source "SourceFile"


# instance fields
.field public final g:C

.field public final h:I


# direct methods
.method public constructor <init>(CIIII)V
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;I)V

    iput-char p1, v0, Lj$/time/format/r;->g:C

    iput p2, v0, Lj$/time/format/r;->h:I

    return-void
.end method


# virtual methods
.method public final d()Lj$/time/format/i;
    .locals 8

    .prologue
    iget v0, p0, Lj$/time/format/i;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lj$/time/format/r;

    iget v6, p0, Lj$/time/format/i;->c:I

    const/4 v7, -0x1

    iget-char v3, p0, Lj$/time/format/r;->g:C

    iget v4, p0, Lj$/time/format/r;->h:I

    iget v5, p0, Lj$/time/format/i;->b:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/r;-><init>(CIIII)V

    return-object v2
.end method

.method public final e(I)Lj$/time/format/i;
    .locals 6

    new-instance v0, Lj$/time/format/r;

    iget v1, p0, Lj$/time/format/i;->e:I

    add-int v5, v1, p1

    iget-char v1, p0, Lj$/time/format/r;->g:C

    iget v2, p0, Lj$/time/format/r;->h:I

    iget v3, p0, Lj$/time/format/i;->b:I

    iget v4, p0, Lj$/time/format/i;->c:I

    invoke-direct/range {v0 .. v5}, Lj$/time/format/r;-><init>(CIIII)V

    return-object v0
.end method

.method public final f(Ljava/util/Locale;)Lj$/time/format/i;
    .locals 6

    .prologue
    invoke-static {p1}, Lj$/time/temporal/WeekFields;->of(Ljava/util/Locale;)Lj$/time/temporal/WeekFields;

    move-result-object p1

    const/16 v0, 0x57

    iget-char v1, p0, Lj$/time/format/r;->g:C

    if-eq v1, v0, :cond_5

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    const/16 v0, 0x77

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lj$/time/temporal/WeekFields;->e:Lj$/time/temporal/s;

    :goto_0
    move-object v1, p1

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p1, Lj$/time/temporal/WeekFields;->c:Lj$/time/temporal/s;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lj$/time/temporal/WeekFields;->f:Lj$/time/temporal/s;

    const/4 p1, 0x2

    iget v2, p0, Lj$/time/format/r;->h:I

    if-ne v2, p1, :cond_3

    new-instance v0, Lj$/time/format/o;

    sget-object v4, Lj$/time/format/o;->h:Lj$/time/LocalDate;

    iget v5, p0, Lj$/time/format/i;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lj$/time/format/o;-><init>(Lj$/time/temporal/o;IILj$/time/chrono/ChronoLocalDate;I)V

    return-object v0

    :cond_3
    new-instance v0, Lj$/time/format/i;

    const/4 p1, 0x4

    if-ge v2, p1, :cond_4

    sget-object p1, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_4
    sget-object p1, Lj$/time/format/F;->EXCEEDS_PAD:Lj$/time/format/F;

    goto :goto_1

    :goto_2
    iget v5, p0, Lj$/time/format/i;->e:I

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;I)V

    return-object v0

    :cond_5
    iget-object p1, p1, Lj$/time/temporal/WeekFields;->d:Lj$/time/temporal/s;

    goto :goto_0

    :goto_3
    new-instance v0, Lj$/time/format/i;

    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    iget v5, p0, Lj$/time/format/i;->e:I

    iget v2, p0, Lj$/time/format/i;->b:I

    iget v3, p0, Lj$/time/format/i;->c:I

    invoke-direct/range {v0 .. v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;I)V

    return-object v0
.end method

.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    iget-object v0, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lj$/time/format/r;->f(Ljava/util/Locale;)Lj$/time/format/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/format/i;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I
    .locals 1

    iget-object v0, p1, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lj$/time/format/r;->f(Ljava/util/Locale;)Lj$/time/format/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/i;->l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    iget v2, p0, Lj$/time/format/r;->h:I

    iget-char v3, p0, Lj$/time/format/r;->g:C

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",19,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-ge v2, v1, :cond_2

    sget-object v1, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/time/format/F;->EXCEEDS_PAD:Lj$/time/format/F;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x57

    if-eq v3, v1, :cond_6

    const/16 v1, 0x63

    if-eq v3, v1, :cond_5

    const/16 v1, 0x65

    if-eq v3, v1, :cond_5

    const/16 v1, 0x77

    if-eq v3, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
