.class public final Lﹳˎ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final ⁱˊ:Ljava/lang/String;


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹳˎ/ᵎﹶ;->ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹳˎ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lﹳˎ/ˑﹳ;->ʽ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    aget-byte v5, v3, v4

    const/4 v6, 0x1

    aget-byte v7, v3, v6

    const/4 v8, 0x2

    aget-byte v9, v3, v8

    const/4 v10, 0x3

    aget-byte v3, v3, v10

    invoke-static {v0, v1}, Lﹳˎ/ˑﹳ;->ﹳٴ(J)[B

    move-result-object v0

    aget-byte v1, v0, v4

    aget-byte v0, v0, v6

    sget-object v11, Lﹳˎ/ˑﹳ;->ʽ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    invoke-static {v11, v12}, Lﹳˎ/ˑﹳ;->ﹳٴ(J)[B

    move-result-object v11

    aget-byte v12, v11, v4

    aget-byte v11, v11, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->shortValue()S

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Lﹳˎ/ˑﹳ;->ﹳٴ(J)[B

    move-result-object v13

    aget-byte v14, v13, v4

    aget-byte v13, v13, v6

    const/16 v15, 0xa

    new-array v15, v15, [B

    aput-byte v5, v15, v4

    aput-byte v7, v15, v6

    aput-byte v9, v15, v8

    aput-byte v3, v15, v10

    aput-byte v1, v15, v2

    const/4 v1, 0x5

    aput-byte v0, v15, v1

    const/4 v0, 0x6

    aput-byte v12, v15, v0

    const/4 v0, 0x7

    aput-byte v11, v15, v0

    const/16 v0, 0x8

    aput-byte v14, v15, v0

    const/16 v0, 0x9

    aput-byte v13, v15, v0

    invoke-static {v15}, Lﹳˎ/ᵎﹶ;->ˑﹳ([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v3, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x14

    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v7, Lﹳˎ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v9, v2, v6

    aput-object v0, v2, v8

    aput-object v3, v2, v10

    const-string v0, "%s%s%s%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lﹳˎ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public static ﹳٴ(J)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹳˎ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
