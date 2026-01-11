.class public final Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
.super Lﹳⁱ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:Landroidx/media3/decoder/ffmpeg/ⁱˊ;

.field public ٴᵢ:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/ffmpeg/ⁱˊ;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lʻᴵ/ﾞᴵ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ˊʻ:Landroidx/media3/decoder/ffmpeg/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ʽﹳ()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ˊʻ:Landroidx/media3/decoder/ffmpeg/ⁱˊ;

    iget-object v0, v0, Landroidx/media3/decoder/ffmpeg/ⁱˊ;->ﹳٴ:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0, p0}, Lﹳⁱ/ᵎﹶ;->ˉˆ(Lﹳⁱ/ﾞᴵ;)V

    return-void
.end method

.method public final ˏי()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iput v0, p0, Lﹳⁱ/ﾞᴵ;->ˈٴ:I

    iput-boolean v0, p0, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method
