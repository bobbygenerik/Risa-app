.class public final synthetic Lˆﹶ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lᴵˋ/ﾞʻ;

.field public final synthetic ʾˋ:Lˆﹶ/ᵔﹳ;

.field public final synthetic ˈٴ:Landroid/content/Context;

.field public final synthetic ᴵˊ:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lˆﹶ/ᵔﹳ;Ljava/util/UUID;Lᴵˋ/ﾞʻ;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆﹶ/ʼᐧ;->ʾˋ:Lˆﹶ/ᵔﹳ;

    iput-object p2, p0, Lˆﹶ/ʼᐧ;->ᴵˊ:Ljava/util/UUID;

    iput-object p3, p0, Lˆﹶ/ʼᐧ;->ʽʽ:Lᴵˋ/ﾞʻ;

    iput-object p4, p0, Lˆﹶ/ʼᐧ;->ˈٴ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 10

    .prologue
    iget-object v0, p0, Lˆﹶ/ʼᐧ;->ʾˋ:Lˆﹶ/ᵔﹳ;

    iget-object v1, p0, Lˆﹶ/ʼᐧ;->ᴵˊ:Ljava/util/UUID;

    iget-object v2, p0, Lˆﹶ/ʼᐧ;->ʽʽ:Lᴵˋ/ﾞʻ;

    iget-object v3, p0, Lˆﹶ/ʼᐧ;->ˈٴ:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lˆﹶ/ᵔﹳ;->ʽ:Lˑᵎ/ʾᵎ;

    invoke-virtual {v4, v1}, Lˑᵎ/ʾᵎ;->ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v5}, Lᴵˋ/ˈٴ;->ﹳٴ()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, v0, Lˆﹶ/ᵔﹳ;->ⁱˊ:Lᵔʼ/ﹳٴ;

    check-cast v0, Lـʾ/ʽ;

    const-string v5, "Moving WorkSpec ("

    iget-object v6, v0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v7

    sget-object v8, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") to the foreground"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lـʾ/ʽ;->ᵎﹶ:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lـʾ/ʾˋ;

    if-eqz v5, :cond_2

    iget-object v7, v0, Lـʾ/ʽ;->ﹳٴ:Landroid/os/PowerManager$WakeLock;

    if-nez v7, :cond_0

    iget-object v7, v0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    invoke-static {v7}, Lˆﹶ/ˉʿ;->ﹳٴ(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v0, Lـʾ/ʽ;->ﹳٴ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v7, v0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    iget-object v5, v5, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    invoke-static {v5}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lᵔʼ/ⁱˊ;->ﹳٴ(Landroid/content/Context;Lˑᵎ/ﾞʻ;Lᴵˋ/ﾞʻ;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_1

    invoke-static {v0, v1}, Lˑˊ/ﹳٴ;->ˆʾ(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v0

    sget-object v1, Lᵔʼ/ⁱˊ;->ٴʼ:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_NOTIFY"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "KEY_NOTIFICATION_ID"

    iget v5, v2, Lᴵˋ/ﾞʻ;->ﹳٴ:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "KEY_FOREGROUND_SERVICE_TYPE"

    iget v5, v2, Lᴵˋ/ﾞʻ;->ⁱˊ:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "KEY_NOTIFICATION"

    iget-object v2, v2, Lᴵˋ/ﾞʻ;->ʽ:Landroid/app/Notification;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "KEY_WORKSPEC_ID"

    iget-object v4, v0, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_GENERATION"

    iget v0, v0, Lˑᵎ/ﾞʻ;->ⁱˊ:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
