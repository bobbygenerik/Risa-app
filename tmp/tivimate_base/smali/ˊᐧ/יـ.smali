.class public final Lˊᐧ/יـ;
.super Lˊᐧ/ﹳᐧ;
.source "SourceFile"


# direct methods
.method public static ᴵˑ(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 4

    .prologue
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NioSystemFileSystem"

    return-object v0
.end method

.method public final ʽ(Lˊᐧ/ʽﹳ;Lˊᐧ/ʽﹳ;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object p2, p2, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p2}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v1, v0

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "atomic move not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ـˆ(Lˊᐧ/ʽﹳ;)Lʼﾞ/ᴵˊ;
    .locals 10

    .prologue
    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lـﹶ/ʾᵎ;->ˈ()Ljava/nio/file/LinkOption;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1, v2, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    new-instance v3, Lʼﾞ/ᴵˊ;

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v4

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v5

    if-eqz p1, :cond_1

    sget-object v6, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    :cond_1
    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lˊᐧ/יـ;->ᴵˑ(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lˊᐧ/יـ;->ᴵˑ(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object p1

    move-object v8, p1

    goto :goto_2

    :cond_3
    move-object v8, v1

    :goto_2
    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lˊᐧ/יـ;->ᴵˑ(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lʼﾞ/ᴵˊ;-><init>(ZZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v3

    :catch_0
    return-object v1
.end method
