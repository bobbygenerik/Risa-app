.class public abstract Landroidx/datastore/preferences/protobuf/ʻᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

.field public static final ˈ:Z

.field public static final ˑﹳ:Z

.field public static final ᵎﹶ:Z

.field public static final ⁱˊ:Ljava/lang/Class;

.field public static final ﹳٴ:Lsun/misc/Unsafe;

.field public static final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʼˎ()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﹳٴ:Lsun/misc/Unsafe;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʽ;->ﹳٴ:Ljava/lang/Class;

    sput-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ⁱˊ:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔᵢ(Ljava/lang/Class;)Z

    move-result v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔᵢ(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʽ;->ﹳٴ()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    new-instance v3, Landroidx/datastore/preferences/protobuf/ᐧᴵ;

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Landroidx/datastore/preferences/protobuf/ᐧᴵ;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    new-instance v3, Landroidx/datastore/preferences/protobuf/ᐧᴵ;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroidx/datastore/preferences/protobuf/ᐧᴵ;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroidx/datastore/preferences/protobuf/ˏᵢ;

    invoke-direct {v3, v0}, Landroidx/datastore/preferences/protobuf/ᴵʼ;-><init>(Lsun/misc/Unsafe;)V

    :cond_3
    :goto_0
    sput-object v3, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    const/4 v0, 0x0

    if-nez v3, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳᐧ()Z

    move-result v1

    :goto_1
    sput-boolean v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˈ:Z

    if-nez v3, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔﹳ()Z

    move-result v1

    :goto_2
    sput-boolean v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ:Z

    const-class v1, [B

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ:J

    const-class v1, [Z

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    const-class v1, [I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    const-class v1, [J

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    const-class v1, [F

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    const-class v1, [D

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ(Ljava/lang/Class;)I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ(Ljava/lang/Class;)V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵎﹶ()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʼˎ(Ljava/lang/reflect/Field;)J

    :cond_7
    :goto_3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵎﹶ:Z

    return-void
.end method

.method public static ʼˎ()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    :try_start_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/ᐧﾞ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ʽ(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ˆʾ([BJB)V
    .locals 2

    sget-wide v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﾞᴵ:J

    add-long/2addr v0, p1

    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ٴﹶ(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static ˈ(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ˉʿ(JLjava/lang/Object;I)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    return-void
.end method

.method public static ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ˑﹳ(Ljava/lang/Class;)I
    .locals 1

    .prologue
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ٴﹶ(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {v0, v1, p0, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    return-void
.end method

.method public static ᵎﹶ()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʽ;->ﹳٴ()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "effectiveDirectAddress"

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "address"

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method public static ᵔʾ(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static ᵔᵢ(Ljava/lang/Class;)Z
    .locals 10

    .prologue
    const-class v0, [B

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʽ;->ﹳٴ()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ⁱˊ:Ljava/lang/Class;

    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v4, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v9, v6, [Ljava/lang/Class;

    aput-object p0, v9, v2

    aput-object v8, v9, v7

    aput-object v4, v9, v5

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object p0, v9, v2

    aput-object v4, v9, v7

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object p0, v4, v2

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v4, v7, [Ljava/lang/Class;

    aput-object p0, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/Class;

    aput-object p0, v9, v2

    aput-object v0, v9, v7

    aput-object v8, v9, v5

    aput-object v8, v9, v6

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object p0, v4, v2

    aput-object v0, v4, v7

    aput-object v8, v4, v5

    aput-object v8, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method public static ⁱˊ(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ﹳٴ(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static ﾞʻ(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {v0, v1, p0, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    return-void
.end method

.method public static ﾞᴵ(Ljava/lang/Class;)V
    .locals 1

    .prologue
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ⁱˊ(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method
