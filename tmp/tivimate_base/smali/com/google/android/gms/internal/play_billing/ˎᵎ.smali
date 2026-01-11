.class public final Lcom/google/android/gms/internal/play_billing/ˎᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ᴵˑ;


# instance fields
.field public final ʾˋ:Ljava/lang/ref/WeakReference;

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽᐧ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/ⁱʾ;-><init>(Lcom/google/android/gms/internal/play_billing/ˎᵎ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ʾˋ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ʾˋ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/יⁱ;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ʽ:Lcom/google/android/gms/internal/play_billing/ʾˏ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾˏ;->ʼˎ(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/יⁱ;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ⁱʾ;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
