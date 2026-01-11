.class public final Lʼʻ/ᐧᴵ;
.super Lʼʻ/ᵔٴ;
.source "SourceFile"


# instance fields
.field public final transient ˈٴ:Lʼʻ/ᵔי;

.field public final transient ᴵᵔ:Lʼʻ/ˏᵢ;


# direct methods
.method public constructor <init>(Lʼʻ/ᵔי;Lʼʻ/ˏᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lʼʻ/ᐧᴵ;->ˈٴ:Lʼʻ/ᵔי;

    iput-object p2, p0, Lʼʻ/ᐧᴵ;->ᴵᵔ:Lʼʻ/ˏᵢ;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ᐧᴵ;->ˈٴ:Lʼʻ/ᵔי;

    invoke-virtual {v0, p1}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lʼʻ/ᐧᴵ;->ˈٴ:Lʼʻ/ᵔי;

    check-cast v0, Lʼʻ/ᴵʼ;

    iget v0, v0, Lʼʻ/ᴵʼ;->ˊʻ:I

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ()Lʼʻ/ٴﹳ;
    .locals 2

    iget-object v0, p0, Lʼʻ/ᐧᴵ;->ᴵᵔ:Lʼʻ/ˏᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lʼʻ/ᐧᴵ;->ᴵᵔ:Lʼʻ/ˏᵢ;

    invoke-virtual {v0, p1, p2}, Lʼʻ/ᵎⁱ;->ⁱˊ(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ()Lʼʻ/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Lʼʻ/ᐧᴵ;->ᴵᵔ:Lʼʻ/ˏᵢ;

    return-object v0
.end method
