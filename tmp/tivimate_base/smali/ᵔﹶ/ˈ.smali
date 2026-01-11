.class public abstract Lᵔﹶ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ﾞʻ;


# virtual methods
.method public abstract ʽ(Lיᐧ/ﹳٴ;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;
    .locals 2

    .prologue
    invoke-static {p3, p4}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object p1

    iget-object p1, p1, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    invoke-interface {p2}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_0
    if-ne p4, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lᵔﹶ/ˈ;->ʽ(Lיᐧ/ﹳٴ;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-object p2

    :cond_2
    invoke-static {p3, p1}, Lᵔﹶ/ʽ;->ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " or height: "

    const-string v0, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    const-string v1, "Cannot apply transformation on width: "

    invoke-static {v1, p3, p2, p4, v0}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
