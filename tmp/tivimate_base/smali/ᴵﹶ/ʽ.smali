.class public final Lᴵﹶ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ﾞʻ;


# instance fields
.field public final ⁱˊ:Lʼᵔ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʼᵔ/ﾞʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lᴵﹶ/ʽ;

    if-eqz v0, :cond_0

    check-cast p1, Lᴵﹶ/ʽ;

    iget-object v0, p0, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    iget-object p1, p1, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;
    .locals 4

    .prologue
    invoke-interface {p2}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵﹶ/ⁱˊ;

    invoke-static {p1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    iget-object v2, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v2, v2, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lᴵﹶ/ﾞᴵ;

    iget-object v2, v2, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    new-instance v3, Lᵔﹶ/ʽ;

    invoke-direct {v3, v2, v1}, Lᵔﹶ/ʽ;-><init>(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)V

    iget-object v1, p0, Lᴵﹶ/ʽ;->ⁱˊ:Lʼᵔ/ﾞʻ;

    invoke-interface {v1, p1, v3, p3, p4}, Lʼᵔ/ﾞʻ;->ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v3}, Lᵔﹶ/ʽ;->ˈ()V

    :cond_0
    invoke-interface {p1}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object p3, p3, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p3, Lᴵﹶ/ﾞᴵ;

    invoke-virtual {p3, v1, p1}, Lᴵﹶ/ﾞᴵ;->ʽ(Lʼᵔ/ﾞʻ;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
