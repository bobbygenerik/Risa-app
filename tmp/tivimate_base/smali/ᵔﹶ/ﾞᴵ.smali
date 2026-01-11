.class public final Lᵔﹶ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# instance fields
.field public final ⁱˊ:Lˉˈ/ⁱˊ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lᵔﹶ/ﾞᴵ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lˉˈ/ⁱˊ;

    invoke-direct {p1}, Lˉˈ/ⁱˊ;-><init>()V

    iput-object p1, p0, Lᵔﹶ/ﾞᴵ;->ⁱˊ:Lˉˈ/ⁱˊ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lˉˈ/ⁱˊ;

    invoke-direct {p1}, Lˉˈ/ⁱˊ;-><init>()V

    iput-object p1, p0, Lᵔﹶ/ﾞᴵ;->ⁱˊ:Lˉˈ/ⁱˊ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹶ/ﾞᴵ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lʿٴ/ⁱˊ;->ⁱˊ(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lᵔﹶ/ﾞᴵ;->ⁱˊ:Lˉˈ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˉˈ/ⁱˊ;->ʽ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lᵔﹶ/ﾞᴵ;->ⁱˊ:Lˉˈ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˉˈ/ⁱˊ;->ʽ(Landroid/graphics/ImageDecoder$Source;IILʼᵔ/ᵔᵢ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 0

    .prologue
    iget p2, p0, Lᵔﹶ/ﾞᴵ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
