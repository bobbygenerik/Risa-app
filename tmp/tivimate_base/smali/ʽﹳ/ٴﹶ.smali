.class public final Lʽﹳ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈˊ/ﹳᐧ;


# instance fields
.field public final ʾˋ:Ljava/lang/ref/WeakReference;

.field public final ᴵˊ:Lʽﹳ/ˆʾ;


# direct methods
.method public constructor <init>(Lʽﹳ/ᵔᵢ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʽﹳ/ˆʾ;

    invoke-direct {v0, p0}, Lʽﹳ/ˆʾ;-><init>(Lʽﹳ/ٴﹶ;)V

    iput-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʽﹳ/ٴﹶ;->ʾˋ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ʾˋ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽﹳ/ᵔᵢ;

    iget-object v1, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v1, p1}, Lʽﹳ/ᵎﹶ;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    iput-object v1, v0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    iget-object v0, v0, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    invoke-virtual {v0, v1}, Lʽﹳ/ᵎﹶ;->ٴﹶ(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0, p1, p2, p3}, Lʽﹳ/ᵎﹶ;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    iget-object v0, v0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lʽﹳ/ﹳٴ;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v0, p1, p2}, Lʽﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
