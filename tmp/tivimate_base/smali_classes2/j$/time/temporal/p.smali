.class public abstract Lj$/time/temporal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/time/f;

.field public static final b:Lj$/time/f;

.field public static final c:Lj$/time/f;

.field public static final d:Lj$/time/f;

.field public static final e:Lj$/time/f;

.field public static final f:Lj$/time/f;

.field public static final g:Lj$/time/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/time/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->a:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->b:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->c:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->d:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->e:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->f:Lj$/time/f;

    new-instance v0, Lj$/time/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/temporal/p;->g:Lj$/time/f;

    return-void
.end method

.method public static a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)I
    .locals 5

    .prologue
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/r;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->F(Lj$/time/temporal/o;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/r;->e(J)Z

    move-result p0

    if-eqz p0, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    new-instance p0, Lj$/time/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lj$/time/temporal/q;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p0

    const-wide/16 p1, 0x1

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p0

    return-object p0

    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method

.method public static c(Lj$/time/temporal/TemporalAccessor;Lj$/time/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/p;->b:Lj$/time/f;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/p;->c:Lj$/time/f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lj$/time/f;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 1

    .prologue
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    iget-object p0, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-object p0

    :cond_0
    new-instance p0, Lj$/time/temporal/q;

    const-string v0, "Unsupported field: "

    invoke-static {v0, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/o;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(I)I
    .locals 1

    .prologue
    rem-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    return v0
.end method
