.class public final Lᵔﹶ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ﾞʻ;


# instance fields
.field public final ʽ:Z

.field public final ⁱˊ:Lʼᵔ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʼᵔ/ﾞʻ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    iput-boolean p2, p0, Lᵔﹶ/יـ;->ʽ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lᵔﹶ/יـ;

    if-eqz v0, :cond_0

    check-cast p1, Lᵔﹶ/יـ;

    iget-object v0, p0, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    iget-object p1, p1, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;
    .locals 2

    .prologue
    invoke-static {p1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    invoke-interface {p2}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Lᵔﹶ/ﹳᐧ;->ﹳٴ(Lיᐧ/ﹳٴ;Landroid/graphics/drawable/Drawable;II)Lᵔﹶ/ʽ;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lᵔﹶ/יـ;->ʽ:Z

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to convert "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lᵔﹶ/יـ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-interface {v1, p1, v0, p3, p4}, Lʼᵔ/ﾞʻ;->ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Lʿʾ/ᵢˏ;->ˈ()V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Lᵔﹶ/ʽ;

    invoke-direct {p2, p1, p3}, Lᵔﹶ/ʽ;-><init>(Landroid/content/res/Resources;Lʿʾ/ᵢˏ;)V

    return-object p2
.end method
