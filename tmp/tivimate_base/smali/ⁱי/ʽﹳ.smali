.class public final synthetic Lⁱי/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lⁱי/ʼʼ;

.field public final synthetic ʾˋ:Landroid/content/Context;

.field public final synthetic ˈٴ:Lʻʿ/יـ;

.field public final synthetic ᴵˊ:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLⁱי/ʼʼ;Lʻʿ/יـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʽﹳ;->ʾˋ:Landroid/content/Context;

    iput-boolean p2, p0, Lⁱי/ʽﹳ;->ᴵˊ:Z

    iput-object p3, p0, Lⁱי/ʽﹳ;->ʽʽ:Lⁱי/ʼʼ;

    iput-object p4, p0, Lⁱי/ʽﹳ;->ˈٴ:Lʻʿ/יـ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱי/ʽﹳ;->ʾˋ:Landroid/content/Context;

    iget-boolean v1, p0, Lⁱי/ʽﹳ;->ᴵˊ:Z

    iget-object v2, p0, Lⁱי/ʽﹳ;->ʽʽ:Lⁱי/ʼʼ;

    iget-object v3, p0, Lⁱי/ʽﹳ;->ˈٴ:Lʻʿ/יـ;

    invoke-static {v0}, Lʻʿ/ʼᐧ;->ᵎﹶ(Landroid/content/Context;)Lʻʿ/ʼᐧ;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v2, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    invoke-virtual {v1, v0}, Lᐧˎ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lʻʿ/ʼᐧ;->ʼˎ()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    monitor-enter v3

    :try_start_0
    iget-object v1, v3, Lʻʿ/יـ;->ⁱˊ:Lʻʿ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lʻʿ/ﹳᐧ;->ᵎﹶ(Landroid/media/metrics/LogSessionId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
