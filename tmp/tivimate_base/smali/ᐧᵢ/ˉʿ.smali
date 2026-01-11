.class public final synthetic Lᐧᵢ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lᐧᵢ/ˉʿ;->ʾˋ:I

    iput-object p1, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lʽⁱ/ﹳᐧ;Lⁱי/ᵎﹶ;I)V
    .locals 0

    iput p4, p0, Lᐧᵢ/ˉʿ;->ʾˋ:I

    iput-object p1, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lـʾ/ᵔﹳ;Lᐧᵢ/ᵎﹶ;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lᐧᵢ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method private final ﹳٴ()V
    .locals 5

    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lⁱי/ﾞᴵ;

    monitor-enter v1

    monitor-exit v1

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ᵔᵢ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v1, v0, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-object v2, v1, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v2, v2, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v1, v2}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v2

    new-instance v3, Lʻʿ/ﾞᴵ;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v4, 0x3f5

    invoke-virtual {v1, v2, v4, v3}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lⁱי/ʼʼ;->ʾˊ:Lʽⁱ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    iget v0, p0, Lᐧᵢ/ˉʿ;->ʾˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lⁱי/ﾞᴵ;

    monitor-enter v1

    monitor-exit v1

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ʽʽ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v3, v0, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-object v4, v3, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v4, v4, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v4, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v3, v4}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v4

    new-instance v5, Lʻʿ/ˈ;

    invoke-direct {v5, v4, v1, v2}, Lʻʿ/ˈ;-><init>(Lʻʿ/ﹳٴ;Ljava/lang/Object;I)V

    const/16 v1, 0x3fc

    invoke-virtual {v3, v4, v1, v5}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lⁱי/ʼʼ;->י:Lʽⁱ/ﹳᐧ;

    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ʽʽ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iput-object v1, v0, Lⁱי/ʼʼ;->י:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    invoke-virtual {v0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object v1

    new-instance v2, Lʻʿ/ﾞᴵ;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v3, 0x3f9

    invoke-virtual {v0, v1, v3, v2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ˏᵢ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ʽʽ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iput-object v1, v0, Lⁱי/ʼʼ;->ٴᴵ:Lʽⁱ/ˏᵢ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v2, Lʻʿ/ᵎﹶ;

    invoke-direct {v2, v1}, Lʻʿ/ᵎﹶ;-><init>(Lʽⁱ/ˏᵢ;)V

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ʽ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ˏᵢ;

    iget-object v0, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˈ;

    iget-object v0, v0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    invoke-interface {v0, v1}, Lﾞˏ/ˈٴ;->ﹳٴ(Lʽⁱ/ˏᵢ;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶˎ/ˉˆ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶˎ/ᵔᵢ;

    iget-object v0, v0, Lﹶˎ/ˉˆ;->ʽʽ:Lᐧﹳ/ʽ;

    iget-object v1, v1, Lﹶˎ/ᵔᵢ;->ˆﾞ:Landroid/net/Uri;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶˎ/ʼˎ;

    iget-object v0, v0, Lﹶˎ/ʼˎ;->ᴵˊ:Lʽˑ/ʽ;

    iget-object v0, v0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ⁱˊ;

    invoke-virtual {v0, v2}, Lʽˑ/ⁱˊ;->ʽ(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶ/ʼˎ;

    iget v2, v0, Lᐧﹳ/ʽ;->ʾˋ:I

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_1

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾˋ;

    iget-object v0, v0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v2, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v4, Lﹶ/ᵎﹶ;

    invoke-direct {v4, v0, v1, v3}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/ʽ;

    iget-object v0, v0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v2, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v4, Lﹶ/ᵎﹶ;

    invoke-direct {v4, v0, v1, v3}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_6
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ᵔᵢ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iput-object v1, v0, Lⁱי/ʼʼ;->ʾˊ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    invoke-virtual {v0}, Lʻʿ/ˆʾ;->ˊˋ()Lʻʿ/ﹳٴ;

    move-result-object v1

    new-instance v2, Lʻʿ/ﾞᴵ;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lʻʿ/ﾞᴵ;-><init>(I)V

    const/16 v3, 0x3f1

    invoke-virtual {v0, v1, v3, v2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lᐧᵢ/ˉʿ;->ﹳٴ()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ˋᵔ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ʾˋ;

    invoke-virtual {v0, v1}, Lﹳᵢ/ˋᵔ;->ᴵᵔ(Lˊﾞ/ʾˋ;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﾞᴵ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lᐧˎ/ﾞᴵ;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˎ/ˉʿ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lﹳˎ/ˉʿ;->ʽ(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ˈ;

    iget-object v2, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʽⁱ/ﹳᐧ;

    iget-object v3, v0, Lⁱᴵ/ˈ;->ˈٴ:Lⁱᴵ/ˑﹳ;

    iget v4, v3, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lⁱᴵ/ˈ;->ʽʽ:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lⁱᴵ/ˈ;->ʾˋ:Lⁱᴵ/ʼˎ;

    invoke-virtual {v3, v4, v5, v2, v1}, Lⁱᴵ/ˑﹳ;->ⁱˊ(Landroid/os/Looper;Lⁱᴵ/ʼˎ;Lʽⁱ/ﹳᐧ;Z)Lⁱᴵ/ﾞᴵ;

    move-result-object v1

    iput-object v1, v0, Lⁱᴵ/ˈ;->ᴵˊ:Lⁱᴵ/ﾞᴵ;

    iget-object v1, v3, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_c
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lⁱי/ʼʼ;

    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ˉٴ;

    iget v4, v3, Lⁱי/ʼʼ;->ـﹶ:I

    iget v5, v0, Lˋˋ/ˉٴ;->ⁱˊ:I

    sub-int/2addr v4, v5

    iput v4, v3, Lⁱי/ʼʼ;->ـﹶ:I

    iget-boolean v5, v0, Lˋˋ/ˉٴ;->ˈ:Z

    if-eqz v5, :cond_3

    iget v5, v0, Lˋˋ/ˉٴ;->ˑﹳ:I

    iput v5, v3, Lⁱי/ʼʼ;->ˈˏ:I

    iput-boolean v2, v3, Lⁱי/ʼʼ;->ﹶᐧ:Z

    :cond_3
    if-nez v4, :cond_d

    iget-object v4, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Lⁱי/ᴵˑ;

    iget-object v4, v4, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v5, v3, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v5, v5, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v5}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    iput v5, v3, Lⁱי/ʼʼ;->ʽˑ:I

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lⁱי/ʼʼ;->ˋˊ:J

    :cond_4
    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v4

    check-cast v5, Lⁱי/ᐧﾞ;

    iget-object v5, v5, Lⁱי/ᐧﾞ;->ᵔᵢ:[Lʽⁱ/ʼˈ;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v3, Lⁱי/ʼʼ;->ˑٴ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    move v6, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, v3, Lⁱי/ʼʼ;->ˑٴ:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lⁱי/ʾᵎ;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʽⁱ/ʼˈ;

    iput-object v8, v7, Lⁱי/ʾᵎ;->ⁱˊ:Lʽⁱ/ʼˈ;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iget-boolean v5, v3, Lⁱי/ʼʼ;->ﹶᐧ:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_c

    iget-object v5, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, Lⁱי/ᴵˑ;

    iget-object v5, v5, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v8, v3, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v8, v8, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v5, v8}, Lﹳᵢ/ᵢˏ;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, Lⁱי/ᴵˑ;

    iget-wide v8, v5, Lⁱי/ᴵˑ;->ˈ:J

    iget-object v5, v3, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-wide v10, v5, Lⁱי/ᴵˑ;->יـ:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :cond_8
    :goto_4
    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, Lⁱי/ᴵˑ;

    iget-object v5, v5, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v5}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v5, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, Lⁱי/ᴵˑ;

    iget-object v6, v5, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-wide v7, v5, Lⁱי/ᴵˑ;->ˈ:J

    iget-object v5, v6, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v6, v3, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v4, v5, v6}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-wide v4, v6, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    add-long/2addr v7, v4

    move-wide v6, v7

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v4, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Lⁱי/ᴵˑ;

    iget-wide v4, v4, Lⁱי/ᴵˑ;->ˈ:J

    move-wide v6, v4

    :cond_b
    :goto_6
    move-wide v8, v6

    move v6, v2

    goto :goto_7

    :cond_c
    move-wide v8, v6

    move v6, v1

    :goto_7
    iput-boolean v1, v3, Lⁱי/ʼʼ;->ﹶᐧ:Z

    iget-object v0, v0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lⁱי/ᴵˑ;

    iget v7, v3, Lⁱי/ʼʼ;->ˈˏ:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v11}, Lⁱי/ʼʼ;->ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V

    :cond_d
    return-void

    :pswitch_d
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lʼﾞ/ˈʿ;

    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lʼﾞ/ˈʿ;->ʽ()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lʼﾞ/ˈʿ;->ʽ()V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lᐧⁱ/ˊʻ;->ﹳٴ(Lar/tvplayer/tv/player/ui/CustomPlayerView;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lᐧᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧᵢ/ᵎﹶ;

    iget-object v1, p0, Lᐧᵢ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lᐧᵢ/ᵎﹶ;->ⁱˊ(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_5
    .end packed-switch
.end method
