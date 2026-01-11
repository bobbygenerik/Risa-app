.class public final Lⁱי/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:I

.field public ˆʾ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ٴﹶ:J

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﾞʻ:I

.field public ﾞᴵ:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lⁱי/ﾞᴵ;->ﹳٴ:I

    iget v2, v0, Lⁱי/ﾞᴵ;->ⁱˊ:I

    iget v3, v0, Lⁱי/ﾞᴵ;->ʽ:I

    iget v4, v0, Lⁱי/ﾞᴵ;->ˈ:I

    iget v5, v0, Lⁱי/ﾞᴵ;->ˑﹳ:I

    iget v6, v0, Lⁱי/ﾞᴵ;->ﾞᴵ:I

    iget v7, v0, Lⁱי/ﾞᴵ;->ᵎﹶ:I

    iget v8, v0, Lⁱי/ﾞᴵ;->ᵔᵢ:I

    iget v9, v0, Lⁱי/ﾞᴵ;->ʼˎ:I

    iget v10, v0, Lⁱי/ﾞᴵ;->ˆʾ:I

    iget-wide v11, v0, Lⁱי/ﾞᴵ;->ٴﹶ:J

    iget v13, v0, Lⁱי/ﾞᴵ;->ﾞʻ:I

    sget-object v14, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, ",\n decoderReleases="

    const-string v15, "\n queuedInputBuffers="

    const-string v0, "DecoderCounters {\n decoderInits="

    invoke-static {v0, v1, v14, v2, v15}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n skippedInputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n renderedOutputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n skippedOutputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedInputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n maxConsecutiveDroppedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedToKeyframeEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n totalVideoFrameProcessingOffsetUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n videoFrameProcessingOffsetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
