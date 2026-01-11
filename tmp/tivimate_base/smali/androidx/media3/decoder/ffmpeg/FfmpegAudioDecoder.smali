.class final Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;
.super Lﹳⁱ/ᵎﹶ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\ufe73\u2071/\u1d4e\ufe76;"
    }
.end annotation


# instance fields
.field public volatile ʻٴ:I

.field public final ʼᐧ:[B

.field public volatile ʽﹳ:I

.field public final ˉˆ:Ljava/lang/String;

.field public ˏי:Z

.field public יـ:J

.field public final ᵔﹳ:I

.field public ﹳᐧ:I


# direct methods
.method public constructor <init>(ILʽⁱ/ﹳᐧ;Z)V
    .locals 10

    .prologue
    const/16 v0, 0x10

    new-array v1, v0, [Lﹳⁱ/ˑﹳ;

    new-array v0, v0, [Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-direct {p0, v1, v0}, Lﹳⁱ/ᵎﹶ;-><init>([Lﹳⁱ/ˑﹳ;[Lﹳⁱ/ﾞᴵ;)V

    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ˉˆ:Ljava/lang/String;

    iget-object v1, p2, Lʽⁱ/ﹳᐧ;->ᵔﹳ:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "audio/opus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "audio/alac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_0

    :sswitch_3
    const-string v3, "audio/vorbis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v8

    :goto_0
    const/4 v0, 0x4

    packed-switch v6, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    move-object v3, v1

    goto :goto_2

    :pswitch_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v3, 0x616c6163

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v3, v1

    invoke-virtual {v4, v1, v8, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_1

    :pswitch_2
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v6, v3

    array-length v9, v1

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x6

    new-array v6, v6, [B

    array-length v9, v3

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    array-length v9, v3

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    array-length v9, v3

    invoke-static {v3, v8, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v3

    add-int/2addr v9, v5

    aput-byte v8, v6, v9

    array-length v9, v3

    add-int/2addr v9, v4

    aput-byte v8, v6, v9

    array-length v4, v3

    add-int/2addr v4, v0

    array-length v9, v1

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    array-length v4, v3

    add-int/lit8 v4, v4, 0x5

    array-length v9, v1

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    array-length v3, v3

    add-int/lit8 v3, v3, 0x6

    array-length v4, v1

    invoke-static {v1, v8, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v6

    :goto_2
    iput-object v3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ:[B

    if-eqz p3, :cond_4

    move v5, v0

    :cond_4
    iput v5, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ᵔﹳ:I

    if-eqz p3, :cond_5

    const v0, 0x1fffe

    goto :goto_3

    :cond_5
    const v0, 0xffff

    :goto_3
    iput v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ﹳᐧ:I

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget v6, p2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegInitialize(Ljava/lang/String;[BZII)J

    move-result-wide p2

    iput-wide p2, v1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_8

    iget p2, v1, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    iget-object p3, v1, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    array-length v0, p3

    if-ne p2, v0, :cond_6

    goto :goto_4

    :cond_6
    move v7, v8

    :goto_4
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    array-length p2, p3

    :goto_5
    if-ge v8, p2, :cond_7

    aget-object v0, p3, v8

    invoke-virtual {v0, p1}, Lﹳⁱ/ˑﹳ;->ʻٴ(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    return-void

    :cond_8
    new-instance p1, Landroidx/media3/decoder/ffmpeg/FfmpegDecoderException;

    const-string p2, "Initialization failed."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object v1, p0

    new-instance p1, Landroidx/media3/decoder/ffmpeg/FfmpegDecoderException;

    const-string p2, "Failed to load decoder native libraries."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        -0x3313c2e -> :sswitch_2
        0x59ac6426 -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method private native ffmpegGetChannelCount(J)I
.end method

.method private native ffmpegGetSampleRate(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BZII)J
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReset(J[B)J
.end method

.method private growOutputBuffer(Landroidx/media3/decoder/SimpleDecoderOutputBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    iput p2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ﹳᐧ:I

    iget-object v0, p1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    if-lt p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput-object v1, p1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 2

    new-instance v0, Landroidx/media3/decoder/ffmpeg/FfmpegDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final ʼᐧ()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ffmpeg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ʽ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ˉˆ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ(Lﹳⁱ/ˑﹳ;Lﹳⁱ/ﾞᴵ;Z)Landroidx/media3/decoder/DecoderException;
    .locals 8

    .prologue
    move-object v5, p2

    check-cast v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz p3, :cond_0

    iget-wide p2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ:[B

    invoke-direct {p0, p2, p3, v0}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegReset(J[B)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    new-instance p1, Landroidx/media3/decoder/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error resetting (see logcat)."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v3, p1, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    iget-wide p1, p1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget p3, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ﹳᐧ:I

    iput-wide p1, v5, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iget-object p1, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_2

    :cond_1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object p1, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v6, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    iget v7, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ﹳᐧ:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I

    move-result p1

    const/4 p3, -0x2

    if-ne p1, p3, :cond_3

    new-instance p1, Landroidx/media3/decoder/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error decoding (see logcat)."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 p3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, p3, :cond_4

    iput-boolean v2, v5, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    return-object v1

    :cond_4
    if-nez p1, :cond_5

    iput-boolean v2, v5, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    return-object v1

    :cond_5
    iget-boolean p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ˏי:Z

    if-nez p3, :cond_7

    iget-wide v3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    invoke-direct {p0, v3, v4}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegGetChannelCount(J)I

    move-result p3

    iput p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʽﹳ:I

    iget-wide v3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    invoke-direct {p0, v3, v4}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegGetSampleRate(J)I

    move-result p3

    iput p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʻٴ:I

    iget p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʻٴ:I

    if-nez p3, :cond_6

    const-string p3, "alac"

    iget-object v3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ˉˆ:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ:[B

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lᐧˎ/ﹳᐧ;

    iget-object v3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ:[B

    invoke-direct {p3, v3}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iget-object v3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p3, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p3}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result p3

    iput p3, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʻٴ:I

    :cond_6
    iput-boolean v2, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ˏי:Z

    :cond_7
    iget-object p3, v5, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public final ᵎﹶ()Lﹳⁱ/ˑﹳ;
    .locals 3

    new-instance v0, Lﹳⁱ/ˑﹳ;

    const/4 v1, 0x2

    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ⁱˊ()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    return-object v0
.end method

.method public final ᵔᵢ()Lﹳⁱ/ﾞᴵ;
    .locals 2

    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    new-instance v1, Landroidx/media3/decoder/ffmpeg/ⁱˊ;

    invoke-direct {v1, p0}, Landroidx/media3/decoder/ffmpeg/ⁱˊ;-><init>(Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;)V

    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Landroidx/media3/decoder/ffmpeg/ⁱˊ;)V

    return-object v0
.end method

.method public final ﹳٴ()V
    .locals 2

    invoke-super {p0}, Lﹳⁱ/ᵎﹶ;->ﹳٴ()V

    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->יـ:J

    return-void
.end method
