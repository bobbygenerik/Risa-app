.class public final Lٴﾞ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final ʾˋ:I

.field public final synthetic ᴵˊ:Lٴﾞ/ˑﹳ;


# direct methods
.method public constructor <init>(Lٴﾞ/ˑﹳ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    iput p2, p0, Lٴﾞ/ʼʼ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    if-nez p2, :cond_0

    invoke-static {p1}, Lٴﾞ/ˑﹳ;->ʼʼ(Lٴﾞ/ˑﹳ;)V

    return-void

    :cond_0
    iget-object p1, p1, Lٴﾞ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lٴﾞ/ﹳᐧ;

    if-eqz v2, :cond_1

    check-cast v1, Lٴﾞ/ﹳᐧ;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance v1, Lٴﾞ/ﹳᐧ;

    invoke-direct {v1, p2}, Lٴﾞ/ﹳᐧ;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v1, v0, Lٴﾞ/ˑﹳ;->ʼˎ:Lٴﾞ/ﹳᐧ;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    iget p2, p0, Lٴﾞ/ʼʼ;->ʾˋ:I

    new-instance v0, Lٴﾞ/ʾˋ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lٴﾞ/ʾˋ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/Bundle;)V

    iget-object p1, p1, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-virtual {p1, v1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    iget-object p1, p1, Lٴﾞ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lٴﾞ/ʼʼ;->ᴵˊ:Lٴﾞ/ˑﹳ;

    const/4 v1, 0x0

    iput-object v1, v0, Lٴﾞ/ˑﹳ;->ʼˎ:Lٴﾞ/ﹳᐧ;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lٴﾞ/ʼʼ;->ʾˋ:I

    iget-object v0, v0, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
