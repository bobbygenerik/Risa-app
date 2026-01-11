.class public final Lˆﾞ/ﹳٴ;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final ʾˋ:Lᴵי/ٴﹶ;


# direct methods
.method public constructor <init>(Lᴵי/ٴﹶ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lˆﾞ/ﹳٴ;->ʾˋ:Lᴵי/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lʻᵢ/ﾞᴵ;

    invoke-direct {v0, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lˆﾞ/ﹳٴ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆﾞ/ﹳٴ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContinuationOutcomeReceiver(outcomeReceived = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
