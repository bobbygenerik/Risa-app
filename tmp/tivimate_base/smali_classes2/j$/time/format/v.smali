.class public final Lj$/time/format/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj$/time/format/DateTimeFormatter;

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lj$/time/format/DateTimeFormatter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/time/format/v;->b:Z

    iput-boolean v0, p0, Lj$/time/format/v;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/v;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/time/format/v;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lj$/time/format/v;->a:Lj$/time/format/DateTimeFormatter;

    new-instance p1, Lj$/time/format/D;

    invoke-direct {p1}, Lj$/time/format/D;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(CC)Z
    .locals 2

    .prologue
    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(CC)Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lj$/time/format/v;->b:Z

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {p1, p2}, Lj$/time/format/v;->b(CC)Z

    move-result p1

    return p1
.end method

.method public final c()Lj$/time/format/D;
    .locals 2

    iget-object v0, p0, Lj$/time/format/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/D;

    return-object v0
.end method

.method public final d(Lj$/time/temporal/a;)Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/D;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public final e(Lj$/time/ZoneId;)V
    .locals 1

    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v0

    iput-object p1, v0, Lj$/time/format/D;->b:Lj$/time/ZoneId;

    return-void
.end method

.method public final f(Lj$/time/temporal/o;JII)I
    .locals 2

    .prologue
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/D;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_0

    not-int p1, p4

    return p1

    :cond_0
    return p5
.end method

.method public final g(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    .prologue
    add-int v0, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_5

    add-int v0, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lj$/time/format/v;->b:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-ge v0, p5, :cond_4

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-ge v0, p5, :cond_4

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj$/time/format/v;->c()Lj$/time/format/D;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/D;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
