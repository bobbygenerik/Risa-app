.class public final Lᵎˈ/ˉٴ;
.super Lʿᵔ/ʽ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lʿᵔ/ﹳٴ;)[Lˈי/ˈ;
    .locals 1

    check-cast p1, Lᵎˈ/ٴᵢ;

    iget-object p1, p0, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lʿᵔ/ⁱˊ;->ﹳٴ:[Lˈי/ˈ;

    return-object p1
.end method

.method public final ﹳٴ(Lʿᵔ/ﹳٴ;)Z
    .locals 1

    .prologue
    check-cast p1, Lᵎˈ/ٴᵢ;

    iget-object p1, p0, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lᵎˈ/ˈٴ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
