.class public final Lٴﾞ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lٴﾞ/ᴵᵔ;->ʾˋ:I

    iput-object p2, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ﹳٴ(Landroid/os/Message;)Z
    .locals 1

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑי/ﹳٴ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_1

    iget-object p1, v0, Lˑי/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    iget v0, p0, Lٴﾞ/ᴵᵔ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lᴵﹶ/ˈ;

    invoke-virtual {v0, p1}, Lᴵﹶ/ﾞᴵ;->ⁱˊ(Lᴵﹶ/ˈ;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lᴵﹶ/ˈ;

    iget-object v0, v0, Lᴵﹶ/ﾞᴵ;->ˈ:Lcom/bumptech/glide/ᵔʾ;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lٴﾞ/ᴵᵔ;->ﹳٴ(Landroid/os/Message;)Z

    move-result p1

    return p1

    :pswitch_1
    const-string v0, "Timeout waiting for ServiceConnection callback "

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lٴﾞ/ʽʽ;

    iget-object v2, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lٴﾞ/ˊʻ;

    iget-object v2, v2, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴﾞ/ˈٴ;

    if-eqz v2, :cond_5

    iget v4, v2, Lٴﾞ/ˈٴ;->ᴵˊ:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    const-string v4, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    nop

    iget-object v0, v2, Lٴﾞ/ˈٴ;->ˊʻ:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Landroid/content/ComponentName;

    iget-object p1, p1, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const-string v4, "unknown"

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, v0}, Lٴﾞ/ˈٴ;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_5
    monitor-exit v1

    :goto_2
    move v2, v3

    goto :goto_5

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    iget-object v0, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lٴﾞ/ˊʻ;

    iget-object v0, v0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lٴﾞ/ʽʽ;

    iget-object v1, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴﾞ/ˈٴ;

    if-eqz v1, :cond_8

    iget-object v4, v1, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v1, Lٴﾞ/ˈٴ;->ʽʽ:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    iget-object v5, v1, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v5, v5, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v1, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v5, v4, Lٴﾞ/ˊʻ;->ˈ:Lˑʻ/ﹳٴ;

    iget-object v4, v4, Lٴﾞ/ˊʻ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v5, v4, v1}, Lˑʻ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v2, v1, Lٴﾞ/ˈٴ;->ʽʽ:Z

    const/4 v2, 0x2

    iput v2, v1, Lٴﾞ/ˈٴ;->ᴵˊ:I

    :cond_7
    iget-object v1, p0, Lٴﾞ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_8
    :goto_4
    monitor-exit v0

    goto :goto_2

    :goto_5
    return v2

    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
