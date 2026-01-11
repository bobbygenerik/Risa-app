.class public final Lj$/time/format/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/e;


# instance fields
.field public final a:Lj$/time/temporal/o;

.field public final b:Lj$/time/format/TextStyle;

.field public final c:Lj$/time/format/B;

.field public volatile d:Lj$/time/format/i;


# direct methods
.method public constructor <init>(Lj$/time/temporal/o;Lj$/time/format/TextStyle;Lj$/time/format/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    iput-object p2, p0, Lj$/time/format/q;->b:Lj$/time/format/TextStyle;

    iput-object p3, p0, Lj$/time/format/q;->c:Lj$/time/format/B;

    return-void
.end method


# virtual methods
.method public final k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 10

    .prologue
    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    sget-object v3, Lj$/time/temporal/p;->b:Lj$/time/f;

    invoke-interface {v2, v3}, Lj$/time/temporal/TemporalAccessor;->w(Lj$/time/f;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lj$/time/chrono/j;

    if-eqz v4, :cond_1

    sget-object v2, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    if-ne v4, v2, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lj$/time/format/q;->c:Lj$/time/format/B;

    iget-object v5, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lj$/time/format/q;->b:Lj$/time/format/TextStyle;

    iget-object v9, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual/range {v3 .. v9}, Lj$/time/format/B;->b(Lj$/time/chrono/j;Lj$/time/temporal/o;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lj$/time/format/q;->c:Lj$/time/format/B;

    move-object v3, v2

    iget-object v2, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v3

    move-wide v3, v4

    iget-object v5, p0, Lj$/time/format/q;->b:Lj$/time/format/TextStyle;

    iget-object v6, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/B;->c(Lj$/time/temporal/o;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    if-nez v0, :cond_3

    new-instance v0, Lj$/time/format/i;

    iget-object v2, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    const/16 v3, 0x13

    sget-object v4, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;)V

    iput-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    :cond_3
    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    invoke-virtual {v0, p1, p2}, Lj$/time/format/i;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I
    .locals 10

    .prologue
    iget-object v1, p0, Lj$/time/format/q;->c:Lj$/time/format/B;

    iget-object v6, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz p3, :cond_a

    if-gt p3, v2, :cond_a

    iget-boolean v2, p1, Lj$/time/format/v;->c:Z

    iget-object v3, p1, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lj$/time/format/q;->b:Lj$/time/format/TextStyle;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v5

    iget-object v5, v5, Lj$/time/format/D;->c:Lj$/time/chrono/j;

    if-nez v5, :cond_1

    iget-object v5, p1, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    if-nez v5, :cond_1

    sget-object v5, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    :cond_1
    move-object v7, v5

    if-eqz v7, :cond_3

    sget-object v5, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    if-ne v7, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual {v1, v7, v6, v2, v3}, Lj$/time/format/B;->d(Lj$/time/chrono/j;Lj$/time/temporal/o;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    move-object v8, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v3, v3, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    invoke-virtual {v1, v6, v2, v3}, Lj$/time/format/B;->e(Lj$/time/temporal/o;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    :goto_3
    if-eqz v8, :cond_8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/v;->g(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/v;->f(Lj$/time/temporal/o;JII)I

    move-result v0

    return v0

    :cond_5
    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne v6, v1, :cond_7

    iget-boolean v1, p1, Lj$/time/format/v;->c:Z

    if-nez v1, :cond_7

    invoke-interface {v7}, Lj$/time/chrono/j;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lj$/time/chrono/k;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/v;->g(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-interface {v7}, Lj$/time/chrono/k;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/v;->f(Lj$/time/temporal/o;JII)I

    move-result v0

    return v0

    :cond_7
    iget-boolean v1, p1, Lj$/time/format/v;->c:Z

    if-eqz v1, :cond_8

    not-int v0, p3

    return v0

    :cond_8
    iget-object v1, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    if-nez v1, :cond_9

    new-instance v1, Lj$/time/format/i;

    iget-object v2, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    const/16 v3, 0x13

    sget-object v5, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6, v3, v5}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;)V

    iput-object v1, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    :cond_9
    iget-object v1, p0, Lj$/time/format/q;->d:Lj$/time/format/i;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/format/i;->l(Lj$/time/format/v;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    iget-object v4, p0, Lj$/time/format/q;->b:Lj$/time/format/TextStyle;

    if-ne v4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
