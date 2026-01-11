.class public final Lʻʻ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/io/Serializable;

.field public ᵎﹶ:Ljava/lang/Object;

.field public ᵔᵢ:Ljava/lang/Object;

.field public ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:Z

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Lʻʻ/ˈ;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    iput-object p2, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    iput-object p4, p0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput-object p5, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1f

    if-lt p1, p2, :cond_1

    sget-object p3, Lʻʻ/ˑﹳ;->ˈ:[B

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p3, Lʻʻ/ˑﹳ;->ˑﹳ:[B

    goto :goto_0

    :pswitch_1
    sget-object p3, Lʻʻ/ˑﹳ;->ﾞᴵ:[B

    goto :goto_0

    :pswitch_2
    sget-object p3, Lʻʻ/ˑﹳ;->ᵎﹶ:[B

    goto :goto_0

    :pswitch_3
    sget-object p3, Lʻʻ/ˑﹳ;->ᵔᵢ:[B

    :goto_0
    iput-object p3, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lar/tvplayer/core/domain/ʽﹳ;Lˈˎ/ﹳٴ;Lᴵˉ/ᵔᵢ;[Lʻʻ/ʽ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    iput-object p3, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    iput-object p4, p0, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iget-object p1, p2, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    iput-object p1, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lˊﾞ/ˉʿ;Lˋⁱ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    return-void
.end method


# virtual methods
.method public ʼˎ(Ljava/lang/String;)V
    .locals 11

    .prologue
    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v0, v0, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾᵎ;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iget v3, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-virtual {v0, v3, v1}, Lʼٴ/ʾᵎ;->ˆʾ(II)V

    iget-object v1, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [C

    iget v3, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x22

    aput-char v5, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v4

    move v7, v4

    :goto_0
    if-ge v7, v3, :cond_5

    aget-char v8, v1, v7

    sget-object v9, Lᴵˉ/ᵎﹶ;->ⁱˊ:[B

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget-byte v8, v9, v8

    if-eqz v8, :cond_4

    sub-int v1, v7, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v7, v2}, Lʼٴ/ʾᵎ;->ˆʾ(II)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sget-object v9, Lᴵˉ/ᵎﹶ;->ⁱˊ:[B

    array-length v10, v9

    if-ge v8, v10, :cond_2

    aget-byte v9, v9, v8

    if-nez v9, :cond_0

    iget-object v4, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [C

    add-int/lit8 v9, v7, 0x1

    int-to-char v8, v8

    aput-char v8, v4, v7

    :goto_2
    move v7, v9

    goto :goto_3

    :cond_0
    if-ne v9, v4, :cond_1

    sget-object v4, Lᴵˉ/ᵎﹶ;->ﹳٴ:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lʼٴ/ʾᵎ;->ˆʾ(II)V

    iget-object v8, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, [C

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v6, v9, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    iput v4, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    move v7, v4

    goto :goto_3

    :cond_1
    iget-object v4, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [C

    const/16 v8, 0x5c

    aput-char v8, v4, v7

    add-int/lit8 v8, v7, 0x1

    int-to-char v9, v9

    aput-char v9, v4, v8

    add-int/lit8 v7, v7, 0x2

    iput v7, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    goto :goto_3

    :cond_2
    iget-object v4, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [C

    add-int/lit8 v9, v7, 0x1

    int-to-char v8, v8

    aput-char v8, v4, v7

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v7, v4}, Lʼٴ/ʾᵎ;->ˆʾ(II)V

    iget-object p1, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, [C

    add-int/lit8 v1, v7, 0x1

    aput-char v5, p1, v7

    iput v1, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p1, v3, 0x1

    aput-char v5, v1, v3

    iput p1, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    :goto_4
    return-void
.end method

.method public ʽ(I)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v0, v0, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾᵎ;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʼٴ/ʾᵎ;->יـ(Ljava/lang/String;)V

    return-void
.end method

.method public ˆʾ()V
    .locals 3

    iget-object v0, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Lᴵˉ/ᵔᵢ;

    iget-object v1, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    iget-char v0, v0, Lᴵˉ/ᵔᵢ;->ᴵˊ:C

    invoke-virtual {v1, v0}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    return-void
.end method

.method public ˈ(J)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v0, v0, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾᵎ;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʼٴ/ʾᵎ;->יـ(Ljava/lang/String;)V

    return-void
.end method

.method public ˉʿ(ILjava/io/Serializable;)V
    .locals 3

    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lʻʻ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lʻʻ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ˑﹳ()V
    .locals 2

    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v0, v0, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾᵎ;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lʼٴ/ʾᵎ;->יـ(Ljava/lang/String;)V

    return-void
.end method

.method public ٴﹶ(I)Lﹳᵢ/ʼʼ;
    .locals 6

    .prologue
    iget-object v0, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˆʽ/ٴﹶ;

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lˑʼ/ᵎˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lﹳᵢ/ʼʼ;

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    new-instance v3, Lﹳᵢ/ˉʿ;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v2, v4}, Lﹳᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lˑʼ/ᵎˊ;I)V

    :goto_0
    move-object v2, v3

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized contentType: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-class v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lⁱי/ˉʿ;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2}, Lⁱי/ˉʿ;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-class v4, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lﹳᵢ/ˉʿ;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v2, v5}, Lﹳᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lˑʼ/ᵎˊ;I)V

    :goto_1
    move-object v2, v4

    goto :goto_2

    :cond_5
    const-class v4, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lﹳᵢ/ˉʿ;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v2, v5}, Lﹳᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lˑʼ/ᵎˊ;I)V

    goto :goto_1

    :cond_6
    const-class v4, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lﹳᵢ/ˉʿ;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Lﹳᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lˑʼ/ᵎˊ;I)V

    goto :goto_1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {v2}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    iget-object v2, p0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lⁱᴵ/ˉʿ;

    if-eqz v2, :cond_7

    invoke-interface {v1, v2}, Lﹳᵢ/ʼʼ;->ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;

    :cond_7
    iget-object v2, p0, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Lʻᴵ/יـ;

    if-eqz v2, :cond_8

    invoke-interface {v1, v2}, Lﹳᵢ/ʼʼ;->ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;

    :cond_8
    iget-object v2, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    invoke-interface {v1, v2}, Lﹳᵢ/ʼʼ;->ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;

    iget-boolean v2, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    invoke-interface {v1, v2}, Lﹳᵢ/ʼʼ;->ﹳٴ(Z)Lﹳᵢ/ʼʼ;

    invoke-interface {v1}, Lﹳᵢ/ʼʼ;->ⁱˊ()Lﹳᵢ/ʼʼ;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public ᵎﹶ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p0, p3, p4}, Lʻʻ/ʽ;->ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V

    return-void
.end method

.method public ᵔʾ()Z
    .locals 1

    iget-object v0, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـˎ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lˈˎ/ﹳٴ;

    iget-object v0, v0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v1

    invoke-interface {v1}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v1

    sget-object v2, Lˉﾞ/ﾞᴵ;->ʽ:Lˉﾞ/ﾞᴵ;

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lˉﾞ/ﾞᴵ;->ﾞᴵ:Lˉﾞ/ﾞᴵ;

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v1

    invoke-interface {v1}, Lˉﾞ/ˈ;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    instance-of v3, v2, Lˈˎ/ⁱˊ;

    if-eqz v3, :cond_3

    check-cast v2, Lˈˎ/ⁱˊ;

    invoke-interface {v2}, Lˈˎ/ⁱˊ;->discriminator()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "type"

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v1

    invoke-interface {v1}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput-object v1, p0, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    :cond_6
    invoke-interface {p1, p0, p2}, Lיʼ/ﹳٴ;->ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V

    return-void
.end method

.method public ⁱˊ(Lˉﾞ/ˈ;I)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v1, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Lᴵˉ/ᵔᵢ;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/16 v4, 0x3a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v1, v6, :cond_4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    iget-boolean v1, v0, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    :cond_0
    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔᵢ()V

    iget-object v1, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast v1, Lˈˎ/ﹳٴ;

    invoke-static {v1, p1}, Lᴵˉ/ˑﹳ;->ﾞᴵ(Lˈˎ/ﹳٴ;Lˉﾞ/ˈ;)V

    invoke-interface {p1, p2}, Lˉﾞ/ˈ;->ˑﹳ(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ٴﹶ()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v3, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-virtual {v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ٴﹶ()V

    iput-boolean v5, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    :cond_3
    return-void

    :cond_4
    iget-boolean p1, v0, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez p1, :cond_6

    rem-int/2addr p2, v6

    if-nez p2, :cond_5

    invoke-virtual {v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔᵢ()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ٴﹶ()V

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    return-void

    :cond_6
    iput-boolean v3, p0, Lʻʻ/ʽ;->ﹳٴ:Z

    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔᵢ()V

    return-void

    :cond_7
    iget-boolean p1, v0, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez p1, :cond_8

    invoke-virtual {v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    :cond_8
    invoke-virtual {v0}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔᵢ()V

    return-void
.end method

.method public ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;
    .locals 6

    .prologue
    iget-object v0, p0, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, [Lʻʻ/ʽ;

    iget-object v1, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast v1, Lˈˎ/ﹳٴ;

    invoke-static {v1, p1}, Lᴵˉ/ˑﹳ;->ᵎﹶ(Lˈˎ/ﹳٴ;Lˉﾞ/ˈ;)Lᴵˉ/ᵔᵢ;

    move-result-object v2

    iget-char v3, v2, Lᴵˉ/ᵔᵢ;->ʾˋ:C

    iget-object v4, p0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v4, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v4, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    iget-object v3, p0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-interface {p1}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v4}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔᵢ()V

    invoke-virtual {p0, v3}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v4, p1}, Lar/tvplayer/core/domain/ʽﹳ;->ʼˎ(C)V

    invoke-virtual {p0, v5}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput-object p1, p0, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast p1, Lᴵˉ/ᵔᵢ;

    if-ne p1, v2, :cond_2

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lʻʻ/ʽ;

    invoke-direct {p1, v4, v1, v2, v0}, Lʻʻ/ʽ;-><init>(Lar/tvplayer/core/domain/ʽﹳ;Lˈˎ/ﹳٴ;Lᴵˉ/ᵔᵢ;[Lʻʻ/ʽ;)V

    return-object p1
.end method

.method public ﾞʻ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "compressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lʻʻ/ˈ;

    invoke-interface {p1}, Lʻʻ/ˈ;->ʼᐧ()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lـˎ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-interface {p3}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p1

    invoke-interface {p1}, Lˉﾞ/ˈ;->ᵔᵢ()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lʻʻ/ʽ;->ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p0}, Lʻʻ/ʽ;->ˑﹳ()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3, p4}, Lʻʻ/ʽ;->ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
