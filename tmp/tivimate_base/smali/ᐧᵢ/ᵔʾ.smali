.class public final Lᐧᵢ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ˈ;


# instance fields
.field public final ʾˋ:Ljava/util/concurrent/Executor;

.field public final ᴵˊ:Lᐧᵢ/ˈ;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lᐧᵢ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ᵔʾ;->ʾˋ:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {v0}, Lᐧᵢ/ˈ;->cancel()V

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᐧᵢ/ᵔʾ;->clone()Lᐧᵢ/ˈ;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lᐧᵢ/ˈ;
    .locals 3

    new-instance v0, Lᐧᵢ/ᵔʾ;

    iget-object v1, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {v1}, Lᐧᵢ/ˈ;->clone()Lᐧᵢ/ˈ;

    move-result-object v1

    iget-object v2, p0, Lᐧᵢ/ᵔʾ;->ʾˋ:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2, v1}, Lᐧᵢ/ᵔʾ;-><init>(Ljava/util/concurrent/Executor;Lᐧᵢ/ˈ;)V

    return-object v0
.end method

.method public final ʽ()Lᐧᵢ/ʼˈ;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {v0}, Lᐧᵢ/ˈ;->ʽ()Lᐧᵢ/ʼˈ;

    move-result-object v0

    return-object v0
.end method

.method public final ˉˆ(Lᐧᵢ/ᵎﹶ;)V
    .locals 3

    new-instance v0, Lـʾ/ᵔﹳ;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {p1, v0}, Lᐧᵢ/ˈ;->ˉˆ(Lᐧᵢ/ᵎﹶ;)V

    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {v0}, Lᐧᵢ/ˈ;->ᵎﹶ()Z

    move-result v0

    return v0
.end method

.method public final ﹳᐧ()Lˎᵢ/ʾᵎ;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵔʾ;->ᴵˊ:Lᐧᵢ/ˈ;

    invoke-interface {v0}, Lᐧᵢ/ˈ;->ﹳᐧ()Lˎᵢ/ʾᵎ;

    move-result-object v0

    return-object v0
.end method
