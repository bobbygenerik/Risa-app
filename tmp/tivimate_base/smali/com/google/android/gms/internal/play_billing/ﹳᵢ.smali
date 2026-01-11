.class public abstract Lcom/google/android/gms/internal/play_billing/ﹳᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

.field public static final ˈ:Z

.field public static final ˑﹳ:Z

.field public static final ᵎﹶ:Z

.field public static final ⁱˊ:Ljava/lang/Class;

.field public static final ﹳٴ:Lsun/misc/Unsafe;

.field public static final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    const-class v1, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼˎ()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ:Lsun/misc/Unsafe;

    sget v2, Lcom/google/android/gms/internal/play_billing/ﹶᐧ;->ﹳٴ:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ⁱˊ:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˉˆ(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˉˆ(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v6, Lcom/google/android/gms/internal/play_billing/ˑˆ;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/play_billing/ˎˉ;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    new-instance v6, Lcom/google/android/gms/internal/play_billing/ˎʾ;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/play_billing/ˎˉ;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v6, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    const/4 v3, 0x2

    const-string v5, "logMissingMethod"

    const-string v7, "com.google.protobuf.UnsafeUtil"

    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    const-class v9, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;

    const-string v10, "getLong"

    const-class v11, Ljava/lang/reflect/Field;

    const-string v12, "objectFieldOffset"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Object;

    if-nez v6, :cond_3

    :goto_1
    move/from16 v16, v14

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v13, [Ljava/lang/Class;

    aput-object v11, v6, v14

    invoke-virtual {v0, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v15, v6, v14

    aput-object v2, v6, v13

    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ⁱˊ()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v16, v14

    move v14, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    move/from16 v16, v14

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v14, v7, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v14, v16

    :goto_2
    sput-boolean v14, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˈ:Z

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    if-nez v0, :cond_5

    :goto_3
    move/from16 v0, v16

    goto/16 :goto_4

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v13, [Ljava/lang/Class;

    aput-object v11, v6, v16

    invoke-virtual {v0, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "arrayBaseOffset"

    new-array v11, v13, [Ljava/lang/Class;

    aput-object v1, v11, v16

    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "arrayIndexScale"

    new-array v11, v13, [Ljava/lang/Class;

    aput-object v1, v11, v16

    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getInt"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v15, v6, v16

    aput-object v2, v6, v13

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putInt"

    const/4 v6, 0x3

    new-array v11, v6, [Ljava/lang/Class;

    aput-object v15, v11, v16

    aput-object v2, v11, v13

    aput-object v4, v11, v3

    invoke-virtual {v0, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v15, v1, v16

    aput-object v2, v1, v13

    invoke-virtual {v0, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v13

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getObject"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v13

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putObject"

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v15, v4, v16

    aput-object v2, v4, v13

    aput-object v15, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v13

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v7, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˑﹳ:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﾞᴵ:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʼᐧ(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ⁱˊ()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v13, v16

    :goto_5
    sput-boolean v13, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ᵎﹶ:Z

    return-void
.end method

.method public static ʼˎ()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˈـ;

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

.method public static ʼᐧ(Ljava/lang/Class;)I
    .locals 1

    .prologue
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ʽ(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static ˆʾ(JLjava/lang/Object;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static ˈ(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static bridge synthetic ˉʿ(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

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

.method public static ˉˆ(Ljava/lang/Class;)Z
    .locals 10

    .prologue
    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/play_billing/ﹶᐧ;->ﹳٴ:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ⁱˊ:Ljava/lang/Class;

    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v1

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v4, v8, v5

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v9, v6, [Ljava/lang/Class;

    aput-object p0, v9, v1

    aput-object v8, v9, v7

    aput-object v4, v9, v5

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object p0, v9, v1

    aput-object v4, v9, v7

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v4, v7, [Ljava/lang/Class;

    aput-object p0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/Class;

    aput-object p0, v9, v1

    aput-object v0, v9, v7

    aput-object v8, v9, v5

    aput-object v8, v9, v6

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object p0, v4, v1

    aput-object v0, v4, v7

    aput-object v8, v4, v5

    aput-object v8, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v1
.end method

.method public static ˑﹳ(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static ٴﹶ(Ljava/lang/Object;JJ)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static ᵎﹶ(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ﹳٴ:Lsun/misc/Unsafe;

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

.method public static bridge synthetic ᵔʾ(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

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

.method public static ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    sget v0, Lcom/google/android/gms/internal/play_billing/ﹶᐧ;->ﹳٴ:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public static ﹳٴ(Ljava/lang/Class;)V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static ﾞʻ(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static ﾞᴵ(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹳᵢ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˎˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎˉ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method
