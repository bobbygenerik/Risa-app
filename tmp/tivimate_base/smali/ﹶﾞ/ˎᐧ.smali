.class public abstract Lﹶﾞ/ˎᐧ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 1

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Lﹶﾞ/ᵎʻ;)V

    iget-object p1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget v0, p1, Lﹶﾞ/ᵎʻ;->ᵎᵔ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lﹶﾞ/ᵎʻ;->ᵎᵔ:I

    return-void
.end method


# virtual methods
.method public final ʽˑ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˋˊ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ﹶˎ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ﹶˎ()Z
.end method
