.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/ʾᵎ;
.source "SourceFile"


# static fields
.field public static final ᴵᵔ:Ljava/lang/String;


# instance fields
.field public ʽʽ:Lᵔʼ/ⁱˊ;

.field public ˈٴ:Landroid/app/NotificationManager;

.field public ᴵˊ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->ᴵᵔ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ʾᵎ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/ʾᵎ;->onCreate()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->ﹳٴ()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ʾᵎ;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    invoke-virtual {v0}, Lᵔʼ/ⁱˊ;->ʽ()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ᴵˊ:Z

    sget-object p3, Landroidx/work/impl/foreground/SystemForegroundService;->ᴵᵔ:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p2

    const-string v0, "Re-initializing SystemForegroundService after a request to shut-down."

    invoke-virtual {p2, p3, v0}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    invoke-virtual {p2}, Lᵔʼ/ⁱˊ;->ʽ()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->ﹳٴ()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ᴵˊ:Z

    :cond_0
    if-eqz p1, :cond_5

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᵔʼ/ⁱˊ;->ٴʼ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_START_FOREGROUND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    if-eqz v2, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started foreground service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p2, Lᵔʼ/ⁱˊ;->ᴵˊ:Lᐧᵎ/ᵢי;

    new-instance v1, Lˋˋ/ˈ;

    const/16 v2, 0x14

    invoke-direct {v1, p2, v2, p3}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Lᵔʼ/ⁱˊ;->ⁱˊ(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "ACTION_NOTIFY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Lᵔʼ/ⁱˊ;->ⁱˊ(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "ACTION_CANCEL_WORK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping foreground work for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p2, p2, Lᵔʼ/ⁱˊ;->ʾˋ:Lـʾ/ﹳᐧ;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iget-object p3, p2, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object p3, p3, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    iget-object v0, p2, Lـʾ/ﹳᐧ;->ﾞᴵ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ˈʿ;

    new-instance v1, Lʽˋ/ـˆ;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2, p1}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p1, "CancelWorkById"

    invoke-static {p3, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔʾ(Lᴵˋ/ˆʾ;Ljava/lang/String;Ljava/util/concurrent/Executor;Lᴵⁱ/ﹳٴ;)Lᴵˋ/ˆʾ;

    goto :goto_0

    :cond_3
    const-string p1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    const-string v1, "Stopping foreground service"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lᵔʼ/ⁱˊ;->ᵎⁱ:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/work/impl/foreground/SystemForegroundService;->ᴵˊ:Z

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    const-string v1, "Shutting down."

    invoke-virtual {v0, p3, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_4

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_5
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public final onTimeout(I)V
    .locals 1

    .prologue
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lᵔʼ/ⁱˊ;->ﾞᴵ(I)V

    return-void
.end method

.method public final onTimeout(II)V
    .locals 0

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    invoke-virtual {p1, p2}, Lᵔʼ/ⁱˊ;->ﾞᴵ(I)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ˈٴ:Landroid/app/NotificationManager;

    new-instance v0, Lᵔʼ/ⁱˊ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lᵔʼ/ⁱˊ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->ʽʽ:Lᵔʼ/ⁱˊ;

    iget-object v1, v0, Lᵔʼ/ⁱˊ;->ᵎⁱ:Landroidx/work/impl/foreground/SystemForegroundService;

    if-eqz v1, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lᵔʼ/ⁱˊ;->ٴʼ:Ljava/lang/String;

    const-string v2, "A callback already exists."

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p0, v0, Lᵔʼ/ⁱˊ;->ᵎⁱ:Landroidx/work/impl/foreground/SystemForegroundService;

    return-void
.end method
