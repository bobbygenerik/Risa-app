.class public final Lᵔﹶ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ٴﹶ;


# static fields
.field public static final ʽʽ:Lʼᵔ/ᵎﹶ;

.field public static final ᴵˊ:Lʼᵔ/ᵎﹶ;


# instance fields
.field public final ʾˋ:Lיᐧ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    invoke-static {v0, v1}, Lʼᵔ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)Lʼᵔ/ᵎﹶ;

    move-result-object v0

    sput-object v0, Lᵔﹶ/ⁱˊ;->ᴵˊ:Lʼᵔ/ᵎﹶ;

    new-instance v0, Lʼᵔ/ᵎﹶ;

    const/4 v1, 0x0

    sget-object v2, Lʼᵔ/ᵎﹶ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    invoke-direct {v0, v3, v1, v2}, Lʼᵔ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Object;Lʼᵔ/ﾞᴵ;)V

    sput-object v0, Lᵔﹶ/ⁱˊ;->ʽʽ:Lʼᵔ/ᵎﹶ;

    return-void
.end method

.method public constructor <init>(Lיᐧ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔﹶ/ⁱˊ;->ʾˋ:Lיᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ʼʼ(Lʼᵔ/ᵔᵢ;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public final ˉˆ(Ljava/lang/Object;Ljava/io/File;Lʼᵔ/ᵔᵢ;)Z
    .locals 8

    .prologue
    check-cast p1, Lʿʾ/ᵢˏ;

    const-string v0, "BitmapEncoder"

    invoke-interface {p1}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v1, Lᵔﹶ/ⁱˊ;->ʽʽ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, v1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    sget v3, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sget-object v5, Lᵔﹶ/ⁱˊ;->ᴵˊ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p3, v5}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object p2, p0, Lᵔﹶ/ⁱˊ;->ʾˋ:Lיᐧ/ﾞᴵ;

    if-eqz p2, :cond_2

    :try_start_1
    new-instance v6, Lcom/bumptech/glide/load/data/ʽ;

    invoke-direct {v6, v7, p2}, Lcom/bumptech/glide/load/data/ʽ;-><init>(Ljava/io/FileOutputStream;Lיᐧ/ﾞᴵ;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto/16 :goto_5

    :catch_0
    move-exception p2

    move-object v6, v7

    goto :goto_3

    :cond_2
    move-object v6, v7

    :goto_1
    :try_start_2
    invoke-virtual {p1, v2, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    :goto_2
    const/4 p2, 0x1

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p2

    :goto_3
    const/4 v5, 0x3

    :try_start_4
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Failed to encode Bitmap"

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_3
    :cond_4
    const/4 p2, 0x0

    :goto_4
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Compressed with type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of size "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", options format: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", hasAlpha: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_5
    return p2

    :goto_5
    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :goto_6
    throw p1

    :catch_4
    :cond_6
    :goto_7
    throw p1
.end method
