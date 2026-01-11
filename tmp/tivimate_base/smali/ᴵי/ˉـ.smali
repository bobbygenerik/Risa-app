.class public Lᴵי/ˉـ;
.super Lᴵי/ᐧᴵ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Z


# direct methods
.method public constructor <init>(Lᴵי/ᴵˑ;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lᴵי/ᐧᴵ;-><init>(Z)V

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ٴʼ(Lᴵי/ᴵˑ;)V

    sget-object p1, Lᴵי/ᐧᴵ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔʾ;

    instance-of v2, v1, Lᴵי/ˉˆ;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lᴵי/ˉˆ;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Lᴵי/ᐧᴵ;->ᴵᵔ()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔʾ;

    instance-of v4, v1, Lᴵי/ˉˆ;

    if-eqz v4, :cond_4

    check-cast v1, Lᴵי/ˉˆ;

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_6

    iget-object v1, v1, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_2

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lᴵי/ˉـ;->ʽʽ:Z

    return-void
.end method


# virtual methods
.method public final ˊʻ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᴵᵔ()Z
    .locals 1

    iget-boolean v0, p0, Lᴵי/ˉـ;->ʽʽ:Z

    return v0
.end method
