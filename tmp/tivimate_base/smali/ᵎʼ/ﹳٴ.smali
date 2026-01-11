.class public final Lᵎʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;
.implements Lˎᵢ/ˑﹳ;


# instance fields
.field public ʽʽ:Lʿٴ/ˈ;

.field public final ʾˋ:Lˎᵢ/ˈ;

.field public ˈٴ:Lˎᵢ/ᴵᵔ;

.field public volatile ˊʻ:Lٴᵎ/ʼᐧ;

.field public final ᴵˊ:Lⁱʼ/ᵎﹶ;

.field public ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;


# direct methods
.method public constructor <init>(Lˎᵢ/ˈ;Lⁱʼ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎʼ/ﹳٴ;->ʾˋ:Lˎᵢ/ˈ;

    iput-object p2, p0, Lᵎʼ/ﹳٴ;->ᴵˊ:Lⁱʼ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ˊʻ:Lٴᵎ/ʼᐧ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lٴᵎ/ʼᐧ;->cancel()V

    :cond_0
    return-void
.end method

.method public final ʼˎ(Lˎᵢ/ʽʽ;)V
    .locals 4

    .prologue
    iget-object v0, p1, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    iput-object v0, p0, Lᵎʼ/ﹳٴ;->ˈٴ:Lˎᵢ/ᴵᵔ;

    iget-boolean v1, p1, Lˎᵢ/ʽʽ;->ˈʿ:Z

    if-eqz v1, :cond_0

    const-string p1, "Argument must not be null"

    invoke-static {v0, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v0

    iget-object p1, p0, Lᵎʼ/ﹳٴ;->ˈٴ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object p1

    invoke-interface {p1}, Lˊᐧ/ᵔᵢ;->ᵎʻ()Ljava/io/InputStream;

    move-result-object p1

    new-instance v2, Lʿٴ/ˈ;

    invoke-direct {v2, p1, v0, v1}, Lʿٴ/ˈ;-><init>(Ljava/io/InputStream;J)V

    iput-object v2, p0, Lᵎʼ/ﹳٴ;->ʽʽ:Lʿٴ/ˈ;

    iget-object p1, p0, Lᵎʼ/ﹳٴ;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    invoke-interface {p1, v2}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    new-instance v1, Lcom/bumptech/glide/load/HttpException;

    iget-object v2, p1, Lˎᵢ/ʽʽ;->ʽʽ:Ljava/lang/String;

    iget p1, p1, Lˎᵢ/ʽʽ;->ˈٴ:I

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final ᵎﹶ(Ljava/io/IOException;)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    const-string v1, "OkHttpFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OkHttp failed to obtain result"

    nop

    :cond_0
    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ʽʽ:Lʿٴ/ˈ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ˈٴ:Lˎᵢ/ᴵᵔ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lᵎʼ/ﹳٴ;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 4

    .prologue
    new-instance p1, Landroidx/leanback/widget/ʻٴ;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ᴵˊ:Lⁱʼ/ᵎﹶ;

    invoke-virtual {v0}, Lⁱʼ/ᵎﹶ;->ˈ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʾˋ(Ljava/lang/String;)V

    iget-object v0, p0, Lᵎʼ/ﹳٴ;->ᴵˊ:Lⁱʼ/ᵎﹶ;

    iget-object v0, v0, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    invoke-interface {v0}, Lⁱʼ/ᵔᵢ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ʼˎ;

    invoke-virtual {v3, v2, v1}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lˎᵢ/ʾᵎ;

    invoke-direct {v0, p1}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    iput-object p2, p0, Lᵎʼ/ﹳٴ;->ᴵᵔ:Lcom/bumptech/glide/load/data/ˈ;

    iget-object p1, p0, Lᵎʼ/ﹳٴ;->ʾˋ:Lˎᵢ/ˈ;

    check-cast p1, Lˎᵢ/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lٴᵎ/ʼᐧ;

    invoke-direct {p2, p1, v0}, Lٴᵎ/ʼᐧ;-><init>(Lˎᵢ/ʻٴ;Lˎᵢ/ʾᵎ;)V

    iput-object p2, p0, Lᵎʼ/ﹳٴ;->ˊʻ:Lٴᵎ/ʼᐧ;

    iget-object p1, p0, Lᵎʼ/ﹳٴ;->ˊʻ:Lٴᵎ/ʼᐧ;

    invoke-virtual {p1, p0}, Lٴᵎ/ʼᐧ;->ˈ(Lˎᵢ/ˑﹳ;)V

    return-void
.end method
