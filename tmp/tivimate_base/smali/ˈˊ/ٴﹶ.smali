.class public final Lˈˊ/ٴﹶ;
.super Lﹳٴ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final ʼˎ:J

.field public static final ˆʾ:J

.field public static final ٴﹶ:J

.field public static final ᵎﹶ:Lsun/misc/Unsafe;

.field public static final ᵔᵢ:J

.field public static final ﾞʻ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-class v0, Lˈˊ/ﾞʻ;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, Lˈˊ/ˆʾ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v2, Lˈˊ/ˉʿ;

    const-string v3, "\u02bd\u02bd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lˈˊ/ٴﹶ;->ʼˎ:J

    const-string v3, "\u1d35\u02ca"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lˈˊ/ٴﹶ;->ᵔᵢ:J

    const-string v3, "\u02be\u02cb"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lˈˊ/ٴﹶ;->ˆʾ:J

    const-string v2, "\ufe73\u0674"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lˈˊ/ٴﹶ;->ٴﹶ:J

    const-string v2, "\u2071\u02ca"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lˈˊ/ٴﹶ;->ﾞʻ:J

    sput-object v1, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z
    .locals 6

    sget-object v0, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;

    sget-wide v2, Lˈˊ/ٴﹶ;->ʼˎ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lˈˊ/ᵎﹶ;->ﹳٴ(Lsun/misc/Unsafe;Lˈˊ/ˉʿ;JLˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z

    move-result p1

    return p1
.end method

.method public final ʽﹳ(Lˈˊ/ˉʿ;)Lˈˊ/ﾞʻ;
    .locals 3

    .prologue
    sget-object v0, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    :cond_0
    iget-object v1, p1, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lˈˊ/ٴﹶ;->ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final ˉٴ(Lˈˊ/ﾞʻ;Ljava/lang/Thread;)V
    .locals 3

    sget-object v0, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;

    sget-wide v1, Lˈˊ/ٴﹶ;->ٴﹶ:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final ˏי(Lˈˊ/ˉʿ;)Lˈˊ/ʽ;
    .locals 3

    .prologue
    sget-object v0, Lˈˊ/ʽ;->ˈ:Lˈˊ/ʽ;

    :cond_0
    iget-object v1, p1, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lˈˊ/ٴﹶ;->ﹳٴ(Lˈˊ/ˉʿ;Lˈˊ/ʽ;Lˈˊ/ʽ;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final ٴᵢ(Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)V
    .locals 3

    sget-object v0, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;

    sget-wide v1, Lˈˊ/ٴﹶ;->ﾞʻ:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ(Lˈˊ/ˉʿ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;

    sget-wide v2, Lˈˊ/ٴﹶ;->ˆʾ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lˈˊ/ʼˎ;->ﹳٴ(Lsun/misc/Unsafe;Lˈˊ/ˉʿ;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Lˈˊ/ˉʿ;Lˈˊ/ʽ;Lˈˊ/ʽ;)Z
    .locals 6

    sget-object v0, Lˈˊ/ٴﹶ;->ᵎﹶ:Lsun/misc/Unsafe;

    sget-wide v2, Lˈˊ/ٴﹶ;->ᵔᵢ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lˈˊ/ᵔᵢ;->ﹳٴ(Lsun/misc/Unsafe;Lˈˊ/ˉʿ;JLˈˊ/ʽ;Lˈˊ/ʽ;)Z

    move-result p1

    return p1
.end method
