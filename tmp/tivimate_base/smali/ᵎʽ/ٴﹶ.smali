.class public final synthetic Lᵎʽ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;
.implements Lˊʼ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎʽ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lᵎˈ/ᵔᵢ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lˊʼ/ᵎﹶ;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lˊʼ/ᵎﹶ;->ⁱˊ()Lʻᵢ/ﹳٴ;

    move-result-object v0

    check-cast p1, Lˊʼ/ᵎﹶ;

    invoke-interface {p1}, Lˊʼ/ᵎﹶ;->ⁱˊ()Lʻᵢ/ﹳٴ;

    move-result-object p1

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-interface {p0}, Lˊʼ/ᵎﹶ;->ⁱˊ()Lʻᵢ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ⁱˊ()Lʻᵢ/ﹳٴ;
    .locals 7

    new-instance v0, Lˊʼ/ﹳٴ;

    const-string v5, "set(Ljava/lang/Object;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    iget-object v2, p0, Lᵎʽ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "set"

    invoke-direct/range {v0 .. v6}, Lˊʼ/ﹳٴ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lᵎʽ/ᵎﹶ;

    iget-object p2, p0, Lᵎʽ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
