.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lـˋ/ﹳٴ;)Landroidx/media/AudioAttributesImplBase;
    .locals 3

    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase;-><init>()V

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lـˋ/ﹳٴ;->ﾞᴵ(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lـˋ/ﹳٴ;->ﾞᴵ(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lـˋ/ﹳٴ;->ﾞᴵ(II)I

    move-result v1

    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    iget v1, v0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lـˋ/ﹳٴ;->ﾞᴵ(II)I

    move-result p0

    iput p0, v0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplBase;Lـˋ/ﹳٴ;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ﹳٴ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lـˋ/ﹳٴ;->ˆʾ(II)V

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ⁱˊ:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lـˋ/ﹳٴ;->ˆʾ(II)V

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->ʽ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lـˋ/ﹳٴ;->ˆʾ(II)V

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->ˈ:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lـˋ/ﹳٴ;->ˆʾ(II)V

    return-void
.end method
