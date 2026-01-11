.class public final Lﹶי/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵי/ˆʾ;
.implements Lᴵי/ʽᵔ;


# instance fields
.field public final ʾˋ:Lᴵי/ٴﹶ;

.field public final synthetic ᴵˊ:Lﹶי/ʽ;


# direct methods
.method public constructor <init>(Lﹶי/ʽ;Lᴵי/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶי/ⁱˊ;->ᴵˊ:Lﹶי/ʽ;

    iput-object p2, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ˉʿ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)V
    .locals 3

    sget-object p1, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    iget-object v0, p0, Lﹶי/ⁱˊ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lᐧᵎ/ˆʾ;

    invoke-direct {p1, v0, p0}, Lᐧᵎ/ˆʾ;-><init>(Lﹶי/ʽ;Lﹶי/ⁱˊ;)V

    iget-object p2, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    iget v0, p2, Lᴵי/ᴵᵔ;->ʽʽ:I

    new-instance v1, Lʼⁱ/ˏי;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p1}, Lʼⁱ/ˏי;-><init>(ILjava/lang/Object;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p2, p1, v0, v1}, Lᴵי/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V

    return-void
.end method

.method public final ᵔʾ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔʾ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {v0, p1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﹳٴ(Lˊʽ/ﹳᐧ;I)V
    .locals 1

    iget-object v0, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {v0, p1, p2}, Lᴵי/ٴﹶ;->ﹳٴ(Lˊʽ/ﹳᐧ;I)V

    return-void
.end method

.method public final ﾞʻ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;
    .locals 2

    .prologue
    check-cast p1, Lʻᵢ/ʼᐧ;

    new-instance p2, Lʼⁱ/ˏי;

    iget-object v0, p0, Lﹶי/ⁱˊ;->ᴵˊ:Lﹶי/ʽ;

    invoke-direct {p2, v0, p0}, Lʼⁱ/ˏי;-><init>(Lﹶי/ʽ;Lﹶי/ⁱˊ;)V

    iget-object v1, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    invoke-virtual {v1, p1, p2}, Lᴵי/ٴﹶ;->ˉٴ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    iget-object v0, v0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    return-object v0
.end method
