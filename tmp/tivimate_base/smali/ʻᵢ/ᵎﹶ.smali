.class public abstract Lʻᵢ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static final ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    instance-of v0, p0, Lʻᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    check-cast p0, Lʻᵢ/ﾞᴵ;

    iget-object p0, p0, Lʻᵢ/ﾞᴵ;->ʾˋ:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
