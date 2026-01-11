.class public abstract Lcom/google/android/gms/internal/play_billing/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʼˎ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼˎ;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʼˎ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʼˎ;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˆʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    return-void
.end method
