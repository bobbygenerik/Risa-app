.class public final Lˋﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public final ᴵˊ:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    iput-object p2, p0, Lˋﾞ/ⁱˊ;->ᴵˊ:Ljava/lang/Comparable;

    iput-object p3, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Landroid/net/Uri;Lˋﾞ/ʽ;)Lˋﾞ/ⁱˊ;
    .locals 3

    invoke-static {p0}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/ⁱˊ;->ᴵᵔ:Lיᐧ/ﾞᴵ;

    new-instance v1, Lˋﾞ/ˈ;

    invoke-static {p0}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v2}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lˋﾞ/ˈ;-><init>(Ljava/util/ArrayList;Lˋﾞ/ʽ;Lיᐧ/ﾞᴵ;Landroid/content/ContentResolver;)V

    new-instance p0, Lˋﾞ/ⁱˊ;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v1}, Lˋﾞ/ⁱˊ;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final ˈ()V
    .locals 0

    return-void
.end method

.method private final ᵎﹶ()V
    .locals 0

    return-void
.end method

.method private final ᵔᵢ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget v0, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    return-void
.end method

.method public ʼˎ()Ljava/io/InputStream;
    .locals 12

    .prologue
    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋﾞ/ˈ;

    iget-object v1, v0, Lˋﾞ/ˈ;->ʽ:Landroid/content/ContentResolver;

    iget-object v2, p0, Lˋﾞ/ⁱˊ;->ᴵˊ:Ljava/lang/Comparable;

    check-cast v2, Landroid/net/Uri;

    const-string v3, "ThumbStreamOpener"

    const-string v4, "Failed to query for thumbnail for Uri: "

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lˋﾞ/ˈ;->ﹳٴ:Lˋﾞ/ʽ;

    invoke-interface {v7, v2}, Lˋﾞ/ʽ;->ﹳٴ(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v7

    goto/16 :goto_8

    :catch_0
    move-exception v8

    goto :goto_1

    :cond_0
    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v8

    move-object v7, v6

    :goto_1
    :try_start_2
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v7, :cond_1

    goto :goto_0

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move-object v4, v6

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v8, 0x0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gez v4, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    :try_start_3
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "NPE opening uri: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0

    :goto_3
    const/4 v7, -0x1

    if-eqz v4, :cond_7

    const-string v8, "Failed to open uri: "

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    iget-object v1, v0, Lˋﾞ/ˈ;->ˈ:Ljava/util/ArrayList;

    iget-object v0, v0, Lˋﾞ/ˈ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    invoke-static {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʼᐧ(Ljava/util/List;Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_8

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_6
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-eqz v6, :cond_7

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :goto_5
    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_6
    throw v0

    :catch_6
    :cond_7
    :goto_6
    move v0, v7

    :catch_7
    :cond_8
    :goto_7
    if-eq v0, v7, :cond_9

    new-instance v1, Lcom/bumptech/glide/load/data/ˆʾ;

    invoke-direct {v1, v4, v0}, Lcom/bumptech/glide/load/data/ˆʾ;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v1

    :cond_9
    return-object v4

    :goto_8
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public final ˑﹳ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lⁱʼ/ʽ;

    iget v1, v1, Lⁱʼ/ʽ;->ʾˋ:I

    packed-switch v1, :pswitch_data_1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    invoke-virtual {v0}, Lⁱʼ/ʽ;->ⁱˊ()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Ljava/io/InputStream;

    return-object v0

    :pswitch_1
    const-class v0, Ljava/io/InputStream;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 2

    .prologue
    iget p1, p0, Lˋﾞ/ⁱˊ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object p1, p0, Lˋﾞ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lⁱʼ/ʽ;

    iget-object v0, p0, Lˋﾞ/ⁱˊ;->ᴵˊ:Ljava/lang/Comparable;

    check-cast v0, Ljava/io/File;

    iget p1, p1, Lⁱʼ/ʽ;->ʾˋ:I

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :pswitch_0
    const/high16 p1, 0x10000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    nop

    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lˋﾞ/ⁱˊ;->ᴵˊ:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lⁱʼ/ʽ;->ﹳٴ(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    iput-object p1, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_2
    :try_start_2
    invoke-virtual {p0}, Lˋﾞ/ⁱˊ;->ʼˎ()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lˋﾞ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Failed to find thumbnail file"

    nop

    :cond_1
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
