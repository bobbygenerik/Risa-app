.class public abstract Lcom/bumptech/glide/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ʾˋ:Lˈʼ/ˈ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lˈʼ/ⁱˊ;->ᴵˊ:Lˈʼ/ﹳٴ;

    iput-object v0, p0, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/ˉˆ;->ﹳٴ()Lcom/bumptech/glide/ˉˆ;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lcom/bumptech/glide/ˉˆ;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/ˉˆ;

    iget-object v0, p0, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    iget-object p1, p1, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    invoke-static {v0, p1}, Lʿٴ/ᵔʾ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()Lcom/bumptech/glide/ˉˆ;
    .locals 2

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ˉˆ;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
