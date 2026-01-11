.class public final Lﾞˏ/ﾞʻ;
.super Landroid/view/Surface;
.source "SourceFile"


# static fields
.field public static ˈٴ:I

.field public static ᴵᵔ:Z


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Z

.field public final ᴵˊ:Lﾞˏ/ٴﹶ;


# direct methods
.method public constructor <init>(Lﾞˏ/ٴﹶ;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lﾞˏ/ﾞʻ;->ᴵˊ:Lﾞˏ/ٴﹶ;

    iput-boolean p3, p0, Lﾞˏ/ﾞʻ;->ʾˋ:Z

    return-void
.end method

.method public static declared-synchronized ⁱˊ(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const-class v0, Lﾞˏ/ﾞʻ;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lﾞˏ/ﾞʻ;->ᴵᵔ:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0}, Lﾞˏ/ﾞʻ;->ﹳٴ(Landroid/content/Context;)I

    move-result p0

    sput p0, Lﾞˏ/ﾞʻ;->ˈٴ:I

    sput-boolean v2, Lﾞˏ/ﾞʻ;->ᴵᵔ:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget p0, Lﾞˏ/ﾞʻ;->ˈٴ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static ﹳٴ(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_2

    const-string v3, "samsung"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XT1650"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "EGL_EXT_protected_content"

    invoke-static {p0}, Lᐧˎ/ﹳٴ;->ـˆ(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_5

    const-string p0, "EGL_KHR_surfaceless_context"

    invoke-static {p0}, Lᐧˎ/ﹳٴ;->ـˆ(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    return v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to determine secure mode due to GL error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PlaceholderSurface"

    invoke-static {v1, p0}, Lᐧˎ/ﹳٴ;->ʼᐧ(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final release()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lﾞˏ/ﾞʻ;->ᴵˊ:Lﾞˏ/ٴﹶ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lﾞˏ/ﾞʻ;->ʽʽ:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lﾞˏ/ﾞʻ;->ᴵˊ:Lﾞˏ/ٴﹶ;

    iget-object v2, v1, Lﾞˏ/ٴﹶ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lﾞˏ/ٴﹶ;->ᴵˊ:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lﾞˏ/ﾞʻ;->ʽʽ:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
