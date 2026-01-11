.class public final Lⁱʼ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# static fields
.field public static final ⁱˊ:Ljava/util/Set;


# instance fields
.field public final ﹳٴ:Lⁱʼ/ʼᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http"

    const-string v2, "https"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lⁱʼ/ᴵˊ;->ⁱˊ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lⁱʼ/ʼᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱʼ/ᴵˊ;->ﹳٴ:Lⁱʼ/ʼᐧ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lⁱʼ/ᴵˊ;->ⁱˊ:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    new-instance v0, Lⁱʼ/ᵎﹶ;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lⁱʼ/ᵎﹶ;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lⁱʼ/ᴵˊ;->ﹳٴ:Lⁱʼ/ʼᐧ;

    invoke-interface {p1, v0, p2, p3, p4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object p1

    return-object p1
.end method
