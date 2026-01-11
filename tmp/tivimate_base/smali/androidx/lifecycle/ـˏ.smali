.class public final synthetic Landroidx/lifecycle/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/ـˏ;->ʾˋ:I

    iput-object p2, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 12

    .prologue
    iget v0, p0, Landroidx/lifecycle/ـˏ;->ʾˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, "file://"

    invoke-static {v0, v2, v0}, Lﹶˑ/ˆʾ;->ﹳⁱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾᵔ/ˆʾ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾᵔ/ʼˎ;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾᵔ/ˑﹳ;

    sget-object v1, Lar/tvplayer/core/domain/F;->ﹳٴ:Lar/tvplayer/core/domain/F;

    sget-object v3, Lˉᵎ/ⁱˊ;->ˈ:[B

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/16 v6, 0x32

    if-eqz v3, :cond_3

    const/16 v7, 0xb8

    aget-byte v8, v3, v7

    invoke-static {}, Lᵢـ/ʼˎ;->ⁱˊ()[B

    move-result-object v9

    aget-byte v9, v9, v7

    sub-int/2addr v8, v9

    int-to-byte v8, v8

    if-ne v8, v6, :cond_0

    invoke-virtual {v1, v7}, Lar/tvplayer/core/domain/F;->bG9sC(I)I

    move-result v7

    const/16 v8, 0xbb

    aget-byte v8, v3, v8

    add-int/lit8 v8, v8, 0x20

    if-ne v7, v8, :cond_0

    goto :goto_2

    :cond_0
    sput-boolean v2, Lʿˋ/ˋᵔ;->ˈ:Z

    sget v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_0
    int-to-double v8, v7

    sget v10, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v10, v10

    add-double/2addr v10, v4

    cmpg-double v8, v8, v10

    if-nez v8, :cond_2

    const/16 v8, 0x23f0

    mul-int/2addr v8, v7

    invoke-static {v8, v3}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_1

    :cond_1
    sget v3, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    add-int/lit8 v7, v3, 0x1

    sput v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_1
    sput v3, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sget-boolean v3, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ـˆ()Z

    :goto_3
    sget-object v3, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const/16 v7, 0x16c

    aget-byte v7, v3, v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5

    :goto_4
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    sput-boolean v2, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    goto :goto_7

    :cond_5
    sput-boolean v2, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    sget v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_5
    int-to-double v8, v7

    sget v10, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v10, v10

    add-double/2addr v10, v4

    cmpg-double v8, v8, v10

    if-nez v8, :cond_f

    const v8, 0xaee4

    mul-int/2addr v8, v7

    invoke-static {v8, v3}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_6

    :cond_6
    sget v3, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    add-int/lit8 v7, v3, 0x1

    sput v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_6
    sput v3, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget-boolean v3, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :cond_7
    :goto_7
    new-instance v3, Landroidx/lifecycle/ˊˋ;

    const/4 v7, 0x7

    invoke-direct {v3, v7}, Landroidx/lifecycle/ˊˋ;-><init>(I)V

    sget-object v7, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-eqz v7, :cond_b

    const/16 v8, 0x38

    aget-byte v9, v7, v8

    invoke-static {}, Lᵢـ/ʼˎ;->ⁱˊ()[B

    move-result-object v10

    aget-byte v10, v10, v8

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_8

    invoke-virtual {v1, v8}, Lar/tvplayer/core/domain/F;->tP3zW(I)I

    move-result v1

    const/16 v8, 0x3e

    aget-byte v8, v7, v8

    add-int/2addr v8, v6

    if-ne v1, v8, :cond_8

    goto :goto_a

    :cond_8
    sput-boolean v2, Lʿˋ/ˋᵔ;->ˈ:Z

    sget v1, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_8
    int-to-double v8, v1

    sget v2, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v10, v2

    add-double/2addr v10, v4

    cmpg-double v2, v8, v10

    if-nez v2, :cond_a

    const/16 v2, 0xa80

    mul-int/2addr v2, v1

    invoke-static {v2, v7}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_9

    :cond_9
    sget v1, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_9
    sput v1, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sget-boolean v1, Lʿˋ/ˋᵔ;->ˈ:Z

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_a
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ـˆ()Z

    move-result v1

    :goto_b
    const-string v2, "Local and anonymous classes can not be ViewModels"

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    const-class v5, Lʾᵔ/ᵎﹶ;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v1

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʾˋ()Lʼـ/ˈ;

    move-result-object v0

    new-instance v6, Lˏˆ/ﹳٴ;

    invoke-direct {v6, v1, v3, v0}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    invoke-static {v5}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v0

    invoke-virtual {v0}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object v0

    goto :goto_c

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ᐧᴵ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v3

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʾˋ()Lʼـ/ˈ;

    move-result-object v0

    new-instance v6, Lˏˆ/ﹳٴ;

    invoke-direct {v6, v3, v1, v0}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    invoke-static {v5}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v0

    invoke-virtual {v0}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object v0

    :goto_c
    check-cast v0, Lʾᵔ/ᵎﹶ;

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾˈ/ﹶᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ʻٴ;

    sget v1, Lʾʼ/ʻٴ;->ᵎʿ:I

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ʽﹳ;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ᵔﹳ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ʼᐧ;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ˉˆ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ᵔʾ;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ˉʿ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ٴﹶ;

    iget-object v0, v0, Lʾʼ/ٴﹶ;->ʾˋ:Ljava/lang/String;

    if-eqz v0, :cond_10

    :try_start_0
    new-instance v3, Lʽᴵ/ʾᵎ;

    invoke-direct {v3, v2}, Lʽᴵ/ʾᵎ;-><init>(I)V

    new-instance v2, Lʽᴵ/ʾˋ;

    invoke-direct {v2, v3}, Lʽᴵ/ʾˋ;-><init>(Lʽᴵ/ʾᵎ;)V

    const-class v3, Lar/tvplayer/core/data/db/entities/RecordingRepeatRules;

    invoke-virtual {v2, v3}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lʽᴵ/ﾞʻ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/tvplayer/core/data/db/entities/RecordingRepeatRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_10
    return-object v1

    :pswitch_7
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ˆʾ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ʼˎ;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ᵎﹶ;

    sget v1, Lʾʼ/ᵎﹶ;->ᵎʿ:I

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ﾞᴵ;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ˑﹳ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʾʼ/ⁱˊ;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ﹳٴ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    check-cast v0, Lʾʼ/ᵎﹶ;

    iget-object v0, v0, Lʾʼ/ᵎﹶ;->ـˊ:Ljava/lang/Object;

    invoke-interface {v0}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾʼ/ﾞᴵ;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ﹳﹳ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʽˋ/ˈˏ;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ʾᵎ;

    iget v1, v0, Lʽˋ/ʾᵎ;->ʽˑ:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Lʽˋ/ʾᵎ;->ˎـ(Z)V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ʽ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʽˋ/ⁱˊ;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽ/ٴﹶ;

    invoke-virtual {v0}, Lʽ/ٴﹶ;->reportFullyDrawn()V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/tv/base/ui/WebViewActivity;

    sget v1, Lar/tvplayer/tv/base/ui/WebViewActivity;->ᐧᴵ:I

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ar.tvplayer.tv.base.Args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ˆʻ;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ˆˎ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ˆﹳ;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0

    :pswitch_14
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ˎʾ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ﾞˋ;

    return-object v0

    :pswitch_15
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/יˉ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ˋˊ;

    return-object v0

    :pswitch_16
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ʽˑ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ﹶˎ;

    return-object v0

    :pswitch_17
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ﹳﹳ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ˈˏ;

    return-object v0

    :pswitch_18
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ʻᵎ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ˏᵢ;

    return-object v0

    :pswitch_19
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ᵎᵔ;

    invoke-static {v0}, Lʿˋ/ˉʿ;->ᵔﹳ(Lˑʼ/ᴵᵔ;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lʼⁱ/ʿ;

    return-object v0

    :pswitch_1a
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ⁱי;

    const-string v1, ":memory:"

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ﾞᴵ(Ljava/lang/String;)Lﹳᴵ/ﹳٴ;

    move-result-object v0

    return-object v0

    :pswitch_1b
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊʼ/ˏי;

    iget-object v0, v0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    iget-object v0, v0, Lcom/android/billingclient/api/Purchase;->ʽ:Lorg/json/JSONObject;

    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    sget-object v0, Lar/tvplayer/core/domain/ʻٴ;->ﾞᴵ:Lʼٴ/ⁱˊ;

    new-instance v2, Lar/tvplayer/core/data/api/parse/ˈ;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lʼٴ/ⁱˊ;->ᐧﾞ(Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Purchase token must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    iget-object v0, p0, Landroidx/lifecycle/ـˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ᴵʼ;

    invoke-static {v0}, Landroidx/lifecycle/ʼˈ;->ˈ(Landroidx/lifecycle/ᴵʼ;)Landroidx/lifecycle/ˈⁱ;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
