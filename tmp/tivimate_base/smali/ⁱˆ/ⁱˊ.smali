.class public final Lⁱˆ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final ʽ:I

.field public final ˈ:Lʼᵔ/ﹳٴ;

.field public final ˑﹳ:Lᵔﹶ/ﾞʻ;

.field public final ᵎﹶ:Lʼᵔ/ʼˎ;

.field public final ⁱˊ:I

.field public final ﹳٴ:Lᵔﹶ/ʻٴ;

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(IILʼᵔ/ᵔᵢ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lᵔﹶ/ʻٴ;->ﹳٴ()Lᵔﹶ/ʻٴ;

    move-result-object v0

    iput-object v0, p0, Lⁱˆ/ⁱˊ;->ﹳٴ:Lᵔﹶ/ʻٴ;

    iput p1, p0, Lⁱˆ/ⁱˊ;->ⁱˊ:I

    iput p2, p0, Lⁱˆ/ⁱˊ;->ʽ:I

    sget-object p1, Lᵔﹶ/ʼᐧ;->ﾞᴵ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, p1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼᵔ/ﹳٴ;

    iput-object p1, p0, Lⁱˆ/ⁱˊ;->ˈ:Lʼᵔ/ﹳٴ;

    sget-object p1, Lᵔﹶ/ﾞʻ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, p1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔﹶ/ﾞʻ;

    iput-object p1, p0, Lⁱˆ/ⁱˊ;->ˑﹳ:Lᵔﹶ/ﾞʻ;

    sget-object p1, Lᵔﹶ/ʼᐧ;->ʼˎ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, p1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lⁱˆ/ⁱˊ;->ﾞᴵ:Z

    sget-object p1, Lᵔﹶ/ʼᐧ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, p1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼᵔ/ʼˎ;

    iput-object p1, p0, Lⁱˆ/ⁱˊ;->ᵎﹶ:Lʼᵔ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    .prologue
    iget-object p3, p0, Lⁱˆ/ⁱˊ;->ﹳٴ:Lᵔﹶ/ʻٴ;

    iget v0, p0, Lⁱˆ/ⁱˊ;->ⁱˊ:I

    iget v1, p0, Lⁱˆ/ⁱˊ;->ʽ:I

    iget-boolean v2, p0, Lⁱˆ/ⁱˊ;->ﾞᴵ:Z

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Lᵔﹶ/ʻٴ;->ʽ(IIZZ)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    :goto_0
    iget-object p3, p0, Lⁱˆ/ⁱˊ;->ˈ:Lʼᵔ/ﹳٴ;

    sget-object v0, Lʼᵔ/ﹳٴ;->ᴵˊ:Lʼᵔ/ﹳٴ;

    if-ne p3, v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    :cond_1
    new-instance p3, Lⁱˆ/ﹳٴ;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    const/high16 v0, -0x80000000

    iget v1, p0, Lⁱˆ/ⁱˊ;->ⁱˊ:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_2
    iget v2, p0, Lⁱˆ/ⁱˊ;->ʽ:I

    if-ne v2, v0, :cond_3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    :cond_3
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lⁱˆ/ⁱˊ;->ˑﹳ:Lᵔﹶ/ﾞʻ;

    invoke-virtual {v4, v0, v3, v1, v2}, Lᵔﹶ/ﾞʻ;->ⁱˊ(IIII)F

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "ImageDecoder"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Resizing from ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] to ["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] scaleFactor: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    iget-object p3, p0, Lⁱˆ/ⁱˊ;->ᵎﹶ:Lʼᵔ/ʼˎ;

    if-eqz p3, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    sget-object v0, Lʼᵔ/ʼˎ;->ʾˋ:Lʼᵔ/ʼˎ;

    if-ne p3, v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lᵔﹶ/ˉʿ;->ʼˎ()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-static {}, Lᵔﹶ/ˉʿ;->ٴﹶ()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    return-void

    :cond_6
    const/16 p2, 0x1a

    if-lt v0, p2, :cond_7

    invoke-static {}, Lᵔﹶ/ˉʿ;->ٴﹶ()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_7
    return-void
.end method
