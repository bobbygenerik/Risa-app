.class public final Lʼʻ/ᐧﾞ;
.super Lʼʻ/ᵔٴ;
.source "SourceFile"


# instance fields
.field public final transient ˈٴ:Lʼʻ/ᵔי;

.field public final transient ˊʻ:I

.field public final transient ᴵᵔ:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʼʻ/ᵔי;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lʼʻ/ᐧﾞ;->ˈٴ:Lʼʻ/ᵔי;

    iput-object p2, p0, Lʼʻ/ᐧﾞ;->ᴵᵔ:[Ljava/lang/Object;

    iput p3, p0, Lʼʻ/ᐧﾞ;->ˊʻ:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lʼʻ/ᐧﾞ;->ˈٴ:Lʼʻ/ᵔי;

    invoke-virtual {v2, v0}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lʼʻ/ᐧﾞ;->ˊʻ:I

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ()Lʼʻ/ٴﹳ;
    .locals 2

    invoke-virtual {p0}, Lʼʻ/ᵔٴ;->ﹳٴ()Lʼʻ/ᵎⁱ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔٴ;->ﹳٴ()Lʼʻ/ᵎⁱ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lʼʻ/ᵎⁱ;->ⁱˊ(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final ﾞʻ()Lʼʻ/ᵎⁱ;
    .locals 1

    new-instance v0, Lʼʻ/ᵎᵔ;

    invoke-direct {v0, p0}, Lʼʻ/ᵎᵔ;-><init>(Lʼʻ/ᐧﾞ;)V

    return-object v0
.end method
