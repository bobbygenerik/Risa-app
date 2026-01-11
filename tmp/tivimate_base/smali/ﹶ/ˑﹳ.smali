.class public final Lﹶ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lʽⁱ/ˑﹳ;

.field public final ʽ:Landroid/os/Handler;

.field public ˆʾ:Z

.field public final ˈ:Lﹶ/ʽ;

.field public final ˑﹳ:Lʾʽ/ˈ;

.field public ᵎﹶ:Lﹶ/ⁱˊ;

.field public ᵔᵢ:Lⁱʽ/ﹳٴ;

.field public final ⁱˊ:Lٴˉ/ﹳٴ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Lﹶ/ˈ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lٴˉ/ﹳٴ;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lﹶ/ˑﹳ;->ⁱˊ:Lٴˉ/ﹳٴ;

    iput-object p3, p0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iput-object p4, p0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lﹶ/ˑﹳ;->ʽ:Landroid/os/Handler;

    new-instance p2, Lﹶ/ʽ;

    invoke-direct {p2, p0}, Lﹶ/ʽ;-><init>(Lﹶ/ˑﹳ;)V

    iput-object p2, p0, Lﹶ/ˑﹳ;->ˈ:Lﹶ/ʽ;

    new-instance p2, Lʾʽ/ˈ;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Lʾʽ/ˈ;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lﹶ/ˑﹳ;->ˑﹳ:Lʾʽ/ˈ;

    sget-object p2, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Amazon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Xiaomi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p4

    goto :goto_2

    :cond_2
    :goto_1
    const-string p2, "external_surround_sound_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_3

    new-instance p4, Lﹶ/ˈ;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lﹶ/ˈ;-><init>(Lﹶ/ˑﹳ;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    iput-object p4, p0, Lﹶ/ˑﹳ;->ﾞᴵ:Lﹶ/ˈ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lⁱʽ/ﹳٴ;

    invoke-direct {v1, p1}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    iget-object p1, p0, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v0, p0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    invoke-static {p1, v0, v1}, Lﹶ/ⁱˊ;->ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    return-void
.end method

.method public final ﹳٴ(Lﹶ/ⁱˊ;)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lﹶ/ˑﹳ;->ˆʾ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﹶ/ˑﹳ;->ᵎﹶ:Lﹶ/ⁱˊ;

    invoke-virtual {p1, v0}, Lﹶ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lﹶ/ˑﹳ;->ᵎﹶ:Lﹶ/ⁱˊ;

    iget-object v0, p0, Lﹶ/ˑﹳ;->ⁱˊ:Lٴˉ/ﹳٴ;

    iget-object v0, v0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾᵎ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lﹶ/ʾᵎ;->ـﹶ:Landroid/os/Looper;

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current looper ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "null"

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not the playback looper ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lﹶ/ʾᵎ;->ـﹶ:Landroid/os/Looper;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    iget-object v1, v0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Lﹶ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object p1, v0, Lﹶ/ʾᵎ;->ʾᵎ:Lﹶ/ⁱˊ;

    iget-object p1, v0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lᐧﹳ/ʽ;->ٴﹶ()V

    :cond_3
    return-void
.end method
