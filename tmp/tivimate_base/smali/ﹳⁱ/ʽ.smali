.class public final Lﹳⁱ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Landroid/media/MediaCodec$CryptoInfo;

.field public ʽ:I

.field public final ˆʾ:Lﹳⁱ/ⁱˊ;

.field public ˈ:[I

.field public ˑﹳ:[I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ⁱˊ:[B

.field public ﹳٴ:[B

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lﹳⁱ/ʽ;->ʼˎ:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Lﹳⁱ/ⁱˊ;

    invoke-direct {v1, v0}, Lﹳⁱ/ⁱˊ;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lﹳⁱ/ʽ;->ˆʾ:Lﹳⁱ/ⁱˊ;

    return-void
.end method
