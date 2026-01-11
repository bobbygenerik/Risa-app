.class public final Lᴵﹶ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# static fields
.field public static final ᵎﹶ:Lʾⁱ/ʽ;

.field public static final ﾞᴵ:Lᵎˉ/ⁱˊ;


# instance fields
.field public final ʽ:Lʾⁱ/ʽ;

.field public final ˈ:Lᵎˉ/ⁱˊ;

.field public final ˑﹳ:Lـʾ/ᵔﹳ;

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵﹶ/ﹳٴ;->ﾞᴵ:Lᵎˉ/ⁱˊ;

    new-instance v0, Lʾⁱ/ʽ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʾⁱ/ʽ;-><init>(I)V

    sput-object v0, Lᴵﹶ/ﹳٴ;->ᵎﹶ:Lʾⁱ/ʽ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lיᐧ/ﹳٴ;Lיᐧ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lᴵﹶ/ﹳٴ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lᴵﹶ/ﹳٴ;->ⁱˊ:Ljava/util/ArrayList;

    sget-object p1, Lᴵﹶ/ﹳٴ;->ﾞᴵ:Lᵎˉ/ⁱˊ;

    iput-object p1, p0, Lᴵﹶ/ﹳٴ;->ˈ:Lᵎˉ/ⁱˊ;

    new-instance p1, Lـʾ/ᵔﹳ;

    const/16 p2, 0x8

    invoke-direct {p1, p3, p2, p4}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, p0, Lᴵﹶ/ﹳٴ;->ˑﹳ:Lـʾ/ᵔﹳ;

    sget-object p1, Lᴵﹶ/ﹳٴ;->ᵎﹶ:Lʾⁱ/ʽ;

    iput-object p1, p0, Lᴵﹶ/ﹳٴ;->ʽ:Lʾⁱ/ʽ;

    return-void
.end method

.method public static ˈ(Lᵢٴ/ⁱˊ;II)I
    .locals 5

    .prologue
    iget v0, p0, Lᵢٴ/ⁱˊ;->ᵎﹶ:I

    div-int/2addr v0, p2

    iget v1, p0, Lᵢٴ/ⁱˊ;->ﾞᴵ:I

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    const-string v1, "Downsampling GIF, sampleSize: "

    const-string v2, ", target dimens: ["

    const-string v4, "x"

    invoke-static {v1, v0, v2, p1, v4}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lᵢٴ/ⁱˊ;->ﾞᴵ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lᵢٴ/ⁱˊ;->ᵎﹶ:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    :cond_1
    return v0
.end method


