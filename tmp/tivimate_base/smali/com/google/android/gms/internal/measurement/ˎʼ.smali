.class public abstract Lcom/google/android/gms/internal/measurement/ˎʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˉˆ/ˎـ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ʻˆ;->ﹳٴ:Landroid/net/Uri;

    const-class v0, Lcom/google/android/gms/internal/measurement/ˏʻ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳٴ:Lˉˆ/ˎـ;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ˎـ;

    invoke-direct {v1}, Lˉˆ/ˎـ;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʿ(Lˉˆ/ˎـ;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳٴ:Lˉˆ/ˎـ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sput-object v1, Lcom/google/android/gms/internal/measurement/ˎʼ;->ﹳٴ:Lˉˆ/ˎـ;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
