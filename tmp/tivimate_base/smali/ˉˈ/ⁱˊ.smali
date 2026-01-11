.class public final Lˉˈ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lˉˈ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    iput-object v0, p0, Lˉˈ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lˉˈ/ʽ;I)V
    .locals 0

    iput p2, p0, Lˉˈ/ⁱˊ;->ﹳٴ:I

    iput-object p1, p0, Lˉˈ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lᵔﹶ/ʽ;
    .locals 3

    .prologue
    new-instance v0, Lⁱˆ/ⁱˊ;

    invoke-direct {v0, p2, p3, p4}, Lⁱˆ/ⁱˊ;-><init>(IILʼᵔ/ᵔᵢ;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p4, 0x2

    const-string v0, "BitmapImageDecoder"

    invoke-static {v0, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Decoded ["

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for ["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    :cond_0
    new-instance p2, Lᵔﹶ/ʽ;

    iget-object p3, p0, Lˉˈ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p3, Lﹳˋ/ʼˎ;

    invoke-direct {p2, p1, p3}, Lᵔﹶ/ʽ;-><init>(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)V

    return-object p2
.end method

.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 1

    .prologue
    iget v0, p0, Lˉˈ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lـﹶ/ʾᵎ;->ⁱˊ(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lˉˈ/ⁱˊ;->ʽ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lʿٴ/ⁱˊ;->ⁱˊ(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lˉˈ/ʽ;->ﹳٴ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lˉˈ/ﹳٴ;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lˉˈ/ʽ;->ﹳٴ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lˉˈ/ﹳٴ;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 1

    .prologue
    iget p2, p0, Lˉˈ/ⁱˊ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    invoke-static {p1}, Lـﹶ/ʾᵎ;->ⁱˊ(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    iget-object p2, p0, Lˉˈ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lˉˈ/ʽ;

    iget-object v0, p2, Lˉˈ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object p2, p2, Lˉˈ/ʽ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳᐧ(Ljava/util/List;Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p1, p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_0

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_1
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lˉˈ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lˉˈ/ʽ;

    iget-object p2, p2, Lˉˈ/ʽ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->יـ(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p1, p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_2

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
