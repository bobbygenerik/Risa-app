.class public final Lⁱʼ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;
.implements Lcom/bumptech/glide/load/data/ˈ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Ljava/util/ArrayList;

.field public ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

.field public ˊʻ:Ljava/util/List;

.field public ٴᵢ:Z

.field public final ᴵˊ:Lˑٴ/ʽ;

.field public ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lˑٴ/ʽ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lⁱʼ/ˏי;->ᴵˊ:Lˑٴ/ʽ;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lⁱʼ/ˏי;->ʽʽ:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱʼ/ˏי;->ٴᵢ:Z

    iget-object v0, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ˑﹳ;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʽ(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lⁱʼ/ˏי;->ᵎﹶ()V

    return-void
.end method

.method public final ˈ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lⁱʼ/ˏי;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lⁱʼ/ˏי;->ᵎﹶ()V

    return-void
.end method

.method public final ˑﹳ()I
    .locals 2

    iget-object v0, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ˑﹳ()I

    move-result v0

    return v0
.end method

.method public final ᵎﹶ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lⁱʼ/ˏי;->ٴᵢ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lⁱʼ/ˏי;->ʽʽ:I

    iget-object v1, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lⁱʼ/ˏי;->ʽʽ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lⁱʼ/ˏי;->ʽʽ:I

    iget-object v0, p0, Lⁱʼ/ˏי;->ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

    iget-object v1, p0, Lⁱʼ/ˏי;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    invoke-virtual {p0, v0, v1}, Lⁱʼ/ˏי;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V

    return-void

    :cond_1
    iget-object v0, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    invoke-static {v0}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    iget-object v0, p0, Lⁱʼ/ˏי;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lⁱʼ/ˏי;->ᴵˊ:Lˑٴ/ʽ;

    invoke-interface {v1, v0}, Lˑٴ/ʽ;->ˑﹳ(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    iget-object v0, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ˑﹳ;->ⁱˊ()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lⁱʼ/ˏי;->ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object p2, p0, Lⁱʼ/ˏי;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    iget-object p2, p0, Lⁱʼ/ˏי;->ᴵˊ:Lˑٴ/ʽ;

    invoke-interface {p2}, Lˑٴ/ʽ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lⁱʼ/ˏי;->ˊʻ:Ljava/util/List;

    iget-object p2, p0, Lⁱʼ/ˏי;->ʾˋ:Ljava/util/ArrayList;

    iget v0, p0, Lⁱʼ/ˏי;->ʽʽ:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V

    iget-boolean p1, p0, Lⁱʼ/ˏי;->ٴᵢ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lⁱʼ/ˏי;->cancel()V

    :cond_0
    return-void
.end method
