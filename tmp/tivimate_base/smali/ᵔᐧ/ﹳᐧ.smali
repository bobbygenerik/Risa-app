.class public final Lᵔᐧ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ˈٴ:Ljava/util/logging/Logger;


# instance fields
.field public final ʽʽ:Lᵔᐧ/ʽ;

.field public final ʾˋ:Lˊᐧ/ᵔᵢ;

.field public final ᴵˊ:Lᵔᐧ/ᵔﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lᵔᐧ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ﹳᐧ;->ˈٴ:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ᵔᵢ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    new-instance v0, Lᵔᐧ/ᵔﹳ;

    invoke-direct {v0, p1}, Lᵔᐧ/ᵔﹳ;-><init>(Lˊᐧ/ᵔᵢ;)V

    iput-object v0, p0, Lᵔᐧ/ﹳᐧ;->ᴵˊ:Lᵔᐧ/ᵔﹳ;

    new-instance p1, Lᵔᐧ/ʽ;

    invoke-direct {p1, v0}, Lᵔᐧ/ʽ;-><init>(Lᵔᐧ/ᵔﹳ;)V

    iput-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʽʽ:Lᵔᐧ/ʽ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final ʽ(ZLᵔᐧ/ˉʿ;)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lˊᐧ/ᵔᵢ;->ᐧﾞ(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-static {v1}, Lⁱᐧ/ʽ;->ﾞʻ(Lˊᐧ/ᵔᵢ;)I

    move-result v1

    const/16 v2, 0x4000

    if-gt v1, v2, :cond_1f

    iget-object v3, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v3}, Lˊᐧ/ᵔᵢ;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v4}, Lˊᐧ/ᵔᵢ;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    iget-object v6, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v6}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eq v3, v8, :cond_0

    sget-object v10, Lᵔᐧ/ﹳᐧ;->ˈٴ:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v9, v7, v1, v3, v5}, Lᵔᐧ/ﾞᴵ;->ⁱˊ(ZIIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v10, 0x4

    if-eqz p1, :cond_2

    if-ne v3, v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lᵔᐧ/ﾞᴵ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x5

    packed-switch v3, :pswitch_data_0

    iget-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lˊᐧ/ᵔᵢ;->skip(J)V

    return v9

    :pswitch_0
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: "

    if-ne v1, v10, :cond_7

    :try_start_1
    iget-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p1}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v2, 0x7fffffff

    int-to-long v10, p1

    and-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long p1, v2, v10

    if-eqz p1, :cond_6

    sget-object v0, Lᵔᐧ/ﹳᐧ;->ˈٴ:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v7, v1, v2, v3, v9}, Lᵔᐧ/ﾞᴵ;->ʽ(IIJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    if-nez v7, :cond_4

    iget-object p1, p2, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    monitor-enter p1

    :try_start_2
    iget-wide v0, p1, Lᵔᐧ/ᵔʾ;->ﹳـ:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lᵔᐧ/ᵔʾ;->ﹳـ:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    return v9

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_4
    iget-object p2, p2, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {p2, v7}, Lᵔᐧ/ᵔʾ;->ᵎﹶ(I)Lᵔᐧ/ʻٴ;

    move-result-object p2

    if-eqz p2, :cond_19

    monitor-enter p2

    :try_start_3
    iget-wide v0, p2, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    if-lez p1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    monitor-exit p2

    return v9

    :catchall_1
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_6
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "windowSizeIncrement was 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object p2, Lᵔᐧ/ﹳᐧ;->ˈٴ:Ljava/util/logging/Logger;

    invoke-static {v9, v7, v1, v8, v5}, Lᵔᐧ/ﾞᴵ;->ⁱˊ(ZIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, p2, v1, v7}, Lᵔᐧ/ﹳᐧ;->ˉˆ(Lᵔᐧ/ˉʿ;II)V

    return v9

    :pswitch_2
    invoke-virtual {p0, p2, v1, v5, v7}, Lᵔᐧ/ﹳᐧ;->ʾˋ(Lᵔᐧ/ˉʿ;III)V

    return v9

    :pswitch_3
    invoke-virtual {p0, p2, v1, v5, v7}, Lᵔᐧ/ﹳᐧ;->ˈٴ(Lᵔᐧ/ˉʿ;III)V

    return v9

    :pswitch_4
    iget-object v3, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    if-nez v7, :cond_15

    and-int/2addr v4, v9

    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    goto/16 :goto_6

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    rem-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_14

    new-instance v4, Lᵔᐧ/ᵢˏ;

    invoke-direct {v4}, Lᵔᐧ/ᵢˏ;-><init>()V

    invoke-static {v0, v1}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lˈˊ/ˉˆ;->ᴵᵔ(Lʿˈ/ʽ;I)Lʿˈ/ﹳٴ;

    move-result-object v0

    iget v1, v0, Lʿˈ/ﹳٴ;->ʾˋ:I

    iget v5, v0, Lʿˈ/ﹳٴ;->ᴵˊ:I

    iget v0, v0, Lʿˈ/ﹳٴ;->ʽʽ:I

    if-lez v0, :cond_a

    if-le v1, v5, :cond_b

    :cond_a
    if-gez v0, :cond_13

    if-gt v5, v1, :cond_13

    :cond_b
    :goto_2
    invoke-interface {v3}, Lˊᐧ/ᵔᵢ;->readShort()S

    move-result v6

    sget-object v7, Lⁱᐧ/ʽ;->ﹳٴ:[B

    const v7, 0xffff

    and-int/2addr v6, v7

    invoke-interface {v3}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result v7

    const/4 v8, 0x2

    if-eq v6, v8, :cond_10

    if-eq v6, v10, :cond_e

    if-eq v6, p1, :cond_c

    goto :goto_3

    :cond_c
    if-lt v7, v2, :cond_d

    const v8, 0xffffff

    if-gt v7, v8, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v7, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-ltz v7, :cond_f

    goto :goto_3

    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-eqz v7, :cond_12

    if-ne v7, v9, :cond_11

    goto :goto_3

    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_3
    invoke-virtual {v4, v6, v7}, Lᵔᐧ/ᵢˏ;->ⁱˊ(II)V

    if-eq v1, v5, :cond_13

    add-int/2addr v1, v0

    goto :goto_2

    :cond_13
    iget-object p1, p2, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget-object v0, p1, Lᵔᐧ/ᵔʾ;->ˉٴ:Lﾞʿ/ⁱˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    const-string v2, " applyAndAckSettings"

    invoke-static {v1, p1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lʽˋ/ـˆ;

    const/16 v2, 0x13

    invoke-direct {v1, p2, v2, v4}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0, p1, v1}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return v9

    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    if-ne v1, v10, :cond_1c

    if-eqz v7, :cond_1b

    iget-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p1}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result p1

    const/16 v1, 0xe

    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ˑﹳ(I)[I

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_17

    aget v4, v1, v3

    invoke-static {v4}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v5

    if-ne v5, p1, :cond_16

    move v0, v4

    goto :goto_5

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_17
    :goto_5
    if-eqz v0, :cond_1a

    iget-object p1, p2, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    if-eqz v7, :cond_18

    and-int/lit8 p2, v6, 0x1

    if-nez p2, :cond_18

    iget-object p2, p1, Lᵔᐧ/ᵔʾ;->ᵎⁱ:Lﾞʿ/ⁱˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lᵔᐧ/ˆʾ;

    invoke-direct {v2, p1, v7, v0}, Lᵔᐧ/ˆʾ;-><init>(Lᵔᐧ/ᵔʾ;II)V

    invoke-static {p2, v1, v2}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return v9

    :cond_18
    invoke-virtual {p1, v7}, Lᵔᐧ/ᵔʾ;->ﹳᐧ(I)Lᵔᐧ/ʻٴ;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1, v0}, Lᵔᐧ/ʻٴ;->ˆʾ(I)V

    :cond_19
    :goto_6
    return v9

    :cond_1a
    new-instance p2, Ljava/io/IOException;

    const-string v0, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {p1, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM length: "

    const-string v0, " != 4"

    invoke-static {v1, p2, v0}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne v1, p1, :cond_1e

    if-eqz v7, :cond_1d

    iget-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p1}, Lˊᐧ/ᵔᵢ;->readInt()I

    invoke-interface {p1}, Lˊᐧ/ᵔᵢ;->readByte()B

    return v9

    :cond_1d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY length: "

    const-string v0, " != 5"

    invoke-static {v1, p2, v0}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    invoke-virtual {p0, p2, v1, v5, v7}, Lᵔᐧ/ﹳᐧ;->ـˆ(Lᵔᐧ/ˉʿ;III)V

    return v9

    :pswitch_8
    invoke-virtual {p0, p2, v1, v5, v7}, Lᵔᐧ/ﹳᐧ;->ᵎﹶ(Lᵔᐧ/ˉʿ;III)V

    return v9

    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR: "

    invoke-static {v1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ʾˋ(Lᵔᐧ/ˉʿ;III)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    if-nez p4, :cond_5

    iget-object p2, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p2}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result p2

    iget-object p4, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p4}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    iget-object p1, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    monitor-enter p1

    const-wide/16 p3, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_2
    iget-wide v0, p1, Lᵔᐧ/ᵔʾ;->ᵔٴ:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lᵔᐧ/ᵔʾ;->ᵔٴ:J

    goto :goto_1

    :cond_3
    iget-wide v0, p1, Lᵔᐧ/ᵔʾ;->ᵔי:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lᵔᐧ/ᵔʾ;->ᵔי:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p2

    :cond_4
    iget-object p3, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget-object p3, p3, Lᵔᐧ/ᵔʾ;->ˉٴ:Lﾞʿ/ⁱˊ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget-object v1, v1, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    const-string v2, " ping"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    new-instance v1, Lᵔᐧ/ᵔᵢ;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p4, v2}, Lᵔᐧ/ᵔᵢ;-><init>(Lᵔᐧ/ᵔʾ;III)V

    invoke-static {p3, v0, v1}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p3, "TYPE_PING length != 8: "

    invoke-static {p2, p3}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈٴ(Lᵔᐧ/ˉʿ;III)V
    .locals 3

    .prologue
    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v0}, Lˊᐧ/ᵔᵢ;->readByte()B

    move-result v0

    sget-object v1, Lⁱᐧ/ʽ;->ﹳٴ:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v1}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lᵔᐧ/ʼᐧ;->ﹳٴ(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lᵔᐧ/ﹳᐧ;->ﹳᐧ(IIII)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    monitor-enter p1

    :try_start_0
    iget-object p3, p1, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, Lᵔᐧ/ᵔʾ;->ᵎˊ(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p3, p1, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p3, p1, Lᵔᐧ/ᵔʾ;->ᵎⁱ:Lﾞʿ/ⁱˊ;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] onRequest"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lᵔᐧ/ˆʾ;

    invoke-direct {v0, p1, v1, p2}, Lᵔᐧ/ˆʾ;-><init>(Lᵔᐧ/ᵔʾ;ILjava/util/List;)V

    invoke-static {p3, p4, v0}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return-void

    :goto_1
    monitor-exit p1

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˉˆ(Lᵔᐧ/ˉʿ;II)V
    .locals 8

    .prologue
    const/16 v0, 0x8

    if-lt p2, v0, :cond_7

    if-nez p3, :cond_6

    iget-object p3, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {p3}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result p3

    iget-object v1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v1}, Lˊᐧ/ᵔᵢ;->readInt()I

    move-result v1

    sub-int/2addr p2, v0

    const/16 v2, 0xe

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˑﹳ(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    invoke-static {v6}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v6, :cond_5

    sget-object v1, Lˊᐧ/ʼˎ;->ˈٴ:Lˊᐧ/ʼˎ;

    if-lez p2, :cond_2

    iget-object v1, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    int-to-long v2, p2

    invoke-interface {v1, v2, v3}, Lˊᐧ/ᵔᵢ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    iget-object p2, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lᵔᐧ/ᵔʾ;->ᴵˊ:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v2, v4, [Lᵔᐧ/ʻٴ;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p2, Lᵔᐧ/ᵔʾ;->ˊʻ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast v1, [Lᵔᐧ/ʻٴ;

    array-length p2, v1

    :goto_2
    if-ge v4, p2, :cond_4

    aget-object v2, v1, v4

    iget v3, v2, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    if-le v3, p3, :cond_3

    invoke-virtual {v2}, Lᵔᐧ/ʻٴ;->ᵎﹶ()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Lᵔᐧ/ʻٴ;->ˆʾ(I)V

    iget-object v3, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v2, v2, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {v3, v2}, Lᵔᐧ/ᵔʾ;->ﹳᐧ(I)Lᵔᐧ/ʻٴ;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p3, "TYPE_GOAWAY length < 8: "

    invoke-static {p2, p3}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ـˆ(Lᵔᐧ/ˉʿ;III)V
    .locals 8

    .prologue
    if-eqz p4, :cond_8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v0}, Lˊᐧ/ᵔᵢ;->readByte()B

    move-result v0

    sget-object v1, Lⁱᐧ/ʽ;->ﹳٴ:[B

    and-int/lit16 v1, v0, 0xff

    :cond_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v0}, Lˊᐧ/ᵔᵢ;->readInt()I

    invoke-interface {v0}, Lˊᐧ/ᵔᵢ;->readByte()B

    sget-object v0, Lⁱᐧ/ʽ;->ﹳٴ:[B

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v1}, Lᵔᐧ/ʼᐧ;->ﹳٴ(III)I

    move-result p2

    invoke-virtual {p0, p2, v1, p3, p4}, Lᵔᐧ/ﹳᐧ;->ﹳᐧ(IIII)Ljava/util/List;

    move-result-object p2

    iget-object v4, p1, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    const/16 p1, 0x5b

    if-eqz p4, :cond_3

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, v4, Lᵔᐧ/ᵔʾ;->ᵎⁱ:Lﾞʿ/ⁱˊ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onHeaders"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lᵔᐧ/ˆʾ;

    invoke-direct {v0, v4, p4, p2, v6}, Lᵔᐧ/ˆʾ;-><init>(Lᵔᐧ/ᵔʾ;ILjava/util/List;Z)V

    invoke-static {p3, p1, v0}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return-void

    :cond_3
    monitor-enter v4

    :try_start_0
    invoke-virtual {v4, p4}, Lᵔᐧ/ᵔʾ;->ᵎﹶ(I)Lᵔᐧ/ʻٴ;

    move-result-object p3

    if-nez p3, :cond_7

    iget-boolean p3, v4, Lᵔᐧ/ᵔʾ;->ˊʻ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    monitor-exit v4

    return-void

    :cond_4
    :try_start_1
    iget p3, v4, Lᵔᐧ/ᵔʾ;->ˈٴ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p4, p3, :cond_5

    monitor-exit v4

    return-void

    :cond_5
    :try_start_2
    rem-int/lit8 p3, p4, 0x2

    iget v0, v4, Lᵔᐧ/ᵔʾ;->ᴵᵔ:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v0, :cond_6

    monitor-exit v4

    return-void

    :cond_6
    :try_start_3
    invoke-static {p2}, Lⁱᐧ/ˑﹳ;->ᵔᵢ(Ljava/util/List;)Lˎᵢ/ˉˆ;

    move-result-object v7

    new-instance v2, Lᵔᐧ/ʻٴ;

    const/4 v5, 0x0

    move v3, p4

    invoke-direct/range {v2 .. v7}, Lᵔᐧ/ʻٴ;-><init>(ILᵔᐧ/ᵔʾ;ZZLˎᵢ/ˉˆ;)V

    iput v3, v4, Lᵔᐧ/ᵔʾ;->ˈٴ:I

    iget-object p2, v4, Lᵔᐧ/ᵔʾ;->ᴵˊ:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v4, Lᵔᐧ/ᵔʾ;->ٴᵢ:Lﾞʿ/ʽ;

    invoke-virtual {p2}, Lﾞʿ/ʽ;->ˈ()Lﾞʿ/ⁱˊ;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, v4, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onStream"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lʽˋ/ـˆ;

    const/16 p4, 0x12

    invoke-direct {p3, v4, p4, v2}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p2, p1, p3}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_7
    monitor-exit v4

    invoke-static {p2}, Lⁱᐧ/ˑﹳ;->ᵔᵢ(Ljava/util/List;)Lˎᵢ/ˉˆ;

    move-result-object p1

    invoke-virtual {p3, p1, v6}, Lᵔᐧ/ʻٴ;->ʼˎ(Lˎᵢ/ˉˆ;Z)V

    return-void

    :goto_1
    monitor-exit v4

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ(Lᵔᐧ/ˉʿ;III)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v4, p4

    if-eqz v4, :cond_e

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_d

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v1, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    invoke-interface {v3}, Lˊᐧ/ᵔᵢ;->readByte()B

    move-result v3

    sget-object v8, Lⁱᐧ/ʽ;->ﹳٴ:[B

    and-int/lit16 v3, v3, 0xff

    move v8, v3

    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    invoke-static {v3, v2, v8}, Lᵔᐧ/ʼᐧ;->ﹳٴ(III)I

    move-result v2

    iget-object v3, v1, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    iget-object v9, v0, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    if-eqz v4, :cond_2

    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_2

    new-instance v5, Lˊᐧ/ﾞᴵ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    int-to-long v10, v2

    invoke-interface {v3, v10, v11}, Lˊᐧ/ᵔᵢ;->ᐧﾞ(J)V

    invoke-interface {v3, v5, v10, v11}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    iget-object v0, v9, Lᵔᐧ/ᵔʾ;->ᵎⁱ:Lﾞʿ/ⁱˊ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onData"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v6, v2

    new-instance v2, Lᵔᐧ/ʼˎ;

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lᵔᐧ/ʼˎ;-><init>(Lᵔᐧ/ᵔʾ;ILˊᐧ/ﾞᴵ;IZ)V

    invoke-static {v0, v10, v2}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v9, v4}, Lᵔᐧ/ᵔʾ;->ᵎﹶ(I)Lᵔᐧ/ʻٴ;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v5, v0, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lᵔᐧ/ᵔʾ;->ᵎˊ(II)V

    iget-object v0, v0, Lᵔᐧ/ˉʿ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lᵔᐧ/ᵔʾ;->ʾˋ(J)V

    invoke-interface {v3, v4, v5}, Lˊᐧ/ᵔᵢ;->skip(J)V

    goto/16 :goto_9

    :cond_3
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, v9, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    int-to-long v10, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v12, v10

    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_b

    iget-object v2, v0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    monitor-enter v2

    :try_start_0
    iget-boolean v4, v0, Lᵔᐧ/ˏי;->ᴵˊ:Z

    iget-object v5, v0, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    move-wide/from16 p1, v14

    iget-wide v14, v5, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    add-long/2addr v14, v12

    move/from16 p3, v7

    iget-wide v6, v0, Lᵔᐧ/ˏי;->ʾˋ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v6, v14, v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    monitor-exit v2

    if-eqz v6, :cond_5

    invoke-interface {v3, v12, v13}, Lˊᐧ/ᵔᵢ;->skip(J)V

    iget-object v0, v0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lᵔᐧ/ʻٴ;->ˑﹳ(I)V

    goto :goto_8

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v3, v12, v13}, Lˊᐧ/ᵔᵢ;->skip(J)V

    goto :goto_8

    :cond_6
    iget-object v2, v0, Lᵔᐧ/ˏי;->ʽʽ:Lˊᐧ/ﾞᴵ;

    invoke-interface {v3, v2, v12, v13}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v2, v6, v14

    if-eqz v2, :cond_a

    sub-long/2addr v12, v6

    iget-object v2, v0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    monitor-enter v2

    :try_start_1
    iget-boolean v4, v0, Lᵔᐧ/ˏי;->ᴵᵔ:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lᵔᐧ/ˏי;->ʽʽ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v4}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v4, v0, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    iget-wide v6, v4, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    iget-object v7, v0, Lᵔᐧ/ˏי;->ʽʽ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v4, v7}, Lˊᐧ/ﾞᴵ;->י(Lˊᐧ/ᴵˊ;)J

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_6
    monitor-exit v2

    move/from16 v7, p3

    goto :goto_3

    :goto_7
    monitor-exit v2

    throw v0

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b
    move/from16 p3, v7

    iget-object v2, v0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    sget-object v3, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v2, v2, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v2, v10, v11}, Lᵔᐧ/ᵔʾ;->ʾˋ(J)V

    iget-object v0, v0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget-object v0, v0, Lᵔᐧ/ᵔʾ;->ˑٴ:Lᵔᐧ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    if-eqz p3, :cond_c

    sget-object v0, Lˎᵢ/ˉˆ;->ᴵˊ:Lˎᵢ/ˉˆ;

    const/4 v5, 0x1

    invoke-virtual {v9, v0, v5}, Lᵔᐧ/ʻٴ;->ʼˎ(Lˎᵢ/ˉˆ;Z)V

    :cond_c
    :goto_9
    iget-object v0, v1, Lᵔᐧ/ﹳᐧ;->ʾˋ:Lˊᐧ/ᵔᵢ;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lˊᐧ/ᵔᵢ;->skip(J)V

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳᐧ(IIII)Ljava/util/List;
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔᐧ/ﹳᐧ;->ᴵˊ:Lᵔᐧ/ᵔﹳ;

    iput p1, v0, Lᵔᐧ/ᵔﹳ;->ᴵᵔ:I

    iput p1, v0, Lᵔᐧ/ᵔﹳ;->ᴵˊ:I

    iput p2, v0, Lᵔᐧ/ᵔﹳ;->ˊʻ:I

    iput p3, v0, Lᵔᐧ/ᵔﹳ;->ʽʽ:I

    iput p4, v0, Lᵔᐧ/ᵔﹳ;->ˈٴ:I

    iget-object p1, p0, Lᵔᐧ/ﹳᐧ;->ʽʽ:Lᵔᐧ/ʽ;

    iget-object p2, p1, Lᵔᐧ/ʽ;->ʽ:Lˊᐧ/ـˆ;

    iget-object p3, p1, Lᵔᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lˊᐧ/ـˆ;->ᵎⁱ()Z

    move-result p4

    if-nez p4, :cond_c

    invoke-virtual {p2}, Lˊᐧ/ـˆ;->readByte()B

    move-result p4

    sget-object v0, Lⁱᐧ/ʽ;->ﹳٴ:[B

    and-int/lit16 v0, p4, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_b

    and-int/lit16 v2, p4, 0x80

    if-ne v2, v1, :cond_3

    const/16 p4, 0x7f

    invoke-virtual {p1, v0, p4}, Lᵔᐧ/ʽ;->ˑﹳ(II)I

    move-result p4

    add-int/lit8 v0, p4, -0x1

    if-ltz v0, :cond_1

    sget-object v1, Lᵔᐧ/ˑﹳ;->ﹳٴ:[Lᵔᐧ/ⁱˊ;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    aget-object p4, v1, v0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lᵔᐧ/ˑﹳ;->ﹳٴ:[Lᵔᐧ/ⁱˊ;

    array-length v1, v1

    sub-int/2addr v0, v1

    iget v1, p1, Lᵔᐧ/ʽ;->ˑﹳ:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    iget-object v0, p1, Lᵔᐧ/ʽ;->ˈ:[Lᵔᐧ/ⁱˊ;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object p4, v0, v1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header index too large "

    invoke-static {p4, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    sget-object p4, Lᵔᐧ/ˑﹳ;->ﹳٴ:[Lᵔᐧ/ⁱˊ;

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object p4

    invoke-static {p4}, Lᵔᐧ/ˑﹳ;->ﹳٴ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object v0

    new-instance v1, Lᵔᐧ/ⁱˊ;

    invoke-direct {v1, p4, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    invoke-virtual {p1, v1}, Lᵔᐧ/ʽ;->ʽ(Lᵔᐧ/ⁱˊ;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p4, 0x40

    if-ne v2, v1, :cond_5

    const/16 p4, 0x3f

    invoke-virtual {p1, v0, p4}, Lᵔᐧ/ʽ;->ˑﹳ(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Lᵔᐧ/ʽ;->ⁱˊ(I)Lˊᐧ/ʼˎ;

    move-result-object p4

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object v0

    new-instance v1, Lᵔᐧ/ⁱˊ;

    invoke-direct {v1, p4, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    invoke-virtual {p1, v1}, Lᵔᐧ/ʽ;->ʽ(Lᵔᐧ/ⁱˊ;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p4, p4, 0x20

    const/16 v1, 0x20

    if-ne p4, v1, :cond_8

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p4}, Lᵔᐧ/ʽ;->ˑﹳ(II)I

    move-result p4

    iput p4, p1, Lᵔᐧ/ʽ;->ﹳٴ:I

    if-ltz p4, :cond_7

    const/16 v0, 0x1000

    if-gt p4, v0, :cond_7

    iget v0, p1, Lᵔᐧ/ʽ;->ᵎﹶ:I

    if-ge p4, v0, :cond_0

    if-nez p4, :cond_6

    iget-object p4, p1, Lᵔᐧ/ʽ;->ˈ:[Lᵔᐧ/ⁱˊ;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lﹶˈ/ʼˎ;->ﹳﹳ([Ljava/lang/Object;Lʻᴵ/ﹳٴ;)V

    iget-object p4, p1, Lᵔᐧ/ʽ;->ˈ:[Lᵔᐧ/ⁱˊ;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    iput p4, p1, Lᵔᐧ/ʽ;->ˑﹳ:I

    const/4 p4, 0x0

    iput p4, p1, Lᵔᐧ/ʽ;->ﾞᴵ:I

    iput p4, p1, Lᵔᐧ/ʽ;->ᵎﹶ:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr v0, p4

    invoke-virtual {p1, v0}, Lᵔᐧ/ʽ;->ﹳٴ(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lᵔᐧ/ʽ;->ﹳٴ:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const/16 p4, 0x10

    if-eq v0, p4, :cond_a

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 p4, 0xf

    invoke-virtual {p1, v0, p4}, Lᵔᐧ/ʽ;->ˑﹳ(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Lᵔᐧ/ʽ;->ⁱˊ(I)Lˊᐧ/ʼˎ;

    move-result-object p4

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object v0

    new-instance v1, Lᵔᐧ/ⁱˊ;

    invoke-direct {v1, p4, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p4, Lᵔᐧ/ˑﹳ;->ﹳٴ:[Lᵔᐧ/ⁱˊ;

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object p4

    invoke-static {p4}, Lᵔᐧ/ˑﹳ;->ﹳٴ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {p1}, Lᵔᐧ/ʽ;->ˈ()Lˊᐧ/ʼˎ;

    move-result-object v0

    new-instance v1, Lᵔᐧ/ⁱˊ;

    invoke-direct {v1, p4, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p3}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method
