.class public final enum Lj$/time/chrono/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/k;


# static fields
.field public static final enum BCE:Lj$/time/chrono/r;

.field public static final enum CE:Lj$/time/chrono/r;

.field public static final synthetic a:[Lj$/time/chrono/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj$/time/chrono/r;

    const-string v1, "BCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/chrono/r;->BCE:Lj$/time/chrono/r;

    new-instance v1, Lj$/time/chrono/r;

    const-string v3, "CE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/chrono/r;->CE:Lj$/time/chrono/r;

    const/4 v3, 0x2

    new-array v3, v3, [Lj$/time/chrono/r;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/r;
    .locals 1

    const-class v0, Lj$/time/chrono/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/r;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/r;
    .locals 1

    sget-object v0, Lj$/time/chrono/r;->a:[Lj$/time/chrono/r;

    invoke-virtual {v0}, [Lj$/time/chrono/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/r;

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

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final synthetic k(Lj$/time/temporal/o;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/time/chrono/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/temporal/r;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/p;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/o;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/r;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/o;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic w(Lj$/time/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->t(Lj$/time/chrono/k;Lj$/time/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
