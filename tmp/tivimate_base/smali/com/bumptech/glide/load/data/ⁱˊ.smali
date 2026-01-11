.class public abstract Lcom/bumptech/glide/load/data/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# instance fields
.field public final ʽʽ:Ljava/lang/Comparable;

.field public final synthetic ʾˋ:I

.field public final ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʾˋ:I

    iput-object p3, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʽʽ:Ljava/lang/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˈ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʾˋ:I

    return-void
.end method

.method public abstract ʼˎ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
.end method

.method public final ˑﹳ()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract ᵎﹶ(Ljava/lang/Object;)V
.end method

.method public abstract ᵔᵢ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/ⁱˊ;->ᵎﹶ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/ⁱˊ;->ᵎﹶ(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 2

    .prologue
    iget p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʽʽ:Ljava/lang/Comparable;

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/ⁱˊ;->ʼˎ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "LocalUriFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open Uri"

    nop

    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ʽʽ:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/ⁱˊ;->ᵔᵢ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "AssetPathFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Failed to load data from asset manager"

    nop

    :cond_1
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
