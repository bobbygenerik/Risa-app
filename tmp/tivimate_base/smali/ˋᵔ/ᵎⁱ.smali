.class public abstract Lˋᵔ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ⁱˊ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;
    .locals 1

    .prologue
    iget-object v0, p1, Lˋᵔ/ᵎﹶ;->ﹳٴ:Lˋᵔ/ﾞᴵ;

    invoke-interface {v0}, Lˋᵔ/ﾞᴵ;->ʽ()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lˋᵔ/ᵎﹶ;

    new-instance v0, Lʻʿ/ﹳᐧ;

    invoke-direct {v0, p0}, Lʻʿ/ﹳᐧ;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {p1, v0}, Lˋᵔ/ᵎﹶ;-><init>(Lˋᵔ/ﾞᴵ;)V

    return-object p1
.end method

.method public static ﹳٴ(Landroid/view/View;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
