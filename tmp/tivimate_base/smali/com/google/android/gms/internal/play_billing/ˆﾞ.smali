.class public final Lcom/google/android/gms/internal/play_billing/ˆﾞ;
.super Lʽٴ/ˈ;
.source "SourceFile"


# static fields
.field public static final ʽ:Lsun/misc/Unsafe;

.field public static final ˈ:J

.field public static final ˑﹳ:J

.field public static final ᵎﹶ:J

.field public static final ᵔᵢ:J

.field public static final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-class v0, Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/ˊˋ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;

    const-string v3, "\u02bd\u02bd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˑﹳ:J

    const-string v3, "\u1d35\u02ca"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˈ:J

    const-string v3, "\u02be\u02cb"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ﾞᴵ:J

    const-string v2, "\ufe73\u0674"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ᵎﹶ:J

    const-string v2, "\u2071\u02ca"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ᵔᵢ:J

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;
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
.method public final ʽʽ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)Lcom/google/android/gms/internal/play_billing/ᵔٴ;
    .locals 3

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final ˈٴ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ᵔᵢ:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final ˉٴ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˑﹳ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/ˋᵔ;->ﹳٴ(Lsun/misc/Unsafe;Lcom/google/android/gms/internal/play_billing/ˈʿ;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ˊʻ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˈ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/ˋᵔ;->ﹳٴ(Lsun/misc/Unsafe;Lcom/google/android/gms/internal/play_billing/ˈʿ;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ﾞᴵ:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/ˋᵔ;->ﹳٴ(Lsun/misc/Unsafe;Lcom/google/android/gms/internal/play_billing/ˈʿ;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ᴵˊ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)Lcom/google/android/gms/internal/play_billing/ᵎⁱ;
    .locals 3

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1
.end method

.method public final ᴵᵔ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;Ljava/lang/Thread;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ʽ:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/ˆﾞ;->ᵎﹶ:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
