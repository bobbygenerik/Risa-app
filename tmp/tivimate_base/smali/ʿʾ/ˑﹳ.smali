.class public final Lʿʾ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵔᵢ;
.implements Lcom/bumptech/glide/load/data/ˈ;


# instance fields
.field public final ʽʽ:Lʿʾ/ᵎﹶ;

.field public final ʾˋ:Ljava/util/List;

.field public ˈٴ:I

.field public volatile ˉٴ:Lⁱʼ/ˉˆ;

.field public ˊʻ:Ljava/util/List;

.field public ٴᵢ:I

.field public final ᴵˊ:Lʿʾ/ʼˎ;

.field public ᴵᵔ:Lʼᵔ/ˑﹳ;

.field public ᵎⁱ:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Lʿʾ/ʼˎ;Lʿʾ/ᵎﹶ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lʿʾ/ˑﹳ;->ˈٴ:I

    iput-object p1, p0, Lʿʾ/ˑﹳ;->ʾˋ:Ljava/util/List;

    iput-object p2, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iput-object p3, p0, Lʿʾ/ˑﹳ;->ʽʽ:Lʿʾ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->cancel()V

    :cond_0
    return-void
.end method

.method public final ʽ(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ʽʽ:Lʿʾ/ᵎﹶ;

    iget-object v1, p0, Lʿʾ/ˑﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    iget-object v2, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v2, v2, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    const/4 v3, 0x3

    invoke-interface {v0, v1, p1, v2, v3}, Lʿʾ/ᵎﹶ;->ʽ(Lʼᵔ/ˑﹳ;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/ˑﹳ;I)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ʽʽ:Lʿʾ/ᵎﹶ;

    iget-object v1, p0, Lʿʾ/ˑﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    iget-object v2, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v3, v2, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    const/4 v4, 0x3

    iget-object v5, p0, Lʿʾ/ˑﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lʿʾ/ᵎﹶ;->ⁱˊ(Lʼᵔ/ˑﹳ;Ljava/lang/Object;Lcom/bumptech/glide/load/data/ˑﹳ;ILʼᵔ/ˑﹳ;)V

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 7

    .prologue
    :cond_0
    :goto_0
    iget-object v0, p0, Lʿʾ/ˑﹳ;->ˊʻ:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Lʿʾ/ˑﹳ;->ٴᵢ:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, Lʿʾ/ˑﹳ;->ٴᵢ:I

    iget-object v3, p0, Lʿʾ/ˑﹳ;->ˊʻ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ˊʻ:Ljava/util/List;

    iget v3, p0, Lʿʾ/ˑﹳ;->ٴᵢ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lʿʾ/ˑﹳ;->ٴᵢ:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱʼ/ʼᐧ;

    iget-object v3, p0, Lʿʾ/ˑﹳ;->ᵎⁱ:Ljava/io/File;

    iget-object v4, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget v5, v4, Lʿʾ/ʼˎ;->ˑﹳ:I

    iget v6, v4, Lʿʾ/ʼˎ;->ﾞᴵ:I

    iget-object v4, v4, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-interface {v0, v3, v5, v6, v4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v0

    iput-object v0, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v3, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v3, v3, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lʿʾ/ʼˎ;->ʽ(Ljava/lang/Class;)Lʿʾ/ʾᵎ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    iget-object v2, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v2, v2, Lʿʾ/ʼˎ;->ˉˆ:Lcom/bumptech/glide/ᵎﹶ;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, Lʿʾ/ˑﹳ;->ˈٴ:I

    add-int/2addr v0, v1

    iput v0, p0, Lʿʾ/ˑﹳ;->ˈٴ:I

    iget-object v1, p0, Lʿʾ/ˑﹳ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lʿʾ/ˑﹳ;->ʾˋ:Ljava/util/List;

    iget v1, p0, Lʿʾ/ˑﹳ;->ˈٴ:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼᵔ/ˑﹳ;

    new-instance v1, Lʿʾ/ﾞᴵ;

    iget-object v3, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v4, v3, Lʿʾ/ʼˎ;->ᵔʾ:Lʼᵔ/ˑﹳ;

    invoke-direct {v1, v0, v4}, Lʿʾ/ﾞᴵ;-><init>(Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;)V

    iget-object v3, v3, Lʿʾ/ʼˎ;->ᵔᵢ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v3}, Lᴵˈ/ᵔᵢ;->ﹳٴ()Lʾⁱ/ﹳٴ;

    move-result-object v3

    invoke-interface {v3, v1}, Lʾⁱ/ﹳٴ;->ˆʾ(Lʼᵔ/ˑﹳ;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lʿʾ/ˑﹳ;->ᵎⁱ:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lʿʾ/ˑﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    iget-object v0, p0, Lʿʾ/ˑﹳ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v0, v0, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v0}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lʿʾ/ˑﹳ;->ˊʻ:Ljava/util/List;

    iput v2, p0, Lʿʾ/ˑﹳ;->ٴᵢ:I

    goto/16 :goto_0
.end method
