.class public abstract Lˆﾞ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/lang/reflect/Method;

.field public static final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/Trace;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_0

    :try_start_0
    const-string v2, "TRACE_TAG_APP"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    sput-wide v2, Lˆﾞ/ᵎﹶ;->ﹳٴ:J

    const-string v2, "isTagEnabled"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    const-string v2, "asyncTraceBegin"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v3, v8, v6

    aput-object v0, v8, v4

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "asyncTraceEnd"

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v3, v8, v6

    aput-object v0, v8, v4

    aput-object v5, v8, v9

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "traceCounter"

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v3, v7, v6

    aput-object v0, v7, v4

    aput-object v5, v7, v9

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TraceCompat"

    const-string v2, "Unable to initialize via reflection."

    nop

    :cond_0
    return-void
.end method

.method public static ﹳٴ()Z
    .locals 4

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lʼˉ/ʽ;->ʼˎ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    sget-wide v2, Lˆﾞ/ᵎﹶ;->ﹳٴ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "TraceCompat"

    const-string v2, "Unable to invoke isTagEnabled() via reflection."

    nop

    return v0
.end method
