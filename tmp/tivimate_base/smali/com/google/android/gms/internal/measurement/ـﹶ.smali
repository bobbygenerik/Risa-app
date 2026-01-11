.class public abstract Lcom/google/android/gms/internal/measurement/ـﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Z

.field public final ʾˋ:J

.field public final synthetic ˈٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ᴵˊ:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʽʽ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ـﹶ;->ⁱˊ()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ـﹶ;->ﹳٴ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʽʽ:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ⁱˊ(Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ـﹶ;->ⁱˊ()V

    return-void
.end method

.method public ⁱˊ()V
    .locals 0

    return-void
.end method

.method public abstract ﹳٴ()V
.end method
