.class public final Lˆᴵ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# static fields
.field public static final ᵎˊ:[Ljava/lang/String;


# instance fields
.field public final ʽʽ:Lⁱʼ/ʼᐧ;

.field public final ʾˋ:Landroid/content/Context;

.field public final ˈٴ:Landroid/net/Uri;

.field public final ˉٴ:Ljava/lang/Class;

.field public final ˊʻ:I

.field public volatile ٴʼ:Lcom/bumptech/glide/load/data/ˑﹳ;

.field public final ٴᵢ:Lʼᵔ/ᵔᵢ;

.field public final ᴵˊ:Lⁱʼ/ʼᐧ;

.field public final ᴵᵔ:I

.field public volatile ᵎⁱ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lˆᴵ/ˑﹳ;->ᵎˊ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;Lⁱʼ/ʼᐧ;Landroid/net/Uri;IILʼᵔ/ᵔᵢ;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lˆᴵ/ˑﹳ;->ʾˋ:Landroid/content/Context;

    iput-object p2, p0, Lˆᴵ/ˑﹳ;->ᴵˊ:Lⁱʼ/ʼᐧ;

    iput-object p3, p0, Lˆᴵ/ˑﹳ;->ʽʽ:Lⁱʼ/ʼᐧ;

    iput-object p4, p0, Lˆᴵ/ˑﹳ;->ˈٴ:Landroid/net/Uri;

    iput p5, p0, Lˆᴵ/ˑﹳ;->ᴵᵔ:I

    iput p6, p0, Lˆᴵ/ˑﹳ;->ˊʻ:I

    iput-object p7, p0, Lˆᴵ/ˑﹳ;->ٴᵢ:Lʼᵔ/ᵔᵢ;

    iput-object p8, p0, Lˆᴵ/ˑﹳ;->ˉٴ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆᴵ/ˑﹳ;->ᵎⁱ:Z

    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ٴʼ:Lcom/bumptech/glide/load/data/ˑﹳ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->cancel()V

    :cond_0
    return-void
.end method

.method public final ʽ()Lcom/bumptech/glide/load/data/ˑﹳ;
    .locals 13

    .prologue
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lˆᴵ/ˑﹳ;->ʾˋ:Landroid/content/Context;

    iget-object v3, p0, Lˆᴵ/ˑﹳ;->ٴᵢ:Lʼᵔ/ᵔᵢ;

    iget v4, p0, Lˆᴵ/ˑﹳ;->ˊʻ:I

    iget v5, p0, Lˆᴵ/ˑﹳ;->ᴵᵔ:I

    if-eqz v0, :cond_3

    iget-object v7, p0, Lˆᴵ/ˑﹳ;->ˈٴ:Landroid/net/Uri;

    const-string v0, "Failed to media store entry for: "

    const-string v12, "File path was empty in media store for: "

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lˆᴵ/ˑﹳ;->ᵎˊ:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ᴵˊ:Lⁱʼ/ʼᐧ;

    invoke-interface {v0, v6, v5, v4, v3}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ˈٴ:Landroid/net/Uri;

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ʽʽ(Landroid/net/Uri;)Z

    move-result v6

    iget-object v7, p0, Lˆᴵ/ˑﹳ;->ʽʽ:Lⁱʼ/ʼᐧ;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const-string v8, "picker"

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7, v0, v5, v4, v3}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    invoke-interface {v7, v0, v5, v4, v3}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    return-object v0

    :cond_6
    return-object v1
.end method

.method public final ˑﹳ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ٴʼ:Lcom/bumptech/glide/load/data/ˑﹳ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ˉٴ:Ljava/lang/Class;

    return-object v0
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 2

    .prologue
    const-string v0, "Failed to build fetcher for: "

    :try_start_0
    invoke-virtual {p0}, Lˆᴵ/ˑﹳ;->ʽ()Lcom/bumptech/glide/load/data/ˑﹳ;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˆᴵ/ˑﹳ;->ˈٴ:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lˆᴵ/ˑﹳ;->ٴʼ:Lcom/bumptech/glide/load/data/ˑﹳ;

    iget-boolean v0, p0, Lˆᴵ/ˑﹳ;->ᵎⁱ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lˆᴵ/ˑﹳ;->cancel()V

    return-void

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void
.end method
