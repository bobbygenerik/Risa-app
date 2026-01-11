.class public abstract Lﹶﾞ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;


# instance fields
.field public volatile ʽ:J

.field public final ⁱˊ:Lˋˋ/ˈ;

.field public final ﹳٴ:Lﹶﾞ/יﹳ;


# direct methods
.method public constructor <init>(Lﹶﾞ/יﹳ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lﹶﾞ/ᵔʾ;->ﹳٴ:Lﹶﾞ/יﹳ;

    new-instance v0, Lˋˋ/ˈ;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1, p1}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p0, Lﹶﾞ/ᵔʾ;->ⁱˊ:Lˋˋ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lﹶﾞ/ᵔʾ;->ʽ:J

    invoke-virtual {p0}, Lﹶﾞ/ᵔʾ;->ˈ()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ᵔʾ;->ⁱˊ:Lˋˋ/ˈ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˈ()Landroid/os/Handler;
    .locals 4

    .prologue
    sget-object v0, Lﹶﾞ/ᵔʾ;->ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    if-eqz v0, :cond_0

    sget-object v0, Lﹶﾞ/ᵔʾ;->ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    return-object v0

    :cond_0
    const-class v0, Lﹶﾞ/ᵔʾ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lﹶﾞ/ᵔʾ;->ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object v2, p0, Lﹶﾞ/ᵔʾ;->ﹳٴ:Lﹶﾞ/יﹳ;

    invoke-interface {v2}, Lﹶﾞ/יﹳ;->ـˆ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ˉٴ;-><init>(Landroid/os/Looper;I)V

    sput-object v1, Lﹶﾞ/ᵔʾ;->ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lﹶﾞ/ᵔʾ;->ˈ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ⁱˊ(J)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵔʾ;->ʽ()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lﹶﾞ/ᵔʾ;->ﹳٴ:Lﹶﾞ/יﹳ;

    invoke-interface {v0}, Lﹶﾞ/יﹳ;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lﹶﾞ/ᵔʾ;->ʽ:J

    invoke-virtual {p0}, Lﹶﾞ/ᵔʾ;->ˈ()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lﹶﾞ/ᵔʾ;->ⁱˊ:Lˋˋ/ˈ;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lﹶﾞ/יﹳ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p1, p2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract ﹳٴ()V
.end method
