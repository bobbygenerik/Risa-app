.class public final Lʻᴵ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Z

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻᴵ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lᐧˎ/ˏי;I)V
    .locals 0

    .prologue
    iput p4, p0, Lʻᴵ/יـ;->ﹳٴ:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lᵔﹶ/ᴵˊ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1}, Lᵔﹶ/ᴵˊ;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lᵔﹶ/ˈٴ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1}, Lᵔﹶ/ˈٴ;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lʻᴵ/ﹳᐧ;Lʻᴵ/ʽﹳ;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Lʻᴵ/ʽﹳ;->ﹳٴ:I

    iget-object p2, p2, Lʻᴵ/ʽﹳ;->ⁱˊ:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lʻᴵ/ʻٴ;

    invoke-direct {p2, v0, v1}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    invoke-virtual {p2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    :goto_2
    return-void

    :cond_3
    if-eq p1, v3, :cond_5

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    :cond_5
    :goto_3
    invoke-virtual {p2}, Lʻᴵ/ʻٴ;->ـˆ()V

    new-instance p1, Lʻᴵ/ˏי;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻᴵ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    return-void
.end method

.method public static ﹳٴ(Lᵔⁱ/ᵔᵢ;Lʼٴ/ʾᵎ;)Lʼˊ/ⁱˊ;
    .locals 2

    .prologue
    iget-object p1, p1, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    instance-of v0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget p1, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_3

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lᵔⁱ/ᵔᵢ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lʼˊ/ⁱˊ;

    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1}, Lʼˊ/ⁱˊ;-><init>(IJ)V

    return-object p0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lᵔⁱ/ᵔᵢ;->ﹳٴ(I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lʼˊ/ⁱˊ;

    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lʼˊ/ⁱˊ;-><init>(IJ)V

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ʽ(Lʼٴ/ʾᵎ;)J
    .locals 3

    .prologue
    iget-object v0, p1, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroidx/media3/common/ParserException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v1, :cond_3

    sget v1, Landroidx/media3/datasource/DataSourceException;->ᴵˊ:I

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroidx/media3/datasource/DataSourceException;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/media3/datasource/DataSourceException;

    iget v1, v1, Landroidx/media3/datasource/DataSourceException;->ʾˋ:I

    const/16 v2, 0x7d8

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget p1, p1, Lʼٴ/ʾᵎ;->ᴵˊ:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_3
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public ˈ(Z)V
    .locals 1

    .prologue
    iget v0, p0, Lʻᴵ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lʻᴵ/יـ;->ⁱˊ:Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ(I)I
    .locals 1

    .prologue
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method