# virtual methods
.method public final ʽ(Ljava/nio/ByteBuffer;IILᵢٴ/ʽ;Lʼᵔ/ᵔᵢ;)Lˉˈ/ˑﹳ;
    .locals 16

    .prologue
    move-object/from16 v1, p0

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    sget v0, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lᵢٴ/ʽ;->ⁱˊ()Lᵢٴ/ⁱˊ;

    move-result-object v0

    iget v7, v0, Lᵢٴ/ⁱˊ;->ʽ:I

    const/4 v8, 0x0

    if-lez v7, :cond_4

    iget v7, v0, Lᵢٴ/ⁱˊ;->ⁱˊ:I

    if-eqz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v7, Lᴵﹶ/ᵎﹶ;->ﹳٴ:Lʼᵔ/ᵎﹶ;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lʼᵔ/ﹳٴ;->ᴵˊ:Lʼᵔ/ﹳٴ;

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v12, p2

    move/from16 v13, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :goto_1
    invoke-static {v0, v12, v13}, Lᴵﹶ/ﹳٴ;->ˈ(Lᵢٴ/ⁱˊ;II)I

    move-result v9

    iget-object v10, v1, Lᴵﹶ/ﹳٴ;->ˈ:Lᵎˉ/ⁱˊ;

    iget-object v11, v1, Lᴵﹶ/ﹳٴ;->ˑﹳ:Lـʾ/ᵔﹳ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lᵢٴ/ˈ;

    move-object/from16 v14, p1

    invoke-direct {v10, v11, v0, v14, v9}, Lᵢٴ/ˈ;-><init>(Lـʾ/ᵔﹳ;Lᵢٴ/ⁱˊ;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v10, v7}, Lᵢٴ/ˈ;->ʽ(Landroid/graphics/Bitmap$Config;)V

    iget v0, v10, Lᵢٴ/ˈ;->ٴﹶ:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iget-object v9, v10, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget v9, v9, Lᵢٴ/ⁱˊ;->ʽ:I

    rem-int/2addr v0, v9

    iput v0, v10, Lᵢٴ/ˈ;->ٴﹶ:I

    invoke-virtual {v10}, Lᵢٴ/ˈ;->ⁱˊ()Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_2

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4, v5}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    return-object v8

    :cond_2
    :try_start_1
    new-instance v0, Lᴵﹶ/ⁱˊ;

    iget-object v8, v1, Lᴵﹶ/ﹳٴ;->ﹳٴ:Landroid/content/Context;

    new-instance v15, Lʻˈ/ˑﹳ;

    new-instance v9, Lᴵﹶ/ﾞᴵ;

    invoke-static {v8}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v8

    move-object v11, v10

    move-object v10, v8

    invoke-direct/range {v9 .. v14}, Lᴵﹶ/ﾞᴵ;-><init>(Lcom/bumptech/glide/ⁱˊ;Lᵢٴ/ˈ;IILandroid/graphics/Bitmap;)V

    invoke-direct {v15, v7, v9}, Lʻˈ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v15}, Lᴵﹶ/ⁱˊ;-><init>(Lʻˈ/ˑﹳ;)V

    new-instance v8, Lˉˈ/ˑﹳ;

    invoke-direct {v8, v0, v7}, Lˉˈ/ˑﹳ;-><init>(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-object v8

    :cond_4
    :goto_3
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-object v8

    :goto_4
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_6
    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 7

    .prologue
    move-object v2, p1

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lᴵﹶ/ﹳٴ;->ʽ:Lʾⁱ/ʽ;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lʾⁱ/ʽ;->ﹳٴ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵢٴ/ʽ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lᵢٴ/ʽ;

    invoke-direct {v0}, Lᵢٴ/ʽ;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v1, p0

    goto :goto_2

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v5, Lᵢٴ/ʽ;->ⁱˊ:Ljava/nio/ByteBuffer;

    iget-object v0, v5, Lᵢٴ/ʽ;->ﹳٴ:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lᵢٴ/ⁱˊ;

    invoke-direct {v0}, Lᵢٴ/ⁱˊ;-><init>()V

    iput-object v0, v5, Lᵢٴ/ʽ;->ʽ:Lᵢٴ/ⁱˊ;

    iput v1, v5, Lᵢٴ/ʽ;->ˈ:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Lᵢٴ/ʽ;->ⁱˊ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v5, Lᵢٴ/ʽ;->ⁱˊ:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v6, p4

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lᴵﹶ/ﹳٴ;->ʽ(Ljava/nio/ByteBuffer;IILᵢٴ/ʽ;Lʼᵔ/ᵔᵢ;)Lˉˈ/ˑﹳ;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p2, v1, Lᴵﹶ/ﹳٴ;->ʽ:Lʾⁱ/ʽ;

    invoke-virtual {p2, v5}, Lʾⁱ/ʽ;->ʽ(Lᵢٴ/ʽ;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    iget-object p2, v1, Lᴵﹶ/ﹳٴ;->ʽ:Lʾⁱ/ʽ;

    invoke-virtual {p2, v5}, Lʾⁱ/ʽ;->ʽ(Lᵢٴ/ʽ;)V

    throw p1

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p2, v0

    :goto_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p2

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 1

    .prologue
    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lᴵﹶ/ᵎﹶ;->ⁱˊ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p2, v0}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lᴵﹶ/ﹳٴ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->יـ(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
