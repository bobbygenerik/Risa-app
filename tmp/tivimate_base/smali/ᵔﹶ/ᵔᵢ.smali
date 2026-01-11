.class public final Lᵔﹶ/ᵔᵢ;
.super Lᵔﹶ/ˈ;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    sget-object v1, Lʼᵔ/ˑﹳ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lᵔﹶ/ᵔᵢ;->ⁱˊ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lᵔﹶ/ᵔᵢ;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, -0x27f31906

    return v0
.end method

.method public final ʽ(Lיᐧ/ﹳٴ;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    sget-object v0, Lᵔﹶ/ʾˋ;->ﹳٴ:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "TransformationUtils"

    if-gt v0, p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p4, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "requested target size larger or equal to input, returning input"

    nop

    :cond_0
    return-object p2

    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "requested target size too big for input, fit centering instead"

    nop

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lᵔﹶ/ʾˋ;->ⁱˊ(Lיᐧ/ﹳٴ;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Lᵔﹶ/ᵔᵢ;->ⁱˊ:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
