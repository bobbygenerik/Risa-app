.class public abstract Lﹳᵢ/ˆʾ;
.super Lﹳᵢ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Ljava/util/HashMap;

.field public ٴʼ:Lـˊ/ᵔﹳ;

.field public ᵎⁱ:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lﹳᵢ/ﹳٴ;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract ʽʽ(Ljava/lang/Object;Lﹳᵢ/ﹳٴ;Lʽⁱ/ʼˈ;)V
.end method

.method public ʾˋ(JLjava/lang/Object;)J
    .locals 0

    return-wide p1
.end method

.method public ʾᵎ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳᵢ/ʼˎ;

    iget-object v3, v2, Lﹳᵢ/ʼˎ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v4, v2, Lﹳᵢ/ʼˎ;->ʽ:Lﹳᵢ/ᵔᵢ;

    iget-object v2, v2, Lﹳᵢ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵎﹶ;

    invoke-interface {v3, v2}, Lﹳᵢ/ᴵˊ;->ٴﹶ(Lﹳᵢ/ʾˋ;)V

    invoke-interface {v3, v4}, Lﹳᵢ/ᴵˊ;->ʼᐧ(Lﹳᵢ/ٴᵢ;)V

    invoke-interface {v3, v4}, Lﹳᵢ/ᴵˊ;->ˆʾ(Lⁱᴵ/ˆʾ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼˎ;

    iget-object v1, v1, Lﹳᵢ/ʼˎ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v1}, Lﹳᵢ/ᴵˊ;->ˈ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˈٴ(Ljava/lang/Integer;Lﹳᵢ/ᴵˊ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    new-instance v1, Lﹳᵢ/ᵎﹶ;

    invoke-direct {v1, p0, p1}, Lﹳᵢ/ᵎﹶ;-><init>(Lﹳᵢ/ˆʾ;Ljava/lang/Object;)V

    new-instance v2, Lﹳᵢ/ᵔᵢ;

    invoke-direct {v2, p0, p1}, Lﹳᵢ/ᵔᵢ;-><init>(Lﹳᵢ/ˆʾ;Ljava/lang/Object;)V

    new-instance v3, Lﹳᵢ/ʼˎ;

    invoke-direct {v3, p2, v1, v2}, Lﹳᵢ/ʼˎ;-><init>(Lﹳᵢ/ᴵˊ;Lﹳᵢ/ᵎﹶ;Lﹳᵢ/ᵔᵢ;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lﹳᵢ/ˆʾ;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lﹳᵢ/ᴵˊ;->ˉˆ(Landroid/os/Handler;Lﹳᵢ/ٴᵢ;)V

    iget-object p1, p0, Lﹳᵢ/ˆʾ;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lﹳᵢ/ᴵˊ;->ﾞʻ(Landroid/os/Handler;Lⁱᴵ/ˆʾ;)V

    iget-object p1, p0, Lﹳᵢ/ˆʾ;->ٴʼ:Lـˊ/ᵔﹳ;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {p2, v1, p1, v0}, Lﹳᵢ/ᴵˊ;->ᵔᵢ(Lﹳᵢ/ʾˋ;Lـˊ/ᵔﹳ;Lʻʿ/יـ;)V

    iget-object p1, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v1}, Lﹳᵢ/ᴵˊ;->ˉʿ(Lﹳᵢ/ʾˋ;)V

    :cond_0
    return-void
.end method

.method public final יـ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼˎ;

    iget-object v2, v1, Lﹳᵢ/ʼˎ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v1, v1, Lﹳᵢ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵎﹶ;

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ʽ(Lﹳᵢ/ʾˋ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᴵˊ(ILjava/lang/Object;)I
    .locals 0

    return p1
.end method

.method public abstract ᵢˏ(Ljava/lang/Object;Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;
.end method

.method public final ﹳᐧ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˆʾ;->ˉٴ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼˎ;

    iget-object v2, v1, Lﹳᵢ/ʼˎ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v1, v1, Lﹳᵢ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵎﹶ;

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ˉʿ(Lﹳᵢ/ʾˋ;)V

    goto :goto_0

    :cond_0
    return-void
.end method
