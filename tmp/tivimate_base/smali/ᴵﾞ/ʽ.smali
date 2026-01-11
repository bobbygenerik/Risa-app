.class public abstract Lᴵﾞ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:[B

.field public static final ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lᴵﾞ/ʽ;->ﹳٴ:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lᴵﾞ/ʽ;->ⁱˊ:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method public static ʼˎ(Ljava/io/File;)Z
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ʽ(Ljava/io/File;)[B
    .locals 4

    .prologue
    const-string v0, "os.name"

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {}, Lᴵﾞ/ʽ;->ˆʾ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lᴵﾞ/ʽ;->ᵎﹶ(Ljava/nio/file/Path;)[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nux"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-array p0, v1, [B

    return-object p0

    :cond_3
    :goto_0
    invoke-static {p0}, Lᴵﾞ/ʽ;->ˑﹳ(Ljava/nio/file/Path;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v1, [B

    return-object p0
.end method

.method public static ˆʾ()Z
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static ˈ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    if-eqz p0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_5

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lـʽ/ﾞʻ;->ˑﹳ:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p1, Lـʽ/ﾞʻ;->ᵔʾ:I

    invoke-static {v3}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    invoke-static {v6, v4}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {v3, p1}, Lᴵﾞ/ʽ;->ˈ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input path is null, cannot read files in the directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ˉʿ(ZBI)B
    .locals 0

    .prologue
    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static ˑﹳ(Ljava/nio/file/Path;)[B
    .locals 11

    .prologue
    const/4 v0, 0x4

    new-array v1, v0, [B

    :try_start_0
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lـﹶ/ʾᵎ;->ˈ()Ljava/nio/file/LinkOption;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    const/4 v5, 0x6

    const/4 v7, 0x7

    const/4 v8, 0x3

    if-eqz v4, :cond_0

    aget-byte p0, v1, v8

    invoke-static {p0, v7}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result p0

    aput-byte p0, v1, v8

    invoke-static {p0, v5}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result p0

    aput-byte p0, v1, v8

    goto :goto_0

    :cond_0
    new-array v9, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v9}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    aget-byte v10, v1, v8

    invoke-static {v9, v10, v7}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result v9

    aput-byte v9, v1, v8

    new-array v9, v6, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    aget-byte v9, v1, v8

    invoke-static {p0, v9, v5}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v8

    :goto_0
    aget-byte p0, v1, v8

    const/4 v9, 0x5

    invoke-static {v4, p0, v9}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v8

    invoke-static {}, Lـﹶ/ʾᵎ;->ˉʿ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v4, v1, v8

    invoke-static {p0, v4, v6}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v8

    invoke-static {}, Lـﹶ/ʾᵎ;->ᵔʾ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x2

    aget-byte v10, v1, v4

    invoke-static {p0, v10, v7}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ˉˆ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v7, v1, v4

    invoke-static {p0, v7, v5}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ʼᐧ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v5, v1, v4

    invoke-static {p0, v5, v9}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ᵔﹳ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v5, v1, v4

    invoke-static {p0, v5, v0}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ﾞᴵ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v8}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ʼˎ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v4}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ٴﹶ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v3}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4

    invoke-static {}, Lـﹶ/ʾᵎ;->ﾞʻ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    aget-byte v0, v1, v4

    invoke-static {p0, v0, v6}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static ٴﹶ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ᵎﹶ(Ljava/nio/file/Path;)[B
    .locals 7

    .prologue
    const/4 v0, 0x4

    new-array v1, v0, [B

    :try_start_0
    invoke-static {}, Lـﹶ/ʾᵎ;->ˆʾ()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lـﹶ/ʾᵎ;->ˈ()Ljava/nio/file/LinkOption;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    invoke-static {p0}, Lـﹶ/ʾᵎ;->ˑﹳ(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v2

    invoke-static {v2, v6, v6}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result v2

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v4

    invoke-static {v4, v2, v3}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result v2

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result v2

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isDirectory()Z

    move-result v3

    invoke-static {v3, v2, v0}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result v0

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result p0

    const/4 v2, 0x5

    invoke-static {p0, v0, v2}, Lᴵﾞ/ʽ;->ˉʿ(ZBI)B

    move-result p0

    aput-byte p0, v1, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v1
.end method

.method public static ᵔʾ(Ljava/nio/file/Path;[B)V
    .locals 9

    .prologue
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lᴵﾞ/ʽ;->ˆʾ()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    aget-byte v0, p1, v3

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lـﹶ/ʾᵎ;->ˆʾ()Ljava/lang/Class;

    move-result-object v0

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lـﹶ/ʾᵎ;->ˈ()Ljava/nio/file/LinkOption;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p0, v0, v5}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    invoke-static {p0}, Lـﹶ/ʾᵎ;->ˑﹳ(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    :try_start_0
    aget-byte v0, p1, v3

    invoke-static {v0, v3}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    aget-byte v0, p1, v3

    invoke-static {v0, v4}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    aget-byte v0, p1, v3

    invoke-static {v0, v2}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v0

    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    aget-byte p1, p1, v3

    invoke-static {p1, v1}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result p1

    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "nux"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    aget-byte v0, p1, v2

    const/4 v5, 0x3

    if-nez v0, :cond_5

    aget-byte v0, p1, v5

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    aget-byte v6, p1, v5

    invoke-static {}, Lـﹶ/ʾᵎ;->ˉʿ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v7

    invoke-static {v6, v3, v0, v7}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ᵔʾ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v7

    const/4 v8, 0x7

    invoke-static {v6, v8, v0, v7}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ˉˆ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v6, v8, v0, v7}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v6, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ʼᐧ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v7

    invoke-static {v6, v1, v0, v7}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ᵔﹳ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v1, v7, v0, v6}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ﾞᴵ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v6

    invoke-static {v1, v5, v0, v6}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ʼˎ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v5

    invoke-static {v1, v2, v0, v5}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte v1, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ٴﹶ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v5

    invoke-static {v1, v4, v0, v5}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    aget-byte p1, p1, v2

    invoke-static {}, Lـﹶ/ʾᵎ;->ﾞʻ()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    invoke-static {p1, v3, v0, v1}, Lᴵﾞ/ʽ;->ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method

.method public static ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {p0}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file name is empty or null, cannot determine zip file name"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ⁱˊ(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v1, Lᴵﾞ/ⁱˊ;

    invoke-direct {v1, v0}, Lᴵﾞ/ⁱˊ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    new-array p0, v3, [Ljava/io/File;

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static ﹳٴ(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V
    .locals 0

    .prologue
    invoke-static {p0, p1}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static ﾞʻ(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static ﾞᴵ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string v0, "/"

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-static {v1}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lـﹶ/ʾᵎ;->ˈ()Ljava/nio/file/LinkOption;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-static {v1}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "fileName to add to zip is empty or null. fileName: \'"

    const-string v2, "\' DefaultFolderPath: \'null\' FileNameInZip: "

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "isSymlink: true "

    invoke-static {p1, p0}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "rootFolderNameInZip: \'"

    const-string v0, "\' "

    invoke-static {p1, p0, v0}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
