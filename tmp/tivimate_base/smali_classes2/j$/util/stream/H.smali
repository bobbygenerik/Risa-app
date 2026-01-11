.class public final Lj$/util/stream/H;
.super Lj$/util/stream/I;
.source "SourceFile"


# static fields
.field public static final c:Lj$/util/stream/D;

.field public static final d:Lj$/util/stream/D;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj$/util/stream/D;

    sget-object v2, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    new-instance v4, Lj$/util/stream/o;

    const/16 v1, 0x8

    invoke-direct {v4, v1}, Lj$/util/stream/o;-><init>(I)V

    new-instance v5, Lj$/util/stream/o;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Lj$/util/stream/o;-><init>(I)V

    const/4 v1, 0x1

    sget-object v3, Lj$/util/Optional;->b:Lj$/util/Optional;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/D;-><init>(ZLj$/util/stream/Z2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/H;->c:Lj$/util/stream/D;

    new-instance v1, Lj$/util/stream/D;

    new-instance v5, Lj$/util/stream/o;

    const/16 v0, 0x8

    invoke-direct {v5, v0}, Lj$/util/stream/o;-><init>(I)V

    new-instance v6, Lj$/util/stream/o;

    const/16 v0, 0x9

    invoke-direct {v6, v0}, Lj$/util/stream/o;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/D;-><init>(ZLj$/util/stream/Z2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/H;->d:Lj$/util/stream/D;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lj$/util/stream/I;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/I;->b:Ljava/lang/Object;

    new-instance v1, Lj$/util/Optional;

    invoke-direct {v1, v0}, Lj$/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
