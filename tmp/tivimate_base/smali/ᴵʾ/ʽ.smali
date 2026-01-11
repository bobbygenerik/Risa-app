.class public abstract Lᴵʾ/ʽ;
.super Lᴵʾ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public transient ʽʽ:Lˈי/ˈ;

.field public final ᴵˊ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    return-void
.end method

.method public constructor <init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0, p1}, Lᴵʾ/ﹳٴ;-><init>(Lˈי/ˈ;)V

    iput-object p2, p0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public ﹳᐧ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵʾ/ʽ;->ʽʽ:Lˈי/ˈ;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Lᴵʾ/ʽ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v1

    sget-object v2, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {v1, v2}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    check-cast v1, Lᴵי/ˏי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lˊʽ/ﾞᴵ;

    sget-object v1, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lˊʽ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ٴﹶ;

    if-eqz v1, :cond_1

    check-cast v0, Lᴵי/ٴﹶ;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    :cond_2
    sget-object v0, Lᴵʾ/ⁱˊ;->ʾˋ:Lᴵʾ/ⁱˊ;

    iput-object v0, p0, Lᴵʾ/ʽ;->ʽʽ:Lˈי/ˈ;

    return-void
.end method

.method public ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    return-object v0
.end method
