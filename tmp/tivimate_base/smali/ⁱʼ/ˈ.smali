.class public final Lⁱʼ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lⁱʼ/ˈ;->ʾˋ:I

    iput-object p2, p0, Lⁱʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

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

.method private final ᵎﹶ()V
    .locals 0

    return-void
.end method

.method private final ᵔᵢ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget v0, p0, Lⁱʼ/ˈ;->ʾˋ:I

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    .prologue
    iget v0, p0, Lⁱʼ/ˈ;->ʾˋ:I

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

.method public final ⁱˊ()V
    .locals 1

    iget v0, p0, Lⁱʼ/ˈ;->ʾˋ:I

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lⁱʼ/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 2

    .prologue
    iget p1, p0, Lⁱʼ/ˈ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lⁱʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lⁱʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lʿٴ/ⁱˊ;->ﹳٴ(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "ByteBufferFileLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to obtain ByteBuffer for file"

    nop

    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
