.class public final Lᵔﹶ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lʼᵔ/ᵎﹶ;

.field public static final ˆʾ:Ljava/util/Set;

.field public static final ٴﹶ:Lᵔﹶ/ᵔʾ;

.field public static final ᵎﹶ:Lʼᵔ/ᵎﹶ;

.field public static final ᵔᵢ:Lʼᵔ/ᵎﹶ;

.field public static final ﾞʻ:Ljava/util/ArrayDeque;

.field public static final ﾞᴵ:Lʼᵔ/ᵎﹶ;


# instance fields
.field public final ʽ:Lיᐧ/ﾞᴵ;

.field public final ˈ:Ljava/util/ArrayList;

.field public final ˑﹳ:Lᵔﹶ/ʻٴ;

.field public final ⁱˊ:Landroid/util/DisplayMetrics;

.field public final ﹳٴ:Lיᐧ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lʼᵔ/ﹳٴ;->ʽʽ:Lʼᵔ/ﹳٴ;

    invoke-static {v1, v0}, Lʼᵔ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)Lʼᵔ/ᵎﹶ;

    move-result-object v0

    sput-object v0, Lᵔﹶ/ʼᐧ;->ﾞᴵ:Lʼᵔ/ᵎﹶ;

    new-instance v0, Lʼᵔ/ᵎﹶ;

    const/4 v1, 0x0

    sget-object v2, Lʼᵔ/ᵎﹶ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-direct {v0, v3, v1, v2}, Lʼᵔ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Object;Lʼᵔ/ﾞᴵ;)V

    sput-object v0, Lᵔﹶ/ʼᐧ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    sget-object v0, Lᵔﹶ/ﾞʻ;->ⁱˊ:Lᵔﹶ/ﾞʻ;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v0, v1}, Lʼᵔ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)Lʼᵔ/ᵎﹶ;

    move-result-object v1

    sput-object v1, Lᵔﹶ/ʼᐧ;->ᵔᵢ:Lʼᵔ/ᵎﹶ;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v0, v1}, Lʼᵔ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)Lʼᵔ/ᵎﹶ;

    move-result-object v0

    sput-object v0, Lᵔﹶ/ʼᐧ;->ʼˎ:Lʼᵔ/ᵎﹶ;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lᵔﹶ/ʼᐧ;->ˆʾ:Ljava/util/Set;

    new-instance v0, Lᵔﹶ/ᵔʾ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    sput-object v0, Lᵔﹶ/ʼᐧ;->ٴﹶ:Lᵔﹶ/ᵔʾ;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    sget-object v0, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lᵔﹶ/ʼᐧ;->ﾞʻ:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lיᐧ/ﹳٴ;Lיᐧ/ﾞᴵ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lᵔﹶ/ʻٴ;->ﹳٴ()Lᵔﹶ/ʻٴ;

    move-result-object v0

    iput-object v0, p0, Lᵔﹶ/ʼᐧ;->ˑﹳ:Lᵔﹶ/ʻٴ;

    iput-object p1, p0, Lᵔﹶ/ʼᐧ;->ˈ:Ljava/util/ArrayList;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lᵔﹶ/ʼᐧ;->ⁱˊ:Landroid/util/DisplayMetrics;

    invoke-static {p3, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lᵔﹶ/ʼᐧ;->ﹳٴ:Lיᐧ/ﹳٴ;

    invoke-static {p4, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    return-void
.end method

.method public static ʽ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ˉˆ;Lיᐧ/ﹳٴ;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    invoke-interface {p2}, Lᵔﹶ/ˉˆ;->ـˆ()V

    invoke-interface {p0}, Lᵔﹶ/ـˆ;->ˉʿ()V

    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, Lᵔﹶ/ʾˋ;->ⁱˊ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p0, p1}, Lᵔﹶ/ـˆ;->ˈ(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_0
    move-exception v4

    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exception decoding bitmap, outWidth: "

    const-string v7, ", outHeight: "

    const-string v8, ", outMimeType: "

    invoke-static {v6, v1, v7, v2, v8}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lᵔﹶ/ʼᐧ;->ˈ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    nop

    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {p3, v0}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Lᵔﹶ/ʼᐧ;->ʽ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ˉˆ;Lיᐧ/ﹳٴ;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lᵔﹶ/ʾˋ;->ⁱˊ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_1
    :try_start_3
    throw v5

    :cond_2
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lᵔﹶ/ʾˋ;->ⁱˊ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static ˈ(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ˑﹳ(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .prologue
    invoke-static {p0}, Lᵔﹶ/ʼᐧ;->ﾞᴵ(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v0, Lᵔﹶ/ʼᐧ;->ﾞʻ:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ﾞᴵ(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    invoke-static {p0, v0}, Lـﹶ/ʾᵎ;->ᵔᵢ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ﾞʻ;Lʼᵔ/ﹳٴ;Lʼᵔ/ʼˎ;ZIIZLᵔﹶ/ˉˆ;)Landroid/graphics/Bitmap;
    .locals 40

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    sget v9, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v12, v1, Lᵔﹶ/ʼᐧ;->ﹳٴ:Lיᐧ/ﹳٴ;

    invoke-static {v2, v3, v8, v12}, Lᵔﹶ/ʼᐧ;->ʽ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ˉˆ;Lיᐧ/ﹳٴ;)Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    aget v15, v14, v13

    aget v14, v14, v11

    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v11, -0x1

    if-eq v15, v11, :cond_1

    if-ne v14, v11, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v11, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x0

    :goto_1
    invoke-interface {v2}, Lᵔﹶ/ـˆ;->ˉˆ()I

    move-result v16

    move-wide/from16 v17, v9

    const/16 v9, 0x5a

    packed-switch v16, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v10, 0x10e

    goto :goto_2

    :pswitch_1
    move v10, v9

    goto :goto_2

    :pswitch_2
    const/16 v19, 0xb4

    move/from16 v10, v19

    :goto_2
    packed-switch v16, :pswitch_data_1

    const/16 v20, 0x0

    :goto_3
    move-object/from16 v19, v13

    goto :goto_4

    :pswitch_3
    const/16 v20, 0x1

    goto :goto_3

    :goto_4
    const/high16 v13, -0x80000000

    if-ne v6, v13, :cond_4

    if-eq v10, v9, :cond_3

    const/16 v9, 0x10e

    if-ne v10, v9, :cond_2

    goto :goto_5

    :cond_2
    move/from16 v22, v15

    goto :goto_6

    :cond_3
    const/16 v9, 0x10e

    :goto_5
    move/from16 v22, v14

    goto :goto_6

    :cond_4
    const/16 v9, 0x10e

    move/from16 v22, v6

    :goto_6
    if-ne v7, v13, :cond_7

    const/16 v13, 0x5a

    if-eq v10, v13, :cond_6

    if-ne v10, v9, :cond_5

    goto :goto_7

    :cond_5
    move v9, v14

    goto :goto_8

    :cond_6
    :goto_7
    move v9, v15

    goto :goto_8

    :cond_7
    move v9, v7

    :goto_8
    invoke-interface {v2}, Lᵔﹶ/ـˆ;->ʽﹳ()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v13

    const-string v7, ", target density: "

    const/16 v23, 0x0

    const-string v6, ", density: "

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v5, "x"

    const-string v4, "Downsampler"

    move/from16 v25, v11

    const-string v11, "]"

    if-lez v15, :cond_8

    if-gtz v14, :cond_9

    :cond_8
    move-object v0, v7

    move-object v7, v6

    move-object v6, v0

    move-object v0, v11

    move-object/from16 v28, v12

    move/from16 v1, v22

    const/4 v10, 0x3

    goto/16 :goto_18

    :cond_9
    const/16 v1, 0x5a

    if-eq v10, v1, :cond_b

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v21, v6

    move-object/from16 p6, v11

    move v6, v14

    move v11, v15

    :goto_9
    move/from16 v1, v22

    move-object/from16 v22, v7

    goto :goto_b

    :cond_b
    :goto_a
    move-object/from16 v21, v6

    move-object/from16 p6, v11

    move v11, v14

    move v6, v15

    goto :goto_9

    :goto_b
    invoke-virtual {v0, v11, v6, v1, v9}, Lᵔﹶ/ﾞʻ;->ⁱˊ(IIII)F

    move-result v7

    cmpg-float v26, v7, v23

    if-lez v26, :cond_1e

    move/from16 v26, v7

    invoke-virtual {v0, v11, v6, v1, v9}, Lᵔﹶ/ﾞʻ;->ﹳٴ(IIII)I

    move-result v7

    if-eqz v7, :cond_1d

    move/from16 v27, v10

    int-to-float v10, v11

    move/from16 p6, v10

    mul-float v10, v26, p6

    move/from16 v28, v11

    float-to-double v10, v10

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v29

    double-to-int v10, v10

    int-to-float v11, v6

    move/from16 v31, v6

    mul-float v6, v26, v11

    move/from16 v32, v10

    move/from16 v33, v11

    float-to-double v10, v6

    add-double v10, v10, v29

    double-to-int v6, v10

    div-int v11, v28, v32

    div-int v6, v31, v6

    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_c

    :cond_c
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_c
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-gt v10, v11, :cond_d

    sget-object v11, Lᵔﹶ/ʼᐧ;->ˆʾ:Ljava/util/Set;

    move/from16 v32, v6

    iget-object v6, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_d

    :cond_d
    move/from16 v32, v6

    :cond_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    const/4 v11, 0x1

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ne v7, v11, :cond_f

    int-to-float v7, v6

    div-float v11, v24, v26

    cmpg-float v7, v7, v11

    if-gez v7, :cond_f

    shl-int/lit8 v6, v6, 0x1

    :cond_f
    :goto_d
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v7, :cond_10

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v10, p6, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v33, v7

    move v7, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-int/lit8 v11, v6, 0x8

    if-lez v11, :cond_13

    div-int/2addr v7, v11

    div-int/2addr v10, v11

    goto :goto_f

    :cond_10
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v13, v7, :cond_17

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v7, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {v13}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v7, 0x18

    if-lt v10, v7, :cond_12

    int-to-float v7, v6

    div-float v10, p6, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    div-float v11, v33, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_12

    :cond_12
    int-to-float v7, v6

    div-float v10, p6, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v33, v7

    move v7, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    :goto_e
    double-to-int v10, v10

    :cond_13
    :goto_f
    move/from16 v39, v10

    move v10, v7

    move/from16 v7, v39

    goto :goto_12

    :cond_14
    rem-int v11, v28, v6

    if-nez v11, :cond_15

    rem-int v7, v31, v6

    if-eqz v7, :cond_16

    :cond_15
    const/4 v10, 0x1

    goto :goto_10

    :cond_16
    div-int v10, v28, v6

    div-int v7, v31, v6

    goto :goto_12

    :goto_10
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v8, v12}, Lᵔﹶ/ʼᐧ;->ʽ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ˉˆ;Lיᐧ/ﹳٴ;)Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v11, v13}, [I

    move-result-object v11

    aget v13, v11, v7

    aget v7, v11, v10

    move v10, v13

    goto :goto_12

    :cond_17
    :goto_11
    int-to-float v7, v6

    div-float v10, p6, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v33, v7

    move v7, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    goto :goto_e

    :goto_12
    invoke-virtual {v0, v10, v7, v1, v9}, Lᵔﹶ/ﾞʻ;->ⁱˊ(IIII)F

    move-result v0

    move-object/from16 v28, v12

    float-to-double v11, v0

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v11, v31

    if-gtz v0, :cond_18

    move-wide/from16 v33, v11

    goto :goto_13

    :cond_18
    div-double v33, v31, v11

    :goto_13
    const-wide v35, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v33, v33, v35

    move-wide/from16 v37, v11

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-double v12, v11

    mul-double v12, v12, v37

    add-double v12, v12, v29

    double-to-int v12, v12

    int-to-float v13, v12

    int-to-float v11, v11

    div-float/2addr v13, v11

    move v11, v6

    move/from16 v33, v7

    float-to-double v6, v13

    div-double v6, v37, v6

    int-to-double v12, v12

    mul-double/2addr v6, v12

    add-double v6, v6, v29

    double-to-int v6, v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_19

    move-wide/from16 v31, v37

    goto :goto_14

    :cond_19
    div-double v31, v31, v37

    :goto_14
    mul-double v31, v31, v35

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v6, :cond_1a

    if-lez v0, :cond_1a

    if-eq v6, v0, :cond_1a

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_15
    const/4 v6, 0x2

    goto :goto_16

    :cond_1a
    const/4 v7, 0x0

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15

    :goto_16
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Calculate scaling, source: ["

    const-string v6, "], degreesToRotate: "

    invoke-static {v0, v15, v5, v14, v6}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v6, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", target: ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], power of two scaled: ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], exact scale factor: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", power of 2 sample size: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", adjusted scale factor: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1b
    :goto_17
    move-object/from16 v10, p0

    goto/16 :goto_19

    :cond_1c
    move-object/from16 v7, v21

    move-object/from16 v6, v22

    goto :goto_17

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move v6, v7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot scale with factor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_18
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1b

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to determine dimensions for: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " with target ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_17

    :goto_19
    iget-object v0, v10, Lᵔﹶ/ʼᐧ;->ˑﹳ:Lᵔﹶ/ʻٴ;

    move/from16 v12, v20

    move/from16 v11, v25

    invoke-virtual {v0, v1, v9, v11, v12}, Lᵔﹶ/ʻٴ;->ʽ(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lיٴ/ˈ;->ˈ()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    iput-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x0

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1a

    :cond_1f
    const/4 v11, 0x0

    :goto_1a
    if-eqz v0, :cond_21

    :cond_20
    const/4 v11, 0x1

    goto :goto_1d

    :cond_21
    sget-object v0, Lʼᵔ/ﹳٴ;->ʾˋ:Lʼᵔ/ﹳٴ;

    move-object/from16 v12, p4

    if-eq v12, v0, :cond_24

    :try_start_0
    invoke-interface {v2}, Lᵔﹶ/ـˆ;->ʽﹳ()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    :catch_0
    move-exception v0

    const/4 v13, 0x3

    invoke-static {v4, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_22

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    :cond_22
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_23

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1c

    :cond_23
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1c
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v11, :cond_20

    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_1d

    :cond_24
    const/4 v11, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ltz v15, :cond_25

    if-ltz v14, :cond_25

    if-eqz p9, :cond_25

    move v11, v1

    goto/16 :goto_20

    :cond_25
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v1, :cond_26

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v9, :cond_26

    if-eq v1, v9, :cond_26

    move v9, v11

    goto :goto_1e

    :cond_26
    const/4 v9, 0x0

    :goto_1e
    if-eqz v9, :cond_27

    int-to-float v1, v1

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v9, v9

    div-float/2addr v1, v9

    goto :goto_1f

    :cond_27
    move/from16 v1, v24

    :goto_1f
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v12, v15

    int-to-float v13, v9

    div-float/2addr v12, v13

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-float v12, v14

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-float v11, v11

    mul-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v12, v12

    mul-float/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v4, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_28

    const-string v13, "Calculated target ["

    const-string v10, "] for source ["

    invoke-static {v13, v11, v5, v12, v10}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "], sampleSize: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", targetDensity: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", density multiplier: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_28
    move v9, v12

    :goto_20
    const/16 v1, 0x1a

    const/4 v10, 0x0

    if-lez v11, :cond_2c

    if-lez v9, :cond_2c

    if-lt v0, v1, :cond_2a

    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lיٴ/ˈ;->ˈ()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    if-ne v12, v13, :cond_29

    goto :goto_22

    :cond_29
    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_21

    :cond_2a
    move-object v12, v10

    :goto_21
    if-nez v12, :cond_2b

    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2b
    move-object/from16 v13, v28

    invoke-interface {v13, v11, v9, v12}, Lיᐧ/ﹳٴ;->ˑﹳ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_23

    :cond_2c
    :goto_22
    move-object/from16 v13, v28

    :goto_23
    if-eqz p5, :cond_30

    const/16 v9, 0x1c

    if-lt v0, v9, :cond_2f

    sget-object v0, Lʼᵔ/ʼˎ;->ʾˋ:Lʼᵔ/ʼˎ;

    move-object/from16 v1, p5

    if-ne v1, v0, :cond_2d

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v11, 0x1

    goto :goto_24

    :cond_2d
    const/4 v11, 0x0

    :goto_24
    if-eqz v11, :cond_2e

    invoke-static {}, Lᵔﹶ/ˉʿ;->ʼˎ()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_25

    :cond_2e
    invoke-static {}, Lᵔﹶ/ˉʿ;->ٴﹶ()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_25
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lـﹶ/ʾᵎ;->ᵔᵢ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_26

    :cond_2f
    if-lt v0, v1, :cond_30

    invoke-static {}, Lᵔﹶ/ˉʿ;->ٴﹶ()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lـﹶ/ʾᵎ;->ᵔᵢ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    :cond_30
    :goto_26
    invoke-static {v2, v3, v8, v13}, Lᵔﹶ/ʼᐧ;->ʽ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ˉˆ;Lיᐧ/ﹳٴ;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v8, v0, v13}, Lᵔﹶ/ˉˆ;->ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)V

    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lᵔﹶ/ʼᐧ;->ˈ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lᵔﹶ/ʼᐧ;->ˈ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_31
    move-object/from16 v1, p0

    if-eqz v0, :cond_33

    iget-object v2, v1, Lᵔﹶ/ʼᐧ;->ⁱˊ:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v16, :pswitch_data_2

    move-object v10, v0

    goto/16 :goto_29

    :pswitch_4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v16, :pswitch_data_3

    goto :goto_27

    :pswitch_5
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_27

    :pswitch_6
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    move/from16 v5, v24

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_27

    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_27

    :pswitch_8
    move/from16 v5, v24

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_27

    :pswitch_9
    move/from16 v5, v24

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_27

    :pswitch_a
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_27

    :pswitch_b
    move/from16 v5, v24

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_27
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v6, v23

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto :goto_28

    :cond_32
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_28
    invoke-interface {v13, v4, v5, v6}, Lיᐧ/ﹳٴ;->ʼˎ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-static {v0, v4, v2}, Lᵔﹶ/ʾˋ;->ﹳٴ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v10, v4

    :goto_29
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-interface {v13, v0}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    :cond_33
    return-object v10

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final ﹳٴ(Lᵔﹶ/ـˆ;IILʼᵔ/ᵔᵢ;Lᵔﹶ/ˉˆ;)Lᵔﹶ/ʽ;
    .locals 13

    .prologue
    move-object/from16 v0, p4

    iget-object v2, p0, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    const/high16 v3, 0x10000

    const-class v4, [B

    invoke-virtual {v2, v3, v4}, Lיᐧ/ﾞᴵ;->ˈ(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [B

    const-class v2, Lᵔﹶ/ʼᐧ;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lᵔﹶ/ʼᐧ;->ﾞʻ:Ljava/util/ArrayDeque;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_0

    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v4}, Lᵔﹶ/ʼᐧ;->ﾞᴵ(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :goto_0
    monitor-exit v2

    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v2, Lᵔﹶ/ʼᐧ;->ﾞᴵ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lʼᵔ/ﹳٴ;

    sget-object v2, Lᵔﹶ/ʼᐧ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lʼᵔ/ʼˎ;

    sget-object v2, Lᵔﹶ/ﾞʻ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lᵔﹶ/ﾞʻ;

    sget-object v2, Lᵔﹶ/ʼᐧ;->ᵔᵢ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v2, Lᵔﹶ/ʼᐧ;->ʼˎ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lᵔﹶ/ʼᐧ;->ⁱˊ(Lᵔﹶ/ـˆ;Landroid/graphics/BitmapFactory$Options;Lᵔﹶ/ﾞʻ;Lʼᵔ/ﹳٴ;Lʼᵔ/ʼˎ;ZIIZLᵔﹶ/ˉˆ;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lᵔﹶ/ʼᐧ;->ﹳٴ:Lיᐧ/ﹳٴ;

    invoke-static {v0, v2}, Lᵔﹶ/ʽ;->ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)Lᵔﹶ/ʽ;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lᵔﹶ/ʼᐧ;->ˑﹳ(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v2, p0, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    invoke-virtual {v2, v12}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v3}, Lᵔﹶ/ʼᐧ;->ˑﹳ(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v2, p0, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    invoke-virtual {v2, v12}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
