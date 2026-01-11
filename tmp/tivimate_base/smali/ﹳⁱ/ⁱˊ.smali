.class public final Lﹳⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field public final ﹳٴ:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳⁱ/ⁱˊ;->ﹳٴ:Landroid/media/MediaCodec$CryptoInfo;

    invoke-static {}, Lˉˏ/ﹳٴ;->ﹳٴ()Landroid/media/MediaCodec$CryptoInfo$Pattern;

    move-result-object p1

    iput-object p1, p0, Lﹳⁱ/ⁱˊ;->ⁱˊ:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public static ﹳٴ(Lﹳⁱ/ⁱˊ;II)V
    .locals 1

    iget-object v0, p0, Lﹳⁱ/ⁱˊ;->ⁱˊ:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p1, p0, Lﹳⁱ/ⁱˊ;->ﹳٴ:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p0, p0, Lﹳⁱ/ⁱˊ;->ⁱˊ:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {p1, p0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
