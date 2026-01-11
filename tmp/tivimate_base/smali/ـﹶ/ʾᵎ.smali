.class public final synthetic Lـﹶ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏـ/ˈ;
.implements Lᵔـ/ﾞᴵ;
.implements Lᐧˎ/ﾞᴵ;


# direct methods
.method public static bridge synthetic ʼˎ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ʼᐧ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ʽ(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    return-object p0
.end method

.method public static bridge synthetic ˆʾ()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic ˈ()Ljava/nio/file/LinkOption;
    .locals 1

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static bridge synthetic ˉʿ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ˉˆ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ˑﹳ(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic ٴﹶ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ᵎﹶ(Landroid/content/res/Configuration;I)V
    .locals 0

    iput p1, p0, Landroid/content/res/Configuration;->colorMode:I

    return-void
.end method

.method public static bridge synthetic ᵔʾ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ᵔᵢ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static bridge synthetic ᵔﹳ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ⁱˊ(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;
    .locals 0

    check-cast p0, Landroid/graphics/ImageDecoder$Source;

    return-object p0
.end method

.method public static bridge synthetic ﹳٴ(Landroid/content/res/Configuration;)I
    .locals 0

    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    return p0
.end method

.method public static bridge synthetic ﾞʻ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic ﾞᴵ()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lˉˋ/ʼˎ;->ﹳٴ()Lˑי/ʽ;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˑי/ʽ;->ʽʽ(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lᐧ/ﹳٴ;->ⁱˊ(I)Lᴵˆ/ʽ;

    move-result-object v3

    iput-object v3, v2, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v2}, Lˑי/ʽ;->ᵔﹳ()Lˉˋ/ʼˎ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public ٴʼ(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Error fetching settings."

    const-string v1, "FirebaseCrashlytics"

    nop

    return-void
.end method
